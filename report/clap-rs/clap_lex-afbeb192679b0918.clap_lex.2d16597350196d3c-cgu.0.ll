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
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !20
  %i.e = ptrtoint ptr %.sroa.611.0.copyload.i to i64 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = udiv exact i64 %i.g, 24
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 3)
  %..i.i.i.i = add nuw nsw i64 %i.i, 1            ; 2 uses
  %or.cond.not.i.i.i.i.i = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %or.cond.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %..i.i.i.i, 24           ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !36
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.j, i64 noundef 8) #23, !noalias !36 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ undef, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #24, !noalias !20
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i: ; preds = %bb.c
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.k, align 8, !noalias !20
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !20
  store i64 %..i.i.i.i, ptr %i.a, align 8, !noalias !20
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !20
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.m = icmp eq ptr %i.d, %.sroa.611.0.copyload.i
  br i1 %i.m, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i, %bb.h
  %i.n = phi ptr [ %i.af, %bb.h ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %i.o = phi i64 [ %i.ah, %bb.h ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i = phi ptr [ %i.p, %bb.h ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i, align 8, !noalias !45 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !55
  %i.q = icmp samesign ult i64 %i.o, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i64, ptr %i.a, align 8, !range !7, !alias.scope !56, !noalias !57, !noundef !8
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, label %bb.h

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i: ; preds = %bb.h, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i = phi i64 [ %i.ah, %bb.h ], [ %i.o, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pre17.i.i.i = ptrtoint ptr %i.p to i64
  %.pre18.i.i.i = sub nuw i64 %i.e, %.pre17.i.i.i
  %.pre20.i.i.i = udiv exact i64 %.pre18.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i
  %.sroa.6.0.copyload5.i = phi i64 [ %.sroa.6.0.copyload512.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.t = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !range !7, !alias.scope !58, !noalias !61, !noundef !8 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !58, !noalias !61, !nonnull !8, !noundef !8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !72
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.v, %.pre-phi21.i.i.i
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i
  %i.z = icmp eq i64 %.sroa.510.0.copyload.i, 0
  br i1 %i.z, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  %i.aa = mul nuw i64 %.sroa.510.0.copyload.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !61
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = sub nuw i64 %i.e, %i.ab
  %i.ad = udiv exact i64 %i.ac, 24
  %i.ae = add nuw nsw i64 %i.ad, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.ae) #23
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !56, !noalias !57
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, %bb.e
  %i.af = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.o ; 2 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !55
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !55
  %i.ah = add nuw nsw i64 %i.o, 1                 ; 3 uses
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !56, !noalias !57
  %i.ai = icmp eq ptr %i.p, %.sroa.611.0.copyload.i
  br i1 %i.ai, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !73
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

bb.i:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.a
  %.val.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  %i.aj = ptrtoint ptr %.sroa.611.0.copyload.i to i64
  %i.ak = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.an = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !range !7, !alias.scope !74, !noalias !77, !noundef !8 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !74, !noalias !77, !nonnull !8, !noundef !8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !88
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.as = icmp eq i64 %i.ap, %i.am
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.at = icmp eq i64 %.sroa.510.0.copyload.i, 0
  br i1 %i.at, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  %i.au = mul nuw i64 %.sroa.510.0.copyload.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !77
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.6.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.6.0.copyload5.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload3.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
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
end_hunk_0
