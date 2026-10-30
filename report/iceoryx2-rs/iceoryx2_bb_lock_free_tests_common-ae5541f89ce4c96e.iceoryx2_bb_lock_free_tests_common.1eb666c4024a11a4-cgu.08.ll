Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free_tests_common-ae5541f89ce4c96e.iceoryx2_bb_lock_free_tests_common.1eb666c4024a11a4-cgu.08?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss0_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss0_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss1_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss1_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss2_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss2_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss3_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss3_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss4_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss4_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss5_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss5_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss6_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss6_1__6___ctor, section ".init_array", align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss_1__6___CTOR = constant ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss_1__6___ctor, section ".init_array", align 8
@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsm_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enumsNtB5_24UniqueIndexCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_20BarrierCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXso_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB5_22ScopedThreadSpawnErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@4 = private unnamed_addr constant [35 x i8] c"Does not exceed supported capacity.", align 1
@5 = private unnamed_addr constant [51 x i8] c"iceoryx2-bb/lock-free/src/mpmc/unique_index_set.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"2\00\00\00\00\00\00\00\FC\01\00\003\00\00\00" }>, align 8
@7 = private unnamed_addr constant [9 x i8] c"\1B[1;4;33m", align 1
@8 = private unnamed_addr constant [4 x i8] c"\1B[0m", align 1
@9 = private unnamed_addr constant [88 x i8] c"\12assertion failed: \C0:expr: sut.borrowed_indices() == CAPACITY - i - 1;  value: \C0\04 == \C0\C0\00", align 1
@10 = private unnamed_addr constant [70 x i8] c"iceoryx2-bb/lock-free/tests-common/src/mpmc_unique_index_set_tests.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\88\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [32 x i8] c"\12assertion failed: \C0\09e.is_ok()\C0\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\81\00\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant [77 x i8] c"\12assertion failed: \C0/expr: sut.borrowed_indices() == i + 1;  value: \C0\04 == \C0\C0\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\83\00\00\00\09\00\00\00" }>, align 8
@16 = private unnamed_addr constant [85 x i8] c"\12assertion failed: \C07expr: e.as_ref().unwrap().value() == i as u32;  value: \C0\04 == \C0\C0\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00u\00\00\00\09\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00t\00\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00l\00\00\00\0D\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00n\00\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant [93 x i8] c"\12assertion failed: \C0?expr: e.unwrap().value() == (CAPACITY - i - 1) as u32;  value: \C0\04 == \C0\C0\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00o\00\00\00\09\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00g\00\00\00\09\00\00\00" }>, align 8
@24 = private unnamed_addr constant [4 x i8] c"\80\00\00\00", align 4
@25 = private unnamed_addr constant [35 x i8] c"\12assertion failed: \C0\0Csut.is_err()\C0\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\22\00\00\00\05\00\00\00" }>, align 8
@27 = private unnamed_addr constant [34 x i8] c"\12assertion failed: \C0\0Bsut.is_ok()\C0\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00%\00\00\00\05\00\00\00" }>, align 8
@29 = private unnamed_addr constant [4 x i8] c"@\00\00\00", align 4
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00)\00\00\00\05\00\00\00" }>, align 8
@31 = private unnamed_addr constant [94 x i8] c"\12assertion failed: \C0@expr: sut.unwrap().capacity() == (CAPACITY / 2) as u32;  value: \C0\04 == \C0\C0\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00&\00\00\00\05\00\00\00" }>, align 8
@33 = private unnamed_addr constant [79 x i8] c"\12assertion failed: \C01expr: sut.capacity() == CAPACITY as u32;  value: \C0\04 == \C0\C0\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\1F\00\00\00\05\00\00\00" }>, align 8
@35 = private unnamed_addr constant [4 x i8] c"S\00\00\00", align 4
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\CC\00\00\00\0A\00\00\00" }>, align 8
@37 = private unnamed_addr constant [26 x i8] c"failed to run thread scope", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\ED\00\00\00\06\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\F5\00\00\00\09\00\00\00" }>, align 8
@40 = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 8
@41 = private unnamed_addr constant [54 x i8] c"\12assertion failed: \C0\18expr: *id == 1;  value: \C0\04 == \C0\C0\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\FB\00\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [33 x i8] c"\12assertion failed: \C0\0Ae.is_err()\C0\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\FF\00\00\00\05\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\00\01\00\00\1A\00\00\00" }>, align 8
@46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@47 = private unnamed_addr constant [108 x i8] c"\12assertion failed: \C0Nexpr: e.err().unwrap() == UniqueIndexSetAcquireFailure::OutOfIndices;  value: \C0\04 == \C0\C0\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\00\01\00\00\05\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\009\00\00\00\05\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00:\00\00\00\1A\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00:\00\00\00\05\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\004\00\00\00\09\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\003\00\00\00\09\00\00\00" }>, align 8
@54 = private unnamed_addr constant [102 x i8] c"\12assertion failed: \C0Hexpr: e.as_ref().unwrap().value() == (CAPACITY - i - 1) as u32;  value: \C0\04 == \C0\C0\00", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\BE\00\00\00\09\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\BD\00\00\00\09\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\B8\00\00\00\0D\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\B3\00\00\00\09\00\00\00" }>, align 8
@59 = private unnamed_addr constant [51 x i8] c"\12assertion failed: \C0\1Csut.init(&allocator).is_ok()\C0\00", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\91\00\00\00\0E\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\A6\00\00\00\0D\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\A5\00\00\00\0D\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\9D\00\00\00\11\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\9F\00\00\00\0D\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\A0\00\00\00\0D\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\98\00\00\00\0D\00\00\00" }>, align 8
@67 = private unnamed_addr constant [34 x i8] c"\12assertion failed: \C0\0Bidx.is_ok()\C0\00", align 1
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00B\00\00\00\05\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00F\00\00\00\05\00\00\00" }>, align 8
@70 = private unnamed_addr constant [36 x i8] c"\12assertion failed: \C0\0Didx_1.is_ok()\C0\00", align 1
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00N\00\00\00\05\00\00\00" }>, align 8
@72 = private unnamed_addr constant [36 x i8] c"\12assertion failed: \C0\0Didx_2.is_ok()\C0\00", align 1
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00Q\00\00\00\05\00\00\00" }>, align 8
@74 = private unnamed_addr constant [1 x i8] c"\01", align 1
@75 = private unnamed_addr constant [150 x i8] c"\12assertion failed: \C0xexpr: unsafe { sut.release_raw_index(idx_1.unwrap(), ReleaseMode::LockIfLastIndex) } == ReleaseState::Unlocked;  value: \C0\04 == \C0\C0\00", align 1
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00S\00\00\00\05\00\00\00" }>, align 8
@77 = private unnamed_addr constant [36 x i8] c"\12assertion failed: \C0\0Didx_3.is_ok()\C0\00", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00V\00\00\00\05\00\00\00" }>, align 8
@79 = private unnamed_addr constant [150 x i8] c"\12assertion failed: \C0xexpr: unsafe { sut.release_raw_index(idx_2.unwrap(), ReleaseMode::LockIfLastIndex) } == ReleaseState::Unlocked;  value: \C0\04 == \C0\C0\00", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00X\00\00\00\05\00\00\00" }>, align 8
@81 = private unnamed_addr constant [148 x i8] c"\12assertion failed: \C0vexpr: unsafe { sut.release_raw_index(idx_3.unwrap(), ReleaseMode::LockIfLastIndex) } == ReleaseState::Locked;  value: \C0\04 == \C0\C0\00", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00Y\00\00\00\05\00\00\00" }>, align 8
@83 = private unnamed_addr constant [37 x i8] c"\12assertion failed: \C0\0Eidx_4.is_err()\C0\00", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00\\\00\00\00\05\00\00\00" }>, align 8
@85 = private unnamed_addr constant [108 x i8] c"\12assertion failed: \C0Nexpr: idx_4.err().unwrap() == UniqueIndexSetAcquireFailure::IsLocked;  value: \C0\04 == \C0\C0\00", align 1
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"E\00\00\00\00\00\00\00]\00\00\00\05\00\00\00" }>, align 8
@87 = private unnamed_addr constant [63 x i8] c"iceoryx2_bb_lock_free_tests_common::mpmc_unique_index_set_tests", align 1
@88 = private unnamed_addr constant [25 x i8] c"capacity_is_set_correctly", align 1
@89 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @88, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests37___iox2_test_capacity_is_set_correctly }>, align 8
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_CsfYvvZIldtH5_9inventoryNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseNtB4_10ErasedNode6submitCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @89, ptr @90, [8 x i8] zeroinitializer }>, align 8
@91 = private unnamed_addr constant [52 x i8] c"mpmc_unique_index_release_mode_default_does_not_lock", align 1
@92 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @91, [8 x i8] c"4\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests64___iox2_test_mpmc_unique_index_release_mode_default_does_not_lock }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss0_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @92, ptr @90, [8 x i8] zeroinitializer }>, align 8
@93 = private unnamed_addr constant [55 x i8] c"mpmc_unique_index_release_mode_lock_if_last_index_works", align 1
@94 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @93, [8 x i8] c"7\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests67___iox2_test_mpmc_unique_index_release_mode_lock_if_last_index_works }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss1_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @94, ptr @90, [8 x i8] zeroinitializer }>, align 8
@95 = private unnamed_addr constant [25 x i8] c"acquire_and_release_works", align 1
@96 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @95, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests37___iox2_test_acquire_and_release_works }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss2_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @96, ptr @90, [8 x i8] zeroinitializer }>, align 8
@97 = private unnamed_addr constant [22 x i8] c"borrowed_indices_works", align 1
@98 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @97, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests34___iox2_test_borrowed_indices_works }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss3_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @98, ptr @90, [8 x i8] zeroinitializer }>, align 8
@99 = private unnamed_addr constant [51 x i8] c"acquire_and_release_works_with_uninitialized_memory", align 1
@100 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"3\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests63___iox2_test_acquire_and_release_works_with_uninitialized_memory }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss4_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @100, ptr @90, [8 x i8] zeroinitializer }>, align 8
@101 = private unnamed_addr constant [32 x i8] c"acquire_release_as_lifo_behavior", align 1
@102 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @101, [8 x i8] c" \00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests44___iox2_test_acquire_release_as_lifo_behavior }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss5_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @102, ptr @90, [8 x i8] zeroinitializer }>, align 8
@103 = private unnamed_addr constant [26 x i8] c"concurrent_acquire_release", align 1
@104 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @103, [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests38___iox2_test_concurrent_acquire_release }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss6_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @104, ptr @90, [8 x i8] zeroinitializer }>, align 8
@105 = private unnamed_addr constant [29 x i8] c"when_created_contains_indices", align 1
@106 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @87, [8 x i8] c"?\00\00\00\00\00\00\00", ptr @105, [8 x i8] c"\1D\00\00\00\00\00\00\00", ptr @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests41___iox2_test_when_created_contains_indices }>, align 8
@_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @106, ptr @90, [8 x i8] zeroinitializer }>, align 8
@107 = private unnamed_addr constant [6 x i8] c"Locked", align 1
@108 = private unnamed_addr constant [8 x i8] c"Unlocked", align 1
@109 = private unnamed_addr constant [18 x i8] c"InsufficientMemory", align 1
@110 = private unnamed_addr constant [29 x i8] c"SystemWideBarrierLimitReached", align 1
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@112 = private unnamed_addr constant [12 x i8] c"UnknownError", align 1
@113 = private unnamed_addr constant [12 x i8] c"OutOfIndices", align 1
@114 = private unnamed_addr constant [8 x i8] c"IsLocked", align 1
@115 = private unnamed_addr constant [38 x i8] c"ProvidedCapacityGreaterThanMaxCapacity", align 1
@116 = private unnamed_addr constant [22 x i8] c"ProvidedCapacityIsZero", align 1
@117 = private unnamed_addr constant [21 x i8] c"InsufficientResources", align 1
@118 = private unnamed_addr constant [15 x i8] c"InvalidSettings", align 1
@119 = private unnamed_addr constant [23 x i8] c"InsufficientPermissions", align 1
@120 = private unnamed_addr constant [16 x i8] c"InvalidGuardSize", align 1
@121 = private unnamed_addr constant [27 x i8] c"ContentionScopeNotSupported", align 1
@122 = private unnamed_addr constant [27 x i8] c"SchedulerPolicyNotSupported", align 1
@123 = private unnamed_addr constant [17 x i8] c"StackSizeTooSmall", align 1
@124 = private unnamed_addr constant [31 x i8] c"ProvidedStackSizeMemoryTooSmall", align 1
@125 = private unnamed_addr constant [39 x i8] c"ProvidedStackMemoryIsNotReadAndWritable", align 1
@126 = private unnamed_addr constant [40 x i8] c"SchedulerPriorityInheritanceNotSupported", align 1
@127 = private unnamed_addr constant [28 x i8] c"ThreadPrioritiesNotSupported", align 1
@128 = private unnamed_addr constant [44 x i8] c"CpuCoreOutsideOfSupportedCpuRangeForAffinity", align 1
@129 = private unnamed_addr constant [41 x i8] c"MaxNumberOfSupportedScopedThreadsExceeded", align 1
@130 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread18ThreadSetNameErrorNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@131 = private unnamed_addr constant [18 x i8] c"ThreadSetNameError", align 1
@132 = private unnamed_addr constant [156 x i8] c"iceoryx2_bb_concurrency::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<iceoryx2_bb_lock_free_tests_common::mpmc_container_tests::generic::TestType>>", align 1
@133 = private unnamed_addr constant [17 x i8] c"\0CPhantomData<\C0\01>\00", align 1
@134 = private unnamed_addr constant [86 x i8] c"iceoryx2_bb_concurrency::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<usize>>", align 1
@135 = private unnamed_addr constant [46 x i8] c"iceoryx2_bb_concurrency::cell::UnsafeCell<u32>", align 1
@136 = private unnamed_addr constant [46 x i8] c"iceoryx2_bb_concurrency::cell::UnsafeCell<u64>", align 1
@137 = private unnamed_addr constant [41 x i8] c"iceoryx2_bb_concurrency::atomic::AtomicU8", align 1
@138 = private unnamed_addr constant [42 x i8] c"iceoryx2_bb_concurrency::atomic::AtomicU64", align 1
@139 = private unnamed_addr constant [3 x i8] c"&()", align 1
@llvm.used = appending global [9 x ptr] [ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss0_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss1_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss2_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss3_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss4_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss5_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss6_1__6___CTOR, ptr @_RNvNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_testss_1__6___CTOR], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexNtNtB11_22unique_index_set_enums28UniqueIndexSetAcquireFailureEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_11UniqueIndexNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests22borrowed_indices_works() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [560 x i8], align 8               ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [552 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs9_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setINtB5_23FixedSizeUniqueIndexSetKj80_E25new_with_reduced_capacityCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([560 x i8]) align 8 captures(none) dereferenceable(560) %i.b, i64 noundef 128) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.x = load i8, ptr %i.b, align 8, !range !5, !alias.scope !20, !noundef !4
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set23FixedSizeUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !5, !alias.scope !20, !noundef !4
  store i8 %i.aa, ptr %i.a, align 1, !noalias !21
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 35, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !21
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set23FixedSizeUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(552) %i.ab, i64 552, i1 false), !alias.scope !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %bb.c

