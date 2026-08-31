Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_lex-afbeb192679b0918.clap_lex.2d16597350196d3c-cgu.0?download=true
inline.NumInlined: 117
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_5Debug3fmtCs3RZUOUhPFQ6_8clap_lex }>, align 8
@1 = private unnamed_addr constant [20 x i8] c"clap_lex/src/ext.rs\00", align 1
@2 = private unnamed_addr constant [20 x i8] c"clap_lex/src/lib.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\13\00\00\00\00\00\00\00\E6\01\00\00)\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\13\00\00\00\00\00\00\00\E4\00\00\00#\00\00\00" }>, align 8
@5 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@7 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\13\00\00\00\00\00\00\00\16\01\00\00%\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\13\00\00\00\00\00\00\00\E4\00\00\00\1F\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\13\00\00\00\00\00\00\00\E3\00\00\00\1E\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\13\00\00\00\00\00\00\00\D8\00\00\00\09\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs3RZUOUhPFQ6_8clap_lex }>, align 8
@15 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@16 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@17 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@18 = private unnamed_addr constant [4 x i8] c"None", align 1
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs3RZUOUhPFQ6_8clap_lex }>, align 8
@20 = private unnamed_addr constant [4 x i8] c"Some", align 1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
define void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedReBM_ECs3RZUOUhPFQ6_8clap_lex(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #22
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !7, !alias.scope !4, !noundef !8 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !4
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i) #23
  %i.g = load i64, ptr %i.a, align 8, !range !9, !noalias !4, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !10, !noalias !4, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !4, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !4
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4peek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.a, align 8, !noundef !8
  %.val5 = load i64, ptr %1, align 8, !noundef !8 ; 2 uses
  %i.b = icmp ult i64 %.val5, %.val4
  br i1 %i.b, label %bb.b, label %_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs7peek_os.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !8
  br label %_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs7peek_os.exit

