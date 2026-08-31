Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/tendril-2b0f3aa4442bd054.tendril.f71e6fd617009e39-cgu.0?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [38 x i8] c"tendril: overflow in buffer arithmetic", align 1
@_RNvCsldpiDtalS19_7tendril5OFLOW = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"&\00\00\00\00\00\00\00" }>, align 8
@1 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@2 = private unnamed_addr constant [27 x i8] c"tendril/src/utf8_decode.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00U\00\00\00\15\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00t\00\00\00\22\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00l\00\00\00P\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00_\00\00\00-\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00\95\00\00\00%\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00J\00\00\00\0F\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00.\00\00\00&\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\003\00\00\00'\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf825try_to_complete_codepoint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef dereferenceable(5) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !alias.scope !4, !noalias !7, !noundef !9 ; 4 uses
  %i.d = zext i8 %i.c to i64                      ; 6 uses
  %i.e = icmp ugt i8 %i.c, 4
  br i1 %i.e, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef 4, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #6, !noalias !11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i64 4, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %..i.i = tail call noundef range(i64 0, 5) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %3, i64 range(i64 0, 5) %i.f) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %2, i64 range(i64 0, 5) %..i.i, i1 false), !alias.scope !12, !noalias !16
  %i.h = add nuw nsw i64 %..i.i, %i.d             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %1, i64 noundef %i.h), !noalias !7
  %i.i = load i64, ptr %i.a, align 8, !range !18, !noalias !11, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !11, !noundef !9 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.n = load i8, ptr %i.m, align 1, !noalias !11 ; 4 uses
  %.not17.i = icmp eq i64 %i.l, 0
  br i1 %.not17.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !19, !noalias !11, !noundef !9
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.l, %i.d
  br i1 %i.r, label %bb.j, label %bb.i, !prof !10

bb.g:                                             ; preds = %bb.e
  %i.s = icmp ult i8 %i.n, %i.c
  br i1 %i.s, label %bb.h, label %bb.l, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #6, !noalias !7
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.t = sub nuw i64 %i.l, %i.d
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #6, !noalias !7
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %i.h to i8
  store i8 %i.u, ptr %i.b, align 1, !alias.scope !4, !noalias !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  store i64 2, ptr %0, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.v = zext i8 %i.n to i64                      ; 2 uses
  store i8 0, ptr %i.b, align 1, !alias.scope !20
  %i.w = icmp ult i8 %i.n, 5
  br i1 %i.w, label %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #6, !noalias !20
  unreachable

_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit: ; preds = %bb.l
  %narrow.i = sub nuw nsw i8 %i.n, %i.c
  %i.x = zext nneg i8 %narrow.i to i64
  br label %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit6

bb.n:                                             ; preds = %bb.c, %bb.i
  %storemerge19.i.ph.in = phi i64 [ %i.l, %bb.i ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.t, %bb.i ], [ %..i.i, %bb.c ]
  %storemerge19.i.ph = trunc i64 %storemerge19.i.ph.in to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.y = and i64 %storemerge19.i.ph.in, 255       ; 2 uses
  store i8 0, ptr %i.b, align 1, !alias.scope !24
  %i.z = icmp ult i8 %storemerge19.i.ph, 5
  br i1 %i.z, label %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit6, label %bb.o, !prof !23

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #6, !noalias !24
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.k
  ret void

_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit6: ; preds = %bb.n, %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit
  %.sroa.0.0.i11 = phi i64 [ %i.x, %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit ], [ %.sroa.0.0.i.ph, %bb.n ] ; 4 uses
  %.pn18 = phi i64 [ %i.v, %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit ], [ %i.y, %bb.n ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit ], [ 0, %bb.n ]
  %i.aa = icmp ugt i64 %.sroa.0.0.i11, %3
  br i1 %i.aa, label %bb.r, label %bb.q, !prof !10

bb.q:                                             ; preds = %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit6
  %.sroa.3.0 = ptrtoint ptr %1 to i64
  %i.ab = sub nuw nsw i64 %3, %.sroa.0.0.i11
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.i11
  %4 = ptrtoint ptr %i.ac to i64
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pn18, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.p

bb.r:                                             ; preds = %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer.exit6
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i11, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #6
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsldpiDtalS19_7tendril11utf8_decode11decode_utf8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noundef !9
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !noundef !9 ; 5 uses
  %i.g = load i8, ptr %i.e, align 8, !range !19, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.i = load i8, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp ugt i64 %i.f, %2
  br i1 %.not.i, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #6, !noalias !27
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril.exit: ; preds = %bb.b
  %i.j = trunc nuw i8 %i.g to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.l = sub nuw nsw i64 %2, %i.f                 ; 6 uses
  %3 = ptrtoint ptr %1 to i64                     ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  br i1 %i.j, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.n = load i64, ptr %i.e, align 8, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.p, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  ret void

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril.exit
  %i.q = zext i8 %i.i to i64                      ; 3 uses
  %.not = icmp samesign ult i64 %i.l, %i.q
  br i1 %.not, label %bb.k, label %bb.j, !prof !31

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.r = icmp samesign ult i64 %i.l, 5
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !32
  br i1 %i.r, label %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf83new.exit, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6, !noalias !32
  unreachable

_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf83new.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i, ptr nonnull readonly align 1 %i.k, i64 range(i64 0, 5) %i.l, i1 false), !alias.scope !35, !noalias !39
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.01.0.copyload.i = load i32, ptr %.sroa.0.i, align 4, !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.s = trunc nuw nsw i64 %i.l to i40
  %.sroa.2.0.insert.shift.i = shl nuw nsw i40 %i.s, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.01.0.copyload.i to i40
  %.sroa.0.0.insert.insert.i = or disjoint i40 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i40 %.sroa.0.0.insert.insert.i, ptr %.sroa.65.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf83new.exit
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf820try_complete_offsets: argument 0"}
!6 = distinct !{!6, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf820try_complete_offsets"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf820try_complete_offsets: argument 1"}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!5, !8}
!12 = !{!13, !15, !5, !8}
!13 = distinct !{!13, !14, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril: argument 0"}
!14 = distinct !{!14, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril"}
!15 = distinct !{!15, !14, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril: argument 1"}
!16 = !{!17}
!17 = distinct !{!17, !14, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril: argument 2"}
!18 = !{i64 0, i64 2}
!19 = !{i8 0, i8 2}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer: argument 0"}
!22 = distinct !{!22, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer"}
!23 = !{!"branch_weights", i32 4000000, i32 4001}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer: argument 0"}
!26 = distinct !{!26, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf811take_buffer"}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril: argument 0"}
!29 = distinct !{!29, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril"}
!30 = distinct !{!30, !29, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsldpiDtalS19_7tendril: argument 1"}
!31 = !{!"branch_weights", i32 4001, i32 4000000}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf83new: argument 0"}
!34 = distinct !{!34, !"_RNvMNtCsldpiDtalS19_7tendril11utf8_decodeNtB2_14IncompleteUtf83new"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril: argument 0"}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !37, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsldpiDtalS19_7tendril: argument 2"}
end_hunk_0
