Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.09?download=true
inline.NumInlined: 668
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 71
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [142 x i8] c"assertion failed: match track_edge_idx {\0A    LeftOrRight::Left(idx) => idx <= old_left_len,\0A    LeftOrRight::Right(idx) => idx <= right_len,\0A}", align 1
@1 = private unnamed_addr constant [92 x i8] c"/rustc/0ed41eb4142dda2df61eb1145a312c1a9d62eb56/library/alloc/src/collections/btree/node.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\0B\06\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [42 x i8] c"assertion failed: new_left_len <= CAPACITY", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\BD\05\00\00\09\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@6 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00#\04\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00E\05\00\00$\00\00\00" }>, align 8
@9 = private unnamed_addr constant [33 x i8] c"assertion failed: self.height > 0", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00{\02\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\9A\07\00\00\05\00\00\00" }>, align 8
@13 = private unnamed_addr constant [97 x i8] c"/rustc/0ed41eb4142dda2df61eb1145a312c1a9d62eb56/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"`\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@15 = private unnamed_addr constant [51 x i8] c"assertion failed: old_right_len + count <= CAPACITY", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00=\06\00\00\0D\00\00\00" }>, align 8
@17 = private unnamed_addr constant [39 x i8] c"assertion failed: old_left_len >= count", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00>\06\00\00\0D\00\00\00" }>, align 8
@19 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00m\06\00\00\16\00\00\00" }>, align 8
@21 = private unnamed_addr constant [50 x i8] c"assertion failed: old_left_len + count <= CAPACITY", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00}\06\00\00\0D\00\00\00" }>, align 8
@23 = private unnamed_addr constant [40 x i8] c"assertion failed: old_right_len >= count", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00~\06\00\00\0D\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\AE\06\00\00\16\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"`\00\00\00\00\00\00\00\97\02\00\00*\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\00\05\00\00#\00\00\00" }>, align 8
@28 = private unnamed_addr constant [61 x i8] c"internal error: entered unreachable code: empty internal node", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\87\05\00\00\1F\00\00\00" }>, align 8
@30 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\B0\02\00\00\09\00\00\00" }>, align 8
@32 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\C9\02\00\00\09\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\CD\02\00\00\09\00\00\00" }>, align 8
@35 = private unnamed_addr constant [11 x i8] c"OutOfMemory", align 1
@36 = private unnamed_addr constant [15 x i8] c"ExceedsMaxLoans", align 1
@37 = private unnamed_addr constant [18 x i8] c"ExceedsMaxLoanSize", align 1
@38 = private unnamed_addr constant [15 x i8] c"InternalFailure", align 1
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service = private unnamed_addr constant [4 x i8] c"\0B\0F\12\0F", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service.154 = private unnamed_addr constant [4 x ptr] [ptr @35, ptr @36, ptr @37, ptr @38], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j0_ECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !27, !nonnull !5, !noundef !5
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.a = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload) #21, !noalias !29 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %3, label %bb.b

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !28
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %5, align 8, !alias.scope !30, !noundef !5 ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !6, !alias.scope !30, !noundef !5
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !31
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.c, %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %6, align 8, !alias.scope !30, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e ; 2 uses
  store ptr %i.b, ptr %i.i, align 8, !noalias !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.d, ptr %i.j, align 8, !noalias !32
  %i.k = add i64 %i.e, 1
  store i64 %i.k, ptr %5, align 8, !alias.scope !30
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit: ; preds = %3, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j4_ECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.16.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.16.copyload = load i64, ptr %.sroa.7.16..sroa_idx, align 8
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.8.16..sroa_idx, align 8 ; 2 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.16.copyload = load i64, ptr %.sroa.9.16..sroa_idx, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.10.16.copyload = load ptr, ptr %.sroa.10.16..sroa_idx, align 8 ; 2 uses
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.12.16.copyload = load ptr, ptr %.sroa.12.16..sroa_idx, align 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.16.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.c = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.16.copyload, i64 noundef %.sroa.7.16.copyload) #21, !noalias !49 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.c, 1
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !50, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %1, align 8, !range !6, !alias.scope !50, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !51
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !52
  %i.m = add i64 %i.g, 1
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i
  %storemerge = phi i64 [ %i.m, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %i.a, align 8, !alias.scope !48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.16.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.n = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.16.copyload, i64 noundef %.sroa.9.16.copyload) #21, !noalias !54 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.1, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit
  %i.q = extractvalue { ptr, i64 } %i.n, 1
  %i.r = load i64, ptr %i.a, align 8, !alias.scope !55, !noundef !5 ; 3 uses
  %i.s = load i64, ptr %1, align 8, !range !6, !alias.scope !55, !noundef !5
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.1

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !56
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.1

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.1: ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !alias.scope !55, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.r ; 2 uses
  store ptr %i.o, ptr %i.v, align 8, !noalias !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.q, ptr %i.w, align 8, !noalias !57
  %i.x = add i64 %i.r, 1
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.1

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.1: ; preds = %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.1
  %storemerge9 = phi i64 [ %i.x, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.1 ], [ 0, %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit ]
  store i64 %storemerge9, ptr %i.a, align 8, !alias.scope !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.16.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.y = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.16.copyload, i64 noundef %.sroa.11.16.copyload) #21, !noalias !59 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.2, label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.1
  %i.ab = extractvalue { ptr, i64 } %i.y, 1
  %i.ac = load i64, ptr %i.a, align 8, !alias.scope !60, !noundef !5 ; 3 uses
  %i.ad = load i64, ptr %1, align 8, !range !6, !alias.scope !60, !noundef !5
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.2

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !61
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.2

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.2: ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.b, align 8, !alias.scope !60, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ac ; 2 uses
  store ptr %i.z, ptr %i.ag, align 8, !noalias !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ab, ptr %i.ah, align 8, !noalias !62
  %i.ai = add i64 %i.ac, 1
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.2

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.2: ; preds = %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.1, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.2
  %storemerge10 = phi i64 [ %i.ai, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.2 ], [ 0, %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.1 ]
  store i64 %storemerge10, ptr %i.a, align 8, !alias.scope !58
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.16.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.aj = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.12.16.copyload, i64 noundef %.sroa.13.16.copyload) #21, !noalias !64 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.3, label %bb.h