_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs7peek_os.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4seek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, i64 noundef range(i64 0, 3) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %default.unreachable7 [
    i64 0, label %bb.d
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call i64 @llvm.sadd.sat.i64(i64 %i.b, i64 %3)
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !noundef !8
  %i.f = tail call i64 @llvm.sadd.sat.i64(i64 %i.e, i64 %3)
  %..i5 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.f, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %..i5, %bb.c ], [ %..i, %bb.b ], [ %3, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !8 ; 2 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %..i6 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.h, i64 %.sroa.04.0)
  store i64 %..i6, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs6is_end(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs7peek_os.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8
  %.val2 = load i64, ptr %1, align 8, !noundef !8
  %i.b = icmp uge i64 %.val2, %.val1
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9from_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %.sroa.4.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %.sroa.09.0.copyload.i = load ptr, ptr %i.b, align 8, !alias.scope !16, !noalias !11 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16, !noalias !11, !nonnull !8, !noundef !8 ; 5 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !16, !noalias !11 ; 4 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.611.0.copyload.i = load ptr, ptr %.sroa.611.0..sroa_idx.i, align 8, !alias.scope !16, !noalias !11, !nonnull !8, !noundef !8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20
  %i.c = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.611.0.copyload.i
  br i1 %i.c, label %bb.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i, align 8, !noalias !27 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !20
  %1 = ptrtoint ptr %.sroa.611.0.copyload.i to i64 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub nuw i64 %1, %i.e                     ; 2 uses
  %i.g = udiv exact i64 %i.f, 24
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 3)
  %..i.i.i.i = add nuw nsw i64 %i.h, 1            ; 2 uses
  %or.cond.not.i.i.i.i.i = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %or.cond.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.i = mul nuw nsw i64 %..i.i.i.i, 24           ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !36
  %i.j = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.i, i64 noundef 8) #23, !noalias !36 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.i, %bb.c ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #24, !noalias !20
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i: ; preds = %bb.c
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !20
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.j, align 8, !noalias !20
  store i64 %..i.i.i.i, ptr %i.a, align 8, !noalias !20
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !20
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.l = icmp eq ptr %i.d, %.sroa.611.0.copyload.i
  br i1 %i.l, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i, %bb.h
  %i.m = phi ptr [ %i.ae, %bb.h ], [ %i.j, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %i.n = phi i64 [ %i.ag, %bb.h ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i = phi ptr [ %i.o, %bb.h ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i, align 8, !noalias !45 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !55
  %i.p = icmp samesign ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i64, ptr %i.a, align 8, !range !7, !alias.scope !56, !noalias !57, !noundef !8
  %i.r = icmp eq i64 %i.n, %i.q
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, label %bb.h

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i: ; preds = %bb.h, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i = phi i64 [ %i.ag, %bb.h ], [ %i.n, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pre17.i.i.i = ptrtoint ptr %i.o to i64
  %.pre18.i.i.i = sub nuw i64 %1, %.pre17.i.i.i
  %.pre20.i.i.i = udiv exact i64 %.pre18.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i
  %.sroa.6.0.copyload5.i = phi i64 [ %.sroa.6.0.copyload512.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.s = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !range !7, !alias.scope !58, !noalias !61, !noundef !8 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !58, !noalias !61, !nonnull !8, !noundef !8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !72
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.x = icmp eq i64 %i.u, %.pre-phi21.i.i.i
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i
  %i.y = icmp eq i64 %.sroa.510.0.copyload.i, 0
  br i1 %i.y, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  %i.z = mul nuw i64 %.sroa.510.0.copyload.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !61
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.o to i64
  %i.ab = sub nuw i64 %1, %i.aa
  %i.ac = udiv exact i64 %i.ab, 24
  %i.ad = add nuw nsw i64 %i.ac, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.n, i64 noundef range(i64 1, 0) %i.ad) #23
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !56, !noalias !57
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, %bb.e
  %i.ae = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.n ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !55
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !55
  %i.ag = add nuw nsw i64 %i.n, 1                 ; 3 uses
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !56, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.ah = icmp eq ptr %i.o, %.sroa.611.0.copyload.i
  br i1 %i.ah, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !73
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

bb.i:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.a
  %.val.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  %2 = ptrtoint ptr %.sroa.611.0.copyload.i to i64
  %i.ai = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.aj = sub nuw i64 %2, %i.ai
  %i.ak = udiv exact i64 %i.aj, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.al = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i = phi i64 [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !range !7, !alias.scope !74, !noalias !77, !noundef !8 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !74, !noalias !77, !nonnull !8, !noundef !8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !88
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aq = icmp eq i64 %i.an, %i.ak
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.ar = icmp eq i64 %.sroa.510.0.copyload.i, 0
  br i1 %i.ar, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  %i.as = mul nuw i64 %.sroa.510.0.copyload.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !77
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.6.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.6.0.copyload5.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload3.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !11, !noalias !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11, !noalias !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !11, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !8   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.a
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.c
  %i.i = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  store i64 %i.c, ptr %1, align 8
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg18is_negative_number(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !90, !noalias !93, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !90, !noalias !93, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d) #23, !noalias !95
  %i.e = load i64, ptr %i.a, align 8, !range !9, !noalias !95, !noundef !8
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !95, !nonnull !8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !95 ; 4 uses
  %.sink.i = select i1 %i.f, i64 %i.d, i64 %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95
  %.not.i.i = icmp eq i64 %i.j, 0
  %or.cond = select i1 %i.f, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i: ; preds = %bb.a
  %rhsc.i = load i8, ptr %i.h, align 1, !alias.scope !96
  %i.k = icmp eq i8 %rhsc.i, 45
  br i1 %i.k, label %bb.b, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i
  %i.l = add i64 %i.j, -1                         ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %i.j
  %i.n = icmp samesign eq i64 %i.l, 0
  br i1 %i.n, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !99, !noundef !8
  %i.q = add i8 %i.p, -48
  %or.cond16.peel.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond16.peel.i.i, label %bb.c, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.c:                                             ; preds = %.lr.ph.preheader.i.i
  %i.r = icmp samesign eq i64 %i.l, 1
  br i1 %i.r, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.sroa.03.029.i.i = phi i1 [ %.sroa.03.1.i.i, %bb.f ], [ false, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.6.028.i.i = phi i64 [ %.sroa.6.1.i.i, %bb.f ], [ undef, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.08.027.i.i = phi i64 [ %.sroa.08.1.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.0.01726.i.i = phi ptr [ %i.t, %bb.f ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.8.025.i.i = phi i64 [ %i.u, %bb.f ], [ 1, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.01726.i.i, i64 1 ; 2 uses
  %i.u = add nuw i64 %.sroa.8.025.i.i, 1
  %i.v = load i8, ptr %.sroa.0.01726.i.i, align 1, !alias.scope !99, !noundef !8 ; 2 uses
  %i.w = add i8 %i.v, -48
  %or.cond16.i.i = icmp ult i8 %i.w, 10
  br i1 %or.cond16.i.i, label %bb.f, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.x = trunc nuw i64 %.sroa.08.1.i.i to i1
  br i1 %i.x, label %bb.d, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = add i64 %.sink.i, -2
  %i.z = icmp ne i64 %.sroa.6.1.i.i, %i.y
  br label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.v, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread [
    i8 46, label %bb.g
    i8 101, label %bb.h
    i8 69, label %bb.i
  ]

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i
  %.sroa.08.1.i.i = phi i64 [ %.sroa.08.027.i.i, %.lr.ph.i.i ], [ 0, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %.sroa.6.1.i.i = phi i64 [ %.sroa.6.028.i.i, %.lr.ph.i.i ], [ %.sroa.6.028.i.i, %bb.g ], [ %.sroa.8.025.i.i, %bb.i ], [ %.sroa.8.025.i.i, %bb.h ] ; 2 uses
  %.sroa.03.1.i.i = phi i1 [ %.sroa.03.029.i.i, %.lr.ph.i.i ], [ true, %bb.g ], [ %.sroa.03.029.i.i, %bb.i ], [ %.sroa.03.029.i.i, %bb.h ]
  %i.aa = icmp eq ptr %i.t, %i.m
  br i1 %i.aa, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !102

bb.g:                                             ; preds = %bb.e
  %.not38.i.i = icmp eq i64 %.sroa.08.027.i.i, 1
  %or.cond.i.i = select i1 %.sroa.03.029.i.i, i1 true, i1 %.not38.i.i
  br i1 %or.cond.i.i, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %bb.f

bb.h:                                             ; preds = %bb.e
  %.not37.i.i = icmp eq i64 %.sroa.08.027.i.i, 1
  br i1 %.not37.i.i, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %bb.f

bb.i:                                             ; preds = %bb.e
  %.not.i5.i = icmp eq i64 %.sroa.08.027.i.i, 1
  br i1 %.not.i5.i, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %bb.f

_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i, %bb.b, %.lr.ph.preheader.i.i, %bb.c, %bb.d, %._crit_edge.i.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i.i ], [ false, %.lr.ph.preheader.i.i ], [ true, %bb.c ], [ %i.z, %bb.d ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i ], [ true, %bb.b ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  tail call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.c, 2
  br i1 %.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit: ; preds = %bb.a
  %i.d = load i16, ptr %i.a, align 1
  %i.e = icmp ne i16 11565, %i.d
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread

bb.b:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  %i.h = icmp eq i64 %i.c, 2
  br i1 %i.h, label %bb.c, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread: ; preds = %bb.a, %bb.c, %bb.b, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit ], [ %i.j, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %i.a, align 1
  %i.j = icmp ne i16 %i.i, 11565                  ; 2 uses
  %i.k = zext i1 %i.j to i32                      ; 0 uses
  br label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7to_long(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %.not.i.i = icmp samesign ult i64 %i.c, 2
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 5 uses
  %i.f = add nsw i64 %i.c, -2                     ; 8 uses
  %i.g = load i16, ptr %i.d, align 1
  %i.h = icmp ne i16 %i.g, 11565
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.h, label %.critedge.preheader.i.i.i

bb.d:                                             ; preds = %bb.a, %bb.b
  store i64 2, ptr %0, align 8
  br label %bb.k

.critedge.preheader.i.i.i:                        ; preds = %bb.c
  %i.l = add i64 %i.c, -3                         ; 4 uses
  %.not.i.i22 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i22, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.preheader.i.i.i, %.critedge.backedge.i.i.i
  %i.m = phi i64 [ %i.p, %.critedge.backedge.i.i.i ], [ 0, %.critedge.preheader.i.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %rhsc = load i8, ptr %i.n, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.o = icmp eq i8 %rhsc.fr, 61
  br i1 %i.o, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %.critedge.backedge.i.i.i

.critedge.backedge.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %i.l
  br i1 %exitcond.not.i.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i: ; preds = %.critedge.backedge.i.i.i, %.critedge.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %rhsc39 = load i8, ptr %i.q, align 1
  %rhsc39.fr = freeze i8 %rhsc39
  %i.r = icmp eq i8 %rhsc39.fr, 61
  br i1 %i.r, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %bb.j

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i
  %.sroa.4.1.i11.i = phi i64 [ %i.l, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ], [ %i.m, %.lr.ph.i.i.i ] ; 4 uses
  %i.s = add i64 %.sroa.4.1.i11.i, 1              ; 4 uses
  %.not.i23 = icmp ugt i64 %.sroa.4.1.i11.i, %i.f
  br i1 %.not.i23, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.4.1.i11.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !105
  unreachable

bb.f:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  %i.t = icmp ugt i64 %i.s, %i.f
  br i1 %i.t, label %bb.g, label %bb.i, !prof !89

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.f, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !105
  unreachable

bb.h:                                             ; preds = %bb.c
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.u = sub nuw i64 %i.f, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, %bb.i
  %.sroa.3.0 = phi i64 [ %i.u, %bb.i ], [ undef, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ]
  %.sroa.012.0 = phi ptr [ %i.v, %bb.i ], [ null, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ]
  %.sroa.68.0 = phi i64 [ %.sroa.4.1.i11.i, %bb.i ], [ %i.f, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %.sroa.68.0) #23
  %i.w = load i64, ptr %i.a, align 8, !range !9, !noundef !8 ; 2 uses
  %i.x = trunc nuw i64 %i.w to i1                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %.sroa.515.0 = select i1 %i.x, i64 %.sroa.68.0, i64 %i.ab
  %.sroa.314.0.a = select i1 %i.x, ptr %i.e, ptr %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.w, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.314.0.a, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.515.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.012.0, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %i.a, align 1
  %i.d = icmp ne i8 %rhsc, 45
  %i.e = icmp eq i64 %i.c, 1
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  %i.f = load i16, ptr %i.a, align 1
  %i.g = icmp ne i16 11565, %i.f                  ; 2 uses
  %i.h = zext i1 %i.g to i32                      ; 0 uses
  br label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ], [ false, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_short(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 5 uses
  %lhsc = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %lhsc, 45
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.e, -1                     ; 5 uses
  %.not.i.i3 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i3, label %bb.k, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit: ; preds = %bb.c
  %rhsc = load i8, ptr %i.g, align 1
  %i.j = icmp eq i8 %rhsc, 45
  br i1 %i.j, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.f:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 1, 0) %i.i) #23, !noalias !117
  %i.k = load i64, ptr %i.c, align 8, !range !9, !noalias !110, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.m, align 8, !noalias !110, !noundef !8 ; 4 uses
  %.not.i.i.i.i = icmp ugt i64 %i.n, %i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit.i.i, !prof !89

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !118
  unreachable

_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.n) #23, !noalias !117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.o = load i64, ptr %i.b, align 8, !range !9, !alias.scope !125, !noalias !110, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i, !prof !89

bb.i:                                             ; preds = %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !110
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !129
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i: ; preds = %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit.i.i
  %i.r = sub nuw nsw i64 %i.i, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !125, !noalias !110, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !125, !noalias !110, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  br label %_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new.exit

bb.j:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.m, align 8, !noalias !110, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !110, !noundef !8
  br label %_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new.exit

_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i, %bb.j
  %.sroa.11.0.i = phi i64 [ %i.r, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i ], [ undef, %bb.j ]
  %.sroa.8.0.i = phi ptr [ %i.s, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i ], [ null, %bb.j ]
  %.sroa.5.0.i = phi i64 [ %i.w, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i ], [ %i.z, %bb.j ]
  %.sroa.0.0.i = phi ptr [ %i.u, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex.exit.i.i ], [ %i.x, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.5.0.i
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !range !9, !noundef !8 ; 2 uses
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.sink1 = select i1 %i.f, ptr %i.b, ptr %i.h
  %.sink = select i1 %i.f, i64 %i.d, i64 %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.l, align 8
  store i64 %i.e, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, i64 } @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags10advance_by(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %exitcond.not37 = icmp eq i64 %1, 0
  br i1 %exitcond.not37, label %_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted28 = load i64, ptr %i.e, align 8
  %.promoted27 = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.018.038 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.e ] ; 3 uses
  %i.f = phi ptr [ %.promoted27, %.lr.ph ], [ %i.w, %bb.e ] ; 7 uses
  %i.g = phi i64 [ %.promoted28, %.lr.ph ], [ %i.z, %bb.e ]
  %i.h = add i64 %.sroa.018.038, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.i = ptrtoint ptr %i.f to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !142, !noalias !145
  %i.k = load i8, ptr %i.f, align 1, !noalias !148, !noundef !8 ; 3 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.e, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i.i: ; preds = %bb.c
  %i.m = icmp ne ptr %i.j, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !149, !noalias !145
  %i.o = icmp samesign ugt i8 %i.k, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i.i
  %i.p = icmp ne ptr %i.n, %i.d
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 3 uses
  store ptr %i.q, ptr %i.b, align 8, !alias.scope !152, !noalias !145
  %i.r = icmp samesign ugt i8 %i.k, -17
  br i1 %i.r, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i.i
  %i.s = icmp ne ptr %i.q, %i.d
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !alias.scope !155, !noalias !145
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not6.i.i = icmp eq ptr %.promoted, null
  br i1 %.not6.i.i, label %_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, label %.thread

.thread:                                          ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !158, !noalias !145
  br label %_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit

_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.e, %bb.a, %.thread, %bb.d
  %.sroa.018.0.lcssa = phi i64 [ %.sroa.018.038, %bb.d ], [ %.sroa.018.038, %.thread ], [ %1, %bb.a ], [ %1, %bb.e ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 1, %.thread ], [ 0, %bb.a ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.018.0.lcssa, 1
  ret { i64, i64 } %i.v

bb.e:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i.i
  %i.w = phi ptr [ %i.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i.i ], [ %i.t, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i.i ], [ %i.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  %i.z = add i64 %i.y, %i.g                       ; 2 uses
  store i64 %i.z, ptr %i.e, align 8, !alias.scope !159, !noalias !145
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags13next_value_os(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !163, !nonnull !8, !noundef !8 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !163, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1, !noalias !166, !noundef !8 ; 3 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = icmp ne ptr %i.h, %i.c
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i8 %i.f, -33
  br i1 %i.j, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.l = icmp ne ptr %i.k, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ugt i8 %i.f, -17
  br i1 %i.m, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.o = icmp ne ptr %i.n, %i.c
  tail call void @llvm.assume(i1 %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !160, !noundef !8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.s = load i64, ptr %i.r, align 8, !noundef !8 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i, label %bb.d, label %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit, !prof !89

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !169
  unreachable

_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit:  ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.v = sub nuw nsw i64 %i.s, %i.q
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !8 ; 2 uses
  %.not5 = icmp eq ptr %i.x, null
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g, %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit
  %.sroa.4.0 = phi i64 [ %i.v, %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit ], [ %i.ab, %bb.g ], [ undef, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.u, %_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at.exit ], [ %i.x, %bb.g ], [ null, %bb.e ]
  %i.y = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.z

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  store ptr null, ptr %i.w, align 8
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags18is_negative_number(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = icmp eq ptr %i.f, %i.d
  br i1 %i.j, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.k = load i8, ptr %i.d, align 1, !alias.scope !176, !noundef !8
  %i.l = add i8 %i.k, -48
  %or.cond16.peel.i = icmp ult i8 %i.l, 10
  br i1 %or.cond16.peel.i, label %bb.c, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.m = icmp samesign eq i64 %i.i, 1
  br i1 %i.m, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.sroa.03.029.i = phi i1 [ %.sroa.03.1.i, %bb.f ], [ false, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.6.028.i = phi i64 [ %.sroa.6.1.i, %bb.f ], [ undef, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.08.027.i = phi i64 [ %.sroa.08.1.i, %bb.f ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.0.01726.i = phi ptr [ %i.o, %bb.f ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.8.025.i = phi i64 [ %i.p, %bb.f ], [ 1, %.lr.ph.i.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01726.i, i64 1 ; 2 uses
  %i.p = add nuw i64 %.sroa.8.025.i, 1
  %i.q = load i8, ptr %.sroa.0.01726.i, align 1, !alias.scope !176, !noundef !8 ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond16.i = icmp ult i8 %i.r, 10
  br i1 %or.cond16.i, label %bb.f, label %bb.e

._crit_edge.i:                                    ; preds = %bb.f
  %i.s = trunc nuw i64 %.sroa.08.1.i to i1
  br i1 %i.s, label %bb.d, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.t = add i64 %i.i, -1
  %i.u = icmp ne i64 %.sroa.6.1.i, %i.t
  br label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit

bb.e:                                             ; preds = %.lr.ph.i
  switch i8 %i.q, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit [
    i8 46, label %bb.g
    i8 101, label %bb.h
    i8 69, label %bb.i
  ]

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i
  %.sroa.08.1.i = phi i64 [ %.sroa.08.027.i, %.lr.ph.i ], [ 0, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %.sroa.6.1.i = phi i64 [ %.sroa.6.028.i, %.lr.ph.i ], [ %.sroa.6.028.i, %bb.g ], [ %.sroa.8.025.i, %bb.i ], [ %.sroa.8.025.i, %bb.h ] ; 2 uses
  %.sroa.03.1.i = phi i1 [ %.sroa.03.029.i, %.lr.ph.i ], [ true, %bb.g ], [ %.sroa.03.029.i, %bb.i ], [ %.sroa.03.029.i, %bb.h ]
  %i.v = icmp eq ptr %i.o, %i.f
  br i1 %i.v, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !102

bb.g:                                             ; preds = %bb.e
  %.not38.i = icmp eq i64 %.sroa.08.027.i, 1
  %or.cond.i = select i1 %.sroa.03.029.i, i1 true, i1 %.not38.i
  br i1 %or.cond.i, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit, label %bb.f

bb.h:                                             ; preds = %bb.e
  %.not37.i = icmp eq i64 %.sroa.08.027.i, 1
  br i1 %.not37.i, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit, label %bb.f

bb.i:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %.sroa.08.027.i, 1
  br i1 %.not.i, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit, label %bb.f

_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit:       ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %._crit_edge.i, %bb.c, %.lr.ph.preheader.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i ], [ %i.u, %bb.d ], [ true, %bb.c ], [ false, %.lr.ph.preheader.i ], [ true, %bb.b ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !182, !nonnull !8, !noundef !8 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !182, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.f = icmp eq ptr %i.d, %i.c
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !alias.scope !188
  %i.h = load i8, ptr %i.d, align 1, !noalias !191, !noundef !8 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !192
  %i.n = load i8, ptr %i.g, align 1, !noalias !191, !noundef !8
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i
  %i.u = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 4 uses
  store ptr %i.v, ptr %i.a, align 8, !alias.scope !195
  %i.w = load i8, ptr %i.m, align 1, !noalias !191, !noundef !8
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i
  %i.ae = icmp ne ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !alias.scope !198
  %i.ag = load i8, ptr %i.v, align 1, !noalias !191, !noundef !8
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i
  %i.ao = phi ptr [ %i.v, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i ], [ %i.af, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i ], [ %i.m, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i ], [ %i.g, %bb.c ]
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ac, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i ], [ %i.an, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i ], [ %i.r, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !179, !noundef !8
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.as, %i.e
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.aq, align 8, !alias.scope !179
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4.0.i.ph.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !8 ; 2 uses
  %.not6 = icmp eq ptr %i.ax, null
  br i1 %.not6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g, %bb.d
  %.sink = phi i64 [ 1, %bb.d ], [ 1, %bb.g ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !noundef !8
  store ptr null, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ba, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %.sroa.45.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3RZUOUhPFQ6_8clap_lex(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = mul i64 %1, 24                           ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 24                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.g = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %4
  br i1 %i.a, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread12, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.a
  %i.b = sub nuw i64 %2, %4                       ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.preheader.i.i, %.critedge.backedge.i.i
  %i.c = phi i64 [ %i.f, %.critedge.backedge.i.i ], [ 0, %.critedge.preheader.i.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.d, i64 range(i64 0, -9223372036854775808) %4), !alias.scope !201, !noalias !208
  %bcmp.i.i.i.fr.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i
  %i.e = icmp eq i32 %bcmp.i.i.i.fr.i.i.i, 0
  br i1 %i.e, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread, label %.critedge.backedge.i.i

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit, label %.lr.ph.i.i

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit: ; preds = %.critedge.backedge.i.i, %.critedge.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %bcmp.i.i.i.i12.i.i = tail call i32 @bcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.g, i64 range(i64 0, -9223372036854775808) %4), !alias.scope !216, !noalias !220
  %bcmp.i.i.i.fr.i13.i.i = freeze i32 %bcmp.i.i.i.i12.i.i
  %i.h = icmp eq i32 %bcmp.i.i.i.fr.i13.i.i, 0
  br i1 %i.h, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread12

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread: ; preds = %.lr.ph.i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit
  %.sroa.4.1.i11 = phi i64 [ %i.b, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit ], [ %i.c, %.lr.ph.i.i ] ; 4 uses
  %i.i = add i64 %.sroa.4.1.i11, %4               ; 4 uses
  %.not = icmp ugt i64 %.sroa.4.1.i11, %2
  br i1 %.not, label %bb.c, label %bb.d, !prof !104

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread12: ; preds = %bb.a, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit
  store ptr null, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread12
  ret void

bb.c:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.4.1.i11, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
  unreachable

bb.d:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread
  %i.j = icmp ugt i64 %i.i, %2
  br i1 %i.j, label %bb.f, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.k = sub nuw i64 %2, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store ptr %1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.1.i11, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %.not.i = icmp samesign ult i64 %1, %3
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !225
  %i.a = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.a, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %.not.i = icmp samesign ugt i64 %3, %1
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh12strip_prefixBu_ECs3RZUOUhPFQ6_8clap_lex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.b = sub nuw nsw i64 %1, %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !229
  %i.c = icmp eq i32 %bcmp.i.i, 0                 ; 2 uses
  %spec.select.i = select i1 %i.c, i64 %i.b, i64 undef
  %spec.select3.i = select i1 %i.c, ptr %i.a, ptr null
  br label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh12strip_prefixBu_ECs3RZUOUhPFQ6_8clap_lex.exit

_RINvMNtCsj6eKBz9Db1c_4core5sliceSh12strip_prefixBu_ECs3RZUOUhPFQ6_8clap_lex.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ undef, %bb.a ], [ %spec.select.i, %bb.b ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %spec.select3.i, %bb.b ] ; 2 uses
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %.sroa.3.0.i
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define { i64, i64 } @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %3
  br i1 %i.a, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_.exit, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.a
  %i.b = sub nuw i64 %1, %3                       ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.preheader.i, %.critedge.backedge.i
  %i.c = phi i64 [ %i.f, %.critedge.backedge.i ], [ 0, %.critedge.preheader.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.d, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !233, !noalias !237
  %bcmp.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.e = icmp eq i32 %bcmp.i.i.i.fr.i.i, 0
  br i1 %i.e, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_.exit, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %.lr.ph.i
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i, label %.lr.ph.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i: ; preds = %.critedge.backedge.i, %.critedge.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %bcmp.i.i.i.i12.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.g, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !245, !noalias !249
  %bcmp.i.i.i.fr.i13.i = freeze i32 %bcmp.i.i.i.i12.i
  %i.h = icmp eq i32 %bcmp.i.i.i.fr.i13.i, 0
  %i.i = zext i1 %i.h to i64
  br label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_.exit

_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_.exit: ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.b, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i ], [ %i.c, %.lr.ph.i ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %i.i, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i ], [ 1, %.lr.ph.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %i.b, align 8
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.e, align 8
  store ptr %3, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.f, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedReBM_ECs3RZUOUhPFQ6_8clap_lex(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @11, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt7try_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %3
  br i1 %i.a, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.a
  %i.b = sub nuw i64 %1, %3                       ; 2 uses
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.preheader.i.i, %.critedge.backedge.i.i
  %i.c = phi i64 [ %i.f, %.critedge.backedge.i.i ], [ 0, %.critedge.preheader.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.d, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !254, !noalias !261
  %bcmp.i.i.i.fr.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i
  %i.e = icmp eq i32 %bcmp.i.i.i.fr.i.i.i, 0
  br i1 %i.e, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit, label %.critedge.backedge.i.i

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i.i, label %.lr.ph.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i.i: ; preds = %.critedge.backedge.i.i, %.critedge.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %bcmp.i.i.i.i12.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.g, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !269, !noalias !273
  %bcmp.i.i.i.fr.i13.i.i = freeze i32 %bcmp.i.i.i.i12.i.i
  %i.h = icmp eq i32 %bcmp.i.i.i.fr.i13.i.i, 0
  br label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit: ; preds = %.lr.ph.i.i, %bb.a, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i.i
  %.sroa.0.1.i = phi i1 [ false, %bb.a ], [ %i.h, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.c = load i8, ptr %i.b, align 1, !range !281, !alias.scope !278, !noalias !282, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  store ptr %i.e, ptr %i.a, align 8, !noalias !284
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs3RZUOUhPFQ6_8clap_lex.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4) #23, !noalias !278
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs3RZUOUhPFQ6_8clap_lex.exit

_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs3RZUOUhPFQ6_8clap_lex.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_5Debug3fmtCs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !285, !noundef !8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !8
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !286, !noalias !289, !noundef !8 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !299, !noalias !291, !nonnull !8, !noundef !8 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !299, !noalias !291, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.f = icmp eq ptr %i.d, %i.c
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !alias.scope !305, !noalias !291
  %i.h = load i8, ptr %i.d, align 1, !noalias !308, !noundef !8 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !309, !noalias !291
  %i.n = load i8, ptr %i.g, align 1, !noalias !308, !noundef !8
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i
  %i.u = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 4 uses
  store ptr %i.v, ptr %i.a, align 8, !alias.scope !312, !noalias !291
  %i.w = load i8, ptr %i.m, align 1, !noalias !308, !noundef !8
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i, label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i
  %i.ae = icmp ne ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !alias.scope !315, !noalias !291
  %i.ag = load i8, ptr %i.v, align 1, !noalias !308, !noundef !8
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i
  %i.ao = phi ptr [ %i.v, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i ], [ %i.g, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ac, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit14.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit16.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !318, !noalias !291, !noundef !8
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.as, %i.e
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.aq, align 8, !alias.scope !318, !noalias !291
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.av, align 8, !alias.scope !291, !noalias !294
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4.0.i.ph.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !291, !noalias !294
  br label %_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag.exit

bb.e:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !294, !noalias !291, !noundef !8 ; 2 uses
  %.not6.i = icmp eq ptr %i.ax, null
  br i1 %.not6.i, label %_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !294, !noalias !291, !noundef !8
  store ptr null, ptr %i.aw, align 8, !alias.scope !294, !noalias !291
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ba, align 8, !alias.scope !291, !noalias !294
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !291, !noalias !294
  br label %_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag.exit

_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sink.i = phi i64 [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !291, !noalias !294
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit.thread, label %.critedge.preheader.i.i.i

.critedge.preheader.i.i.i:                        ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.g                   ; 4 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.preheader.i.i.i, %.critedge.backedge.i.i.i
  %i.j = phi i64 [ %i.m, %.critedge.backedge.i.i.i ], [ 0, %.critedge.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.e, ptr nonnull readonly %i.k, i64 range(i64 0, -9223372036854775808) %i.g), !alias.scope !324, !noalias !331
  %bcmp.i.i.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.i.i.fr.i.i.i.i, 0
  br i1 %i.l, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %.critedge.backedge.i.i.i

.critedge.backedge.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i: ; preds = %.critedge.backedge.i.i.i, %.critedge.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %bcmp.i.i.i.i12.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.e, ptr nonnull readonly %i.n, i64 range(i64 0, -9223372036854775808) %i.g), !alias.scope !340, !noalias !344
  %bcmp.i.i.i.fr.i13.i.i.i = freeze i32 %bcmp.i.i.i.i12.i.i.i
  %i.o = icmp eq i32 %bcmp.i.i.i.fr.i13.i.i.i, 0
  br i1 %i.o, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit.thread

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i
  %.sroa.4.1.i11.i = phi i64 [ %i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ], [ %i.j, %.lr.ph.i.i.i ] ; 4 uses
  %i.p = add i64 %.sroa.4.1.i11.i, %i.g           ; 4 uses
  %.not.i = icmp ugt i64 %.sroa.4.1.i11.i, %i.d
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !104

bb.c:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.4.1.i11.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !349
  unreachable

bb.d:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  %i.q = icmp ugt i64 %i.p, %i.d
  br i1 %i.q, label %bb.e, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit, !prof !89

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !349
  unreachable

bb.f:                                             ; preds = %bb.a, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit.thread
  %.sroa.4.0 = phi i64 [ %.sroa.4.1.i11.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit ], [ %i.d, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit.thread ], [ undef, %bb.a ]
  %i.r = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.s

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  %i.u = sub nuw i64 %i.d, %i.p
  store ptr %i.t, ptr %i.a, align 8
  store i64 %i.u, ptr %i.c, align 8
  br label %bb.f

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit.thread: ; preds = %bb.b, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i
  store ptr null, ptr %i.a, align 8
  br label %bb.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_0
