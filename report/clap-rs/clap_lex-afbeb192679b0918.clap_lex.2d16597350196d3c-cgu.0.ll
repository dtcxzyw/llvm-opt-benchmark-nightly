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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !14, !noundef !6 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !14
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i) #23
  %i.g = load i64, ptr %i.a, align 8, !range !7, !noalias !14, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !15, !noalias !14, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !14, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !14
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4peek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.a, align 8, !noundef !6
  %.val5 = load i64, ptr %1, align 8, !noundef !6 ; 2 uses
  %i.b = icmp ult i64 %.val5, %.val4
  br i1 %i.b, label %bb.b, label %_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs7peek_os.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call i64 @llvm.sadd.sat.i64(i64 %i.b, i64 %3)
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !noundef !6
  %i.f = tail call i64 @llvm.sadd.sat.i64(i64 %i.e, i64 %3)
  %..i5 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.f, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %..i5, %bb.c ], [ %..i, %bb.b ], [ %3, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
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
  %.val1 = load i64, ptr %i.a, align 8, !noundef !6
  %.val2 = load i64, ptr %1, align 8, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %.sroa.09.0.copyload.i = load ptr, ptr %i.b, align 8, !alias.scope !76, !noalias !74 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !76, !noalias !74, !nonnull !6, !noundef !6 ; 5 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !76, !noalias !74 ; 4 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.611.0.copyload.i = load ptr, ptr %.sroa.611.0..sroa_idx.i, align 8, !alias.scope !76, !noalias !74, !nonnull !6, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  %i.c = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.611.0.copyload.i
  br i1 %i.c, label %bb.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i, align 8, !noalias !78 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !77
  %i.e = ptrtoint ptr %.sroa.611.0.copyload.i to i64 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = udiv exact i64 %i.g, 24
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 3)
  %..i.i.i.i = add nuw nsw i64 %i.i, 1            ; 2 uses
  %or.cond.not.i.i.i.i.i = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %or.cond.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %..i.i.i.i, 24           ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !79
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.j, i64 noundef 8) #23, !noalias !79 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #24, !noalias !77
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i: ; preds = %bb.c
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !77
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.k, align 8, !noalias !77
  store i64 %..i.i.i.i, ptr %i.a, align 8, !noalias !77
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !77
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.m = icmp eq ptr %i.d, %.sroa.611.0.copyload.i
  br i1 %i.m, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i, %bb.h
  %i.n = phi ptr [ %i.af, %bb.h ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %i.o = phi i64 [ %i.ah, %bb.h ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i = phi ptr [ %i.p, %bb.h ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i, align 8, !noalias !82 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !83
  %i.q = icmp samesign ult i64 %i.o, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i64, ptr %i.a, align 8, !range !5, !alias.scope !84, !noalias !85, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.t = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !range !5, !alias.scope !86, !noalias !87, !noundef !6 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !86, !noalias !87, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !88
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
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !87
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = sub nuw i64 %i.e, %i.ab
  %i.ad = udiv exact i64 %i.ac, 24
  %i.ae = add nuw nsw i64 %i.ad, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.ae) #23
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !84, !noalias !85
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, %bb.e
  %i.af = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.o ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !83
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !83
  %i.ah = add nuw nsw i64 %i.o, 1                 ; 3 uses
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !84, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.ai = icmp eq ptr %i.p, %.sroa.611.0.copyload.i
  br i1 %i.ai, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !89
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

bb.i:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.a
  %.val.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  %i.aj = ptrtoint ptr %.sroa.611.0.copyload.i to i64
  %i.ak = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.an = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !range !5, !alias.scope !90, !noalias !91, !noundef !6 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !90, !noalias !91, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !92
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
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !91
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.6.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.6.0.copyload5.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload3.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !74, !noalias !75
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !74, !noalias !75
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !74, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !6   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
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
end_hunk_0
begin_hunk_1_@_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags13next_value_os:bb.a

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags18is_negative_number(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = icmp eq ptr %i.f, %i.d
  br i1 %i.j, label %_RNvCs3RZUOUhPFQ6_8clap_lex9is_number.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.k = load i8, ptr %i.d, align 1, !alias.scope !178, !noundef !6
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
  %i.q = load i8, ptr %.sroa.0.01726.i, align 1, !alias.scope !178, !noundef !6 ; 2 uses
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
  br i1 %i.v, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !194, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !194, !nonnull !6, !noundef !6 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.f = icmp eq ptr %i.d, %i.c
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !alias.scope !196
  %i.h = load i8, ptr %i.d, align 1, !noalias !197, !noundef !6 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex.exit12.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !198
  %i.n = load i8, ptr %i.g, align 1, !noalias !197, !noundef !6
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
  store ptr %i.v, ptr %i.a, align 8, !alias.scope !199
  %i.w = load i8, ptr %i.m, align 1, !noalias !197, !noundef !6
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
  store ptr %i.af, ptr %i.a, align 8, !alias.scope !200
  %i.ag = load i8, ptr %i.v, align 1, !noalias !197, !noundef !6
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
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !193, !noundef !6
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.as, %i.e
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.aq, align 8, !alias.scope !193
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4.0.i.ph.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !6 ; 2 uses
  %.not6 = icmp eq ptr %i.ax, null
  br i1 %.not6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g, %bb.d
  %.sink = phi i64 [ 1, %bb.d ], [ 1, %bb.g ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !noundef !6
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
  %i.a = mul nuw nsw i64 %1, 24                   ; 4 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
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
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.d, i64 range(i64 0, -9223372036854775808) %4), !alias.scope !221, !noalias !222
  %bcmp.i.i.i.fr.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i
  %i.e = icmp eq i32 %bcmp.i.i.i.fr.i.i.i, 0
  br i1 %i.e, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread, label %.critedge.backedge.i.i

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit, label %.lr.ph.i.i

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit: ; preds = %.critedge.backedge.i.i, %.critedge.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %bcmp.i.i.i.i12.i.i = tail call i32 @bcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.g, i64 range(i64 0, -9223372036854775808) %4), !alias.scope !223, !noalias !224
  %bcmp.i.i.i.fr.i13.i.i = freeze i32 %bcmp.i.i.i.i12.i.i
  %i.h = icmp eq i32 %bcmp.i.i.i.fr.i13.i.i, 0
  br i1 %i.h, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread12

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread: ; preds = %.lr.ph.i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit
  %.sroa.4.1.i11 = phi i64 [ %i.b, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit ], [ %i.c, %.lr.ph.i.i ] ; 4 uses
  %i.i = add i64 %.sroa.4.1.i11, %4               ; 4 uses
  %.not = icmp ugt i64 %.sroa.4.1.i11, %2
  br i1 %.not, label %bb.c, label %bb.d, !prof !11

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
  br i1 %i.j, label %bb.f, label %bb.e, !prof !9

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
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !228
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
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !232
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
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.d, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !250, !noalias !251
  %bcmp.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.e = icmp eq i32 %bcmp.i.i.i.fr.i.i, 0
  br i1 %i.e, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_.exit, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %.lr.ph.i
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i, label %.lr.ph.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB1i_8OsStrExt4find0E0B1k_.exit15.i: ; preds = %.critedge.backedge.i, %.critedge.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %bcmp.i.i.i.i12.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.g, i64 range(i64 0, -9223372036854775808) %3), !alias.scope !252, !noalias !253
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
end_hunk_1
begin_hunk_2_@_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
.critedge.preheader.i.i.i:                        ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.g                   ; 4 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.preheader.i.i.i, %.critedge.backedge.i.i.i
  %i.j = phi i64 [ %i.m, %.critedge.backedge.i.i.i ], [ 0, %.critedge.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.e, ptr nonnull readonly %i.k, i64 range(i64 0, -9223372036854775808) %i.g), !alias.scope !345, !noalias !346
  %bcmp.i.i.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.i.i.fr.i.i.i.i, 0
  br i1 %i.l, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %.critedge.backedge.i.i.i

.critedge.backedge.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i: ; preds = %.critedge.backedge.i.i.i, %.critedge.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %bcmp.i.i.i.i12.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.e, ptr nonnull readonly %i.n, i64 range(i64 0, -9223372036854775808) %i.g), !alias.scope !347, !noalias !348
  %bcmp.i.i.i.fr.i13.i.i.i = freeze i32 %bcmp.i.i.i.i12.i.i.i
  %i.o = icmp eq i32 %bcmp.i.i.i.fr.i13.i.i.i, 0
  br i1 %i.o, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit.thread

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i
  %.sroa.4.1.i11.i = phi i64 [ %i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ], [ %i.j, %.lr.ph.i.i.i ] ; 4 uses
  %i.p = add i64 %.sroa.4.1.i11.i, %i.g           ; 4 uses
  %.not.i = icmp ugt i64 %.sroa.4.1.i11.i, %i.d
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.4.1.i11.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !349
  unreachable