.preheader:                                       ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.e

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set23FixedSizeUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, %bb.l
  %.sroa.03.047 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set23FixedSizeUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit ], [ %i.ag, %bb.l ]
  %i.ag = add nuw nsw i64 %.sroa.03.047, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull align 8 %i.w) #9
  %i.ah = load ptr, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexNtNtBL_22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.d:                                             ; preds = %bb.h
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.e:                                             ; preds = %.preheader, %bb.h
  %.sroa.029.048 = phi i64 [ 0, %.preheader ], [ %i.ai, %bb.h ] ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.029.048, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aj = load i64, ptr %i.ad, align 8, !noundef !4 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i64 %i.aj, -1                   ; 3 uses
  store i64 %i.al, ptr %i.ad, align 8
  %i.am = load i64, ptr %i.v, align 8, !range !7, !noundef !4
  %i.an = icmp samesign ult i64 %i.al, %i.am
  call void @llvm.assume(i1 %i.an)
  %i.ao = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ap = icmp ult i64 %i.aj, 576460752303423489
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.al ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !align !8, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !noundef !4
  store ptr %i.ar, ptr %i.j, align 8
  store i32 %i.at, ptr %i.af, align 8
  call void @_RNvXs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_11UniqueIndexNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #9
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.au = call noundef i64 @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet16borrowed_indices(ptr noundef nonnull align 8 %i.w) #9 ; 2 uses
  store i64 %i.au, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.av = sub nuw nsw i64 127, %.sroa.029.048     ; 2 uses
  store i64 %i.av, ptr %i.f, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.ax, ptr @7, ptr inttoptr (i64 1 to ptr)
  %spec.select64 = select i1 %i.ax, i64 9, i64 0
  store ptr %spec.select, ptr %i.e, align 8, !captures !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select64, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink52.a = select i1 %i.az, ptr @8, ptr inttoptr (i64 1 to ptr)
  %.sink51 = select i1 %i.az, i64 4, i64 0
  store ptr %.sink52.a, ptr %i.d, align 8, !captures !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sink51, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.434.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.bb, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.438.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.g, ptr %i.bc, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.442.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.d, ptr %i.bd, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #10
  unreachable