bb.h:                                             ; preds = %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.2
  %i.am = extractvalue { ptr, i64 } %i.aj, 1
  %i.an = load i64, ptr %i.a, align 8, !alias.scope !65, !noundef !5 ; 3 uses
  %i.ao = load i64, ptr %1, align 8, !range !6, !alias.scope !65, !noundef !5
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.3

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !66
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.3

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.3: ; preds = %bb.i, %bb.h
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !65, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.an ; 2 uses
  store ptr %i.ak, ptr %i.ar, align 8, !noalias !66
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.am, ptr %i.as, align 8, !noalias !67
  %i.at = add i64 %i.an, 1
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.3

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.3: ; preds = %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.2, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.3
  %storemerge11 = phi i64 [ %i.at, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i.3 ], [ 0, %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit.2 ]
  store i64 %storemerge11, ptr %i.a, align 8, !alias.scope !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j5_ECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.16.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.16.copyload = load i64, ptr %.sroa.7.16..sroa_idx, align 8
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.8.16..sroa_idx, align 8 ; 2 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.16.copyload = load i64, ptr %.sroa.9.16..sroa_idx, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.10.16.copyload = load ptr, ptr %.sroa.10.16..sroa_idx, align 8 ; 2 uses
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.12.16.copyload = load ptr, ptr %.sroa.12.16..sroa_idx, align 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.14.16.copyload = load ptr, ptr %.sroa.14.16..sroa_idx, align 8 ; 2 uses
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.15.16.copyload = load i64, ptr %.sroa.15.16..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.16.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.c = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.16.copyload, i64 noundef %.sroa.7.16.copyload) #21, !noalias !87 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.c, 1
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !88, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %1, align 8, !range !6, !alias.scope !88, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !89
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !88, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !90
  %i.m = add i64 %i.g, 1
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i
end_hunk_0