bb.d:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  %i.q = icmp ugt i64 %i.p, %i.d
  br i1 %i.q, label %bb.e, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once.exit, !prof !9

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
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noinline noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", i32 2002, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{!"branch_weights", i32 4001, i32 4000000}
!12 = distinct !{!12, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs3RZUOUhPFQ6_8clap_lex"}
!13 = distinct !{!13, !12, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!14 = !{!13}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = distinct !{!16, !"_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_"}
!17 = distinct !{!17, !16, !"_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_: argument 0"}
!18 = distinct !{!18, !16, !"_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_: argument 1"}
!19 = distinct !{!19, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtB2_12IntoIterator9into_iterCs3RZUOUhPFQ6_8clap_lex"}
!20 = distinct !{!20, !19, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtB2_12IntoIterator9into_iterCs3RZUOUhPFQ6_8clap_lex: argument 1"}
!21 = distinct !{!21, !19, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtB2_12IntoIterator9into_iterCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!22 = distinct !{!22, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterB3e_"}
!23 = distinct !{!23, !22, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterB3e_: argument 1"}
!24 = distinct !{!24, !22, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterB3e_: argument 0"}
!25 = distinct !{!25, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB3s_7RawArgsINtNtB2n_7convert4FromB32_E4from0EE9from_iterB3s_"}
!26 = distinct !{!26, !25, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB3s_7RawArgsINtNtB2n_7convert4FromB32_E4from0EE9from_iterB3s_: argument 1"}
!27 = distinct !{!27, !25, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB3s_7RawArgsINtNtB2n_7convert4FromB32_E4from0EE9from_iterB3s_: argument 0"}
!28 = distinct !{!28, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1A_7RawArgsINtNtBb_7convert4FromBW_E4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_"}
!29 = distinct !{!29, !28, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1A_7RawArgsINtNtBb_7convert4FromBW_E4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 1"}
!30 = distinct !{!30, !28, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1A_7RawArgsINtNtBb_7convert4FromBW_E4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 0"}
!31 = distinct !{!31, !"_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next"}
!32 = distinct !{!32, !31, !"_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next: argument 1"}
!33 = distinct !{!33, !"_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!34 = distinct !{!34, !33, !"_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 1"}
!35 = distinct !{!35, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3RZUOUhPFQ6_8clap_lex"}
!36 = distinct !{!36, !35, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!37 = distinct !{!37, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_"}
!38 = distinct !{!38, !37, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_: argument 0"}
!39 = distinct !{!39, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EEB2U_"}
!40 = distinct !{!40, !39, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EEB2U_: argument 0"}
!41 = distinct !{!41, !37, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_: argument 1"}
!42 = distinct !{!42, !39, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EEB2U_: argument 1"}
!43 = distinct !{!43, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1A_7RawArgsINtNtBb_7convert4FromBW_E4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_"}
!44 = distinct !{!44, !43, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1A_7RawArgsINtNtBb_7convert4FromBW_E4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 1"}
!45 = distinct !{!45, !43, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1A_7RawArgsINtNtBb_7convert4FromBW_E4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 0"}
!46 = distinct !{!46, !"_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next"}
!47 = distinct !{!47, !46, !"_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next: argument 1"}
!48 = distinct !{!48, !"_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!49 = distinct !{!49, !48, !"_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 1"}
!50 = distinct !{!50, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex"}
!51 = distinct !{!51, !50, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_"}
!53 = distinct !{!53, !52, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_: argument 0"}
!54 = distinct !{!54, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs3RZUOUhPFQ6_8clap_lex"}
!55 = distinct !{!55, !54, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!56 = distinct !{!56, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs3RZUOUhPFQ6_8clap_lex"}
!57 = distinct !{!57, !56, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs3RZUOUhPFQ6_8clap_lex"}
!59 = distinct !{!59, !58, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!60 = distinct !{!60, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3RZUOUhPFQ6_8clap_lex"}
!61 = distinct !{!61, !60, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!62 = distinct !{!62, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex"}
!63 = distinct !{!63, !62, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!64 = distinct !{!64, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_"}
!65 = distinct !{!65, !64, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_: argument 0"}
!66 = distinct !{!66, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs3RZUOUhPFQ6_8clap_lex"}
!67 = distinct !{!67, !66, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!68 = distinct !{!68, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs3RZUOUhPFQ6_8clap_lex"}
!69 = distinct !{!69, !68, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!70 = distinct !{!70, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs3RZUOUhPFQ6_8clap_lex"}
!71 = distinct !{!71, !70, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!72 = distinct !{!72, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3RZUOUhPFQ6_8clap_lex"}
!73 = distinct !{!73, !72, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!74 = !{!17}
!75 = !{!18}
!76 = !{!21, !20, !18}
!77 = !{!27, !26, !24, !23, !17, !18}
!78 = !{!34, !32, !30, !29, !27, !26, !24, !23, !17, !18}
!79 = !{!36, !27, !26, !24, !23, !17, !18}
!80 = !{!38}
!81 = !{!40}
!82 = !{!49, !47, !45, !44, !40, !42, !38, !41, !27, !26, !24, !23, !17, !18}
!83 = !{!40, !42, !38, !41, !27, !26, !24, !23, !17, !18}
!84 = !{!40, !38}
!85 = !{!42, !41, !27, !26, !24, !23, !17, !18}
!86 = !{!51}
!87 = !{!61, !59, !57, !55, !53, !40, !42, !38, !41, !27, !26, !24, !23, !17, !18}
!88 = !{!51, !61, !59, !57, !55, !53, !40, !42, !38, !41, !27, !26, !24, !23, !17, !18}
!89 = !{!26, !23, !17, !18}
!90 = !{!63}
!91 = !{!73, !71, !69, !67, !65, !27, !26, !24, !23, !17, !18}
!92 = !{!63, !73, !71, !69, !67, !65, !27, !26, !24, !23, !17, !18}
!93 = distinct !{!93, !"_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value"}
!94 = distinct !{!94, !93, !"_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value: argument 1"}
!95 = distinct !{!95, !93, !"_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value: argument 0"}
!96 = distinct !{!96, !"_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_"}
!97 = distinct !{!97, !96, !"_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_: argument 0"}
!98 = distinct !{!98, !"_RNvCs3RZUOUhPFQ6_8clap_lex9is_number"}
!99 = distinct !{!99, !98, !"_RNvCs3RZUOUhPFQ6_8clap_lex9is_number: argument 0"}
!100 = !{!94}
!101 = !{!95}
!102 = !{!95, !94}
!103 = !{!97}
!104 = !{!99, !97}
!105 = distinct !{!105, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once"}
!106 = distinct !{!106, !105, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once: argument 2"}
!107 = distinct !{!107, !105, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once: argument 1"}
!108 = distinct !{!108, !105, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt10split_once: argument 0"}
!109 = !{!108, !107, !106}
!110 = distinct !{!110, !"_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new"}
!111 = distinct !{!111, !110, !"_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new: argument 1"}
!112 = distinct !{!112, !110, !"_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags3new: argument 0"}
!113 = distinct !{!113, !"_RNvCs3RZUOUhPFQ6_8clap_lex18split_nonutf8_once"}
!114 = distinct !{!114, !113, !"_RNvCs3RZUOUhPFQ6_8clap_lex18split_nonutf8_once: argument 1"}
!115 = distinct !{!115, !113, !"_RNvCs3RZUOUhPFQ6_8clap_lex18split_nonutf8_once: argument 0"}
!116 = distinct !{!116, !"_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at"}
!117 = distinct !{!117, !116, !"_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at: argument 1"}
!118 = distinct !{!118, !116, !"_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at: argument 0"}
!119 = distinct !{!119, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCs3RZUOUhPFQ6_8clap_lex"}
!120 = distinct !{!120, !119, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCs3RZUOUhPFQ6_8clap_lex: argument 1"}
!121 = distinct !{!121, !119, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!122 = distinct !{!122, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex"}
!123 = distinct !{!123, !122, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!124 = !{!115, !114, !112, !111}
!125 = !{!115, !112}
!126 = !{!121, !120, !118, !117, !115, !112}
!127 = !{!123}
!128 = !{!123, !115, !114, !112, !111}
!129 = !{!123, !115, !112}
!130 = distinct !{!130, !"_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next"}
!131 = distinct !{!131, !130, !"_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next: argument 1"}
!132 = distinct !{!132, !"_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag"}
!133 = distinct !{!133, !132, !"_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag: argument 1"}
!134 = distinct !{!134, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!135 = distinct !{!135, !134, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!136 = distinct !{!136, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3RZUOUhPFQ6_8clap_lex"}
!137 = distinct !{!137, !136, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!138 = distinct !{!138, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!139 = distinct !{!139, !138, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!140 = distinct !{!140, !130, !"_RNvXs3_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlagsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next: argument 0"}
!141 = distinct !{!141, !132, !"_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag: argument 0"}
!142 = distinct !{!142, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!143 = distinct !{!143, !142, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!144 = distinct !{!144, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!145 = distinct !{!145, !144, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!146 = distinct !{!146, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!147 = distinct !{!147, !146, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!148 = !{!131}
!149 = !{!133}
!150 = !{!135}
!151 = !{!137}
!152 = !{!139, !137, !135, !133, !131}
!153 = !{!141, !140}
!154 = !{!137, !135, !141, !133, !140, !131}
!155 = !{!143, !137, !135, !133, !131}
!156 = !{!145, !137, !135, !133, !131}
!157 = !{!147, !137, !135, !133, !131}
!158 = !{!133, !131}
!159 = !{!135, !133, !131}
!160 = distinct !{!160, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!161 = distinct !{!161, !160, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!162 = distinct !{!162, !"_RNvXs2I_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs3RZUOUhPFQ6_8clap_lex"}
!163 = distinct !{!163, !162, !"_RNvXs2I_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!164 = distinct !{!164, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3RZUOUhPFQ6_8clap_lex"}
!165 = distinct !{!165, !164, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!166 = distinct !{!166, !"_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at"}
!167 = distinct !{!167, !166, !"_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at: argument 1"}
!168 = distinct !{!168, !166, !"_RNvNtCs3RZUOUhPFQ6_8clap_lex3ext8split_at: argument 0"}
!169 = distinct !{!169, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCs3RZUOUhPFQ6_8clap_lex"}
!170 = distinct !{!170, !169, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCs3RZUOUhPFQ6_8clap_lex: argument 1"}
!171 = distinct !{!171, !169, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!172 = !{!161}
!173 = !{!163, !161}
!174 = !{!165, !161}
!175 = !{!171, !170, !168, !167}
!176 = distinct !{!176, !"_RNvCs3RZUOUhPFQ6_8clap_lex9is_number"}
!177 = distinct !{!177, !176, !"_RNvCs3RZUOUhPFQ6_8clap_lex9is_number: argument 0"}
!178 = !{!177}
!179 = distinct !{!179, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!180 = distinct !{!180, !179, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!181 = distinct !{!181, !"_RNvXs2I_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs3RZUOUhPFQ6_8clap_lex"}
!182 = distinct !{!182, !181, !"_RNvXs2I_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!183 = distinct !{!183, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3RZUOUhPFQ6_8clap_lex"}
!184 = distinct !{!184, !183, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3RZUOUhPFQ6_8clap_lex: argument 0"}
!185 = distinct !{!185, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!186 = distinct !{!186, !185, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!187 = distinct !{!187, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!188 = distinct !{!188, !187, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!189 = distinct !{!189, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!190 = distinct !{!190, !189, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!191 = distinct !{!191, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex"}
!192 = distinct !{!192, !191, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!193 = !{!180}
!194 = !{!182, !180}
!195 = !{!184}
!196 = !{!186, !184, !180}
!197 = !{!184, !180}
!198 = !{!188, !184, !180}
!199 = !{!190, !184, !180}
!200 = !{!192, !184, !180}
!201 = distinct !{!201, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find"}
!202 = distinct !{!202, !201, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find: argument 1"}
!203 = distinct !{!203, !201, !"_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find: argument 0"}
!204 = distinct !{!204, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex"}
!205 = distinct !{!205, !204, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex: argument 1"}
!206 = distinct !{!206, !204, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex: argument 0"}
!207 = distinct !{!207, !"_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_"}
!208 = distinct !{!208, !207, !"_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjNCNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2Z_8OsStrExt4find0E0INtNtBJ_12control_flow11ControlFlowjEEB31_: argument 1"}
end_hunk_2