bb.h:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond49.not = icmp eq i64 %i.ai, 128
  br i1 %exitcond49.not, label %bb.d, label %bb.e

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.be = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select65 = select i1 %i.be, ptr @7, ptr inttoptr (i64 1 to ptr)
  %spec.select66 = select i1 %i.be, i64 9, i64 0
  store ptr %spec.select65, ptr %i.t, align 8, !captures !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select66, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink56.a = select i1 %i.bg, ptr @8, ptr inttoptr (i64 1 to ptr)
  %.sink55 = select i1 %i.bg, i64 4, i64 0
  store ptr %.sink56.a, ptr %i.s, align 8, !captures !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sink55, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.bi, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #10
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexNtNtBL_22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.c
  %i.bj = load i32, ptr %i.ae, align 8, !alias.scope !22, !noundef !4
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !23, !noundef !4 ; 3 uses
  %i.bl = load i64, ptr %i.v, align 8, !range !7, !alias.scope !23, !noundef !4
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.j, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

bb.j:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexNtNtBL_22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8grow_oneCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #11
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexNtNtBL_22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, %bb.j
  %i.bn = load ptr, ptr %i.ac, align 8, !alias.scope !23, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk ; 2 uses
  store ptr %i.ah, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.bj, ptr %i.bp, align 8
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.ad, align 8, !alias.scope !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.br = call noundef i64 @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet16borrowed_indices(ptr noundef nonnull align 8 %i.w) #9 ; 2 uses
  store i64 %i.br, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.ag, ptr %i.n, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.bs = icmp eq i64 %i.br, %i.ag
  br i1 %i.bs, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bt = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select67 = select i1 %i.bt, ptr @7, ptr inttoptr (i64 1 to ptr)
  %spec.select68 = select i1 %i.bt, i64 9, i64 0
  store ptr %spec.select67, ptr %i.m, align 8, !captures !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %spec.select68, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bv = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink60.a = select i1 %i.bv, ptr @8, ptr inttoptr (i64 1 to ptr)
  %.sink59 = select i1 %i.bv, i64 4, i64 0
  store ptr %.sink60.a, ptr %i.l, align 8, !captures !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sink59, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.q, ptr %i.bx, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.o, ptr %i.by, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.l, ptr %i.bz, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10
  unreachable

bb.l:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %exitcond.not = icmp eq i64 %i.ag, 128
  br i1 %exitcond.not, label %.preheader, label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests25acquire_and_release_works() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [560 x i8], align 8               ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [4 x i8], align 4                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 12 uses
  %i.af = alloca [552 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs9_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setINtB5_23FixedSizeUniqueIndexSetKj80_E25new_with_reduced_capacityCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([560 x i8]) align 8 captures(none) dereferenceable(560) %i.b, i64 noundef 128) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ag = load i8, ptr %i.b, align 8, !range !5, !alias.scope !36, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set23FixedSizeUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6
end_hunk_0
