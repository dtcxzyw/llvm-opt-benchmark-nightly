Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_gettext_mo_file_parser-76812a0868d5fe80.fish_gettext_mo_file_parser.d1003453fd052208-cgu.0?download=true
inline.NumInlined: 229
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/thread/local.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@2 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@3 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @2, [24 x i8] zeroinitializer }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECshWvooqPLMQS_27fish_gettext_mo_file_parser, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCshWvooqPLMQS_27fish_gettext_mo_file_parser, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser }>, align 8
@5 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@6 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/write.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@8 = private unnamed_addr constant [92 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/error/repr_bitpacked.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"[\00\00\00\00\00\00\00\0B\01\00\00\1A\00\00\00" }>, align 8
@_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@10 = private unnamed_addr constant [41 x i8] c"crates/gettext-mo-file-parser/src/lib.rs\00", align 1
@11 = private unnamed_addr constant [21 x i8] c"MO file is too short.", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00L\00\00\00)\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00M\00\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00\0A\00\00\00\1D\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00\06\00\00\00\1D\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00\83\00\00\000\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00\83\00\00\00G\00\00\00" }>, align 8
@18 = private unnamed_addr constant [33 x i8] c"File too short to contain header.", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00F\00\00\00\17\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"(\00\00\00\00\00\00\00F\00\00\00\08\00\00\00" }>, align 8
@21 = private unnamed_addr constant [29 x i8] c"Major revision must be 0 or 1", align 1
@22 = private unnamed_addr constant [97 x i8] c"First 4 bytes of MO file must correspond to magic number 0x950412de, either big or little endian.", align 1
@23 = private unnamed_addr constant [27 x i8] c"assertion failed: step != 0", align 1
@24 = private unnamed_addr constant [90 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/iter/adapters/step_by.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"Y\00\00\00\00\00\00\00$\00\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@27 = private unnamed_addr constant [2 x i8] c"()", align 1
@28 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@29 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @28, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree returned align 8 captures(ret: address, provenance) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %0, ptr align 8 %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree returned align 8 captures(ret: address, provenance) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %trunc = trunc i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.35.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.4.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.4.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.35.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null), !inline_history !4 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr nonnull align 8 @1) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.d, 1
  store i64 %i.g, ptr %i.b, align 8
  %i.h = insertvalue { i64, i64 } poison, i64 %i.d, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 %i.f, 1
  ret { i64, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null)     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x i64>, ptr %i.b, align 8
  %i.f = load i64, ptr %i.b, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8
  store <2 x i64> %i.e, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1, ptr nofree readonly align 8 captures(none) %2, i1 zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %4 = alloca [32 x i8], align 8                  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp ult i64 %i.f, 8
  %i.h = add i64 %i.f, 1                          ; 4 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %.sroa.02.0.i = select i1 %i.g, i64 %i.f, i64 %i.j ; 2 uses
  %i.k = lshr i64 %.sroa.02.0.i, 1
  %.not.i = icmp ugt i64 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %3) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.d:                                             ; preds = %bb.b
  %5 = add nuw i64 %.sroa.02.0.i, 1
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull sret([32 x i8]) align 8 %4, ptr nonnull poison, i64 32, i64 16, i64 %.sroa.0.0.sroa.speculated.i, i1 zeroext %3) #35
  %6 = load ptr, ptr %4, align 8                  ; 9 uses
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8                  ; 6 uses
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = load i64, ptr %10, align 8                ; 2 uses
  br i1 %7, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge46, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %12 = load ptr, ptr %0, align 8                 ; 2 uses
  %.val323 = load <16 x i8>, ptr %12, align 16
  %i.q = icmp sgt <16 x i8> %.val323, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.sroa.013.045 = phi ptr [ %12, %.preheader.lr.ph ], [ %.sroa.013.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ] ; 2 uses
  %.sroa.5.044 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ] ; 2 uses
  %.sroa.9.043 = phi i64 [ %i.o, %.preheader.lr.ph ], [ %i.aq, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %.sroa.13.042 = phi i16 [ %i.r, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ] ; 2 uses
  %.not.i137 = icmp eq i16 %.sroa.13.042, 0
  br i1 %.not.i137, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.013.139 = phi ptr [ %i.s, %.noexc2 ], [ %.sroa.013.045, %.preheader ]
  %.sroa.5.138 = phi i64 [ %i.v, %.noexc2 ], [ %.sroa.5.044, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.139, i64 16 ; 3 uses
  %.val24 = load <16 x i8>, ptr %i.s, align 16
  %i.t = icmp sgt <16 x i8> %.val24, splat (i8 -1)
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %i.v = add i64 %.sroa.5.138, 16                 ; 2 uses
  %.not.i1 = icmp eq i16 %i.u, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge46.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.pre = load i64, ptr %i.a, align 8
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge46.loopexit, %bb.e
  %i.w = phi i64 [ %.pre, %._crit_edge46.loopexit ], [ 0, %bb.e ] ; 2 uses
  %i.x = sub i64 %11, %i.w
  %.sroa.071.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.472.0.copyload = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %0, align 8
  store i64 %9, ptr %i.e, align 8
  store i64 %i.x, ptr %.sroa.573.0..sroa_idx, align 8
  store i64 %i.w, ptr %i.a, align 8
  %i.y = icmp eq i64 %.sroa.472.0.copyload, 0
  br i1 %i.y, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge46
  %i.z = add i64 %.sroa.472.0.copyload, 1         ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 576460752303423487
  br i1 %i.aa, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = shl nuw i64 %i.z, 5                     ; 3 uses
  %i.ac = add nsw i64 %.sroa.472.0.copyload, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.ad, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i: ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %.sroa.071.0.copyload, i64 undef
  br label %bb.h

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i: ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.sroa.071.0.copyload, i64 %i.ah
  %i.aj = icmp eq i64 %i.ad, 0
  br i1 %i.aj, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i
  %i.ak = phi ptr [ %i.ag, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i ], [ %i.ai, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ]
  %.sroa.0.05.i.i.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ]
  %.sroa.6.04.i.i.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i ], [ %i.ad, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.ak, i64 %.sroa.6.04.i.i.i, i64 %.sroa.0.05.i.i.i) #36
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.042, %.preheader ], [ %i.u, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.044, %.preheader ], [ %i.v, %.noexc2 ] ; 2 uses
  %.sroa.013.1.lcssa = phi ptr [ %.sroa.013.045, %.preheader ], [ %i.s, %.noexc2 ]
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i16 %.sroa.13.1.lcssa, -1
  %i.ao = and i16 %i.an, %.sroa.13.1.lcssa
  %i.ap = add i64 %.sroa.5.1.lcssa, %i.am         ; 2 uses
  %i.aq = add i64 %.sroa.9.043, -1                ; 2 uses
  %13 = load ptr, ptr %0, align 8
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [32 x i8], ptr %13, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32
  %i.au = tail call i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRShECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %2, ptr nonnull readonly align 8 %i.at) ; 2 uses
  %.sroa.0.016.i = and i64 %9, %i.au              ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.0.016.i
  %.sroa.0.0.copyload.i1417.i = load <16 x i8>, ptr %i.av, align 1, !noalias !5
  %i.aw = icmp slt <16 x i8> %.sroa.0.0.copyload.i1417.i, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not.i18.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i18.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.016.i, %._crit_edge ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ax, %._crit_edge ], [ %i.bn, %.lr.ph.i ]
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.0.0.lcssa.i, %i.az
  %i.bb = and i64 %i.ba, %9                       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %6, align 16
  %i.bf = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not.i5.i = icmp eq i16 %i.bg, 0
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.bi
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.020.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.016.i, %._crit_edge ]
  %.sroa.5.019.i = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.bj = add i64 %.sroa.5.019.i, 16              ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.020.i
  %.sroa.0.0.i7 = and i64 %i.bk, %9               ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i14.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !5
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i14.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %bb.i ], [ %i.bb, %._crit_edge.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.0.0.i4.i
  %i.bp = lshr i64 %i.au, 57
  %i.bq = trunc nuw nsw i64 %i.bp to i8           ; 2 uses
  %i.br = add i64 %.sroa.0.0.i4.i, -16
  %i.bs = and i64 %i.br, %9
  store i8 %i.bq, ptr %i.bo, align 1
  %i.bt = getelementptr i8, ptr %6, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i8 %i.bq, ptr %i.bu, align 1
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = shl i64 %i.ap, 5
  %i.bx = sub nuw nsw i64 -32, %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bx
  %i.bz = shl i64 %.sroa.0.0.i4.i, 5
  %i.ca = sub nuw nsw i64 -32, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %6, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cb, ptr noundef nonnull align 1 dereferenceable(32) %i.by, i64 32, i1 false)
  %i.cc = icmp eq i64 %i.aq, 0
  br i1 %i.cc, label %._crit_edge46.loopexit, label %.preheader

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.d, %bb.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i, %._crit_edge46
  %.sroa.3.0.i.i = phi i64 [ undef, %bb.h ], [ undef, %._crit_edge46 ], [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ], [ %11, %bb.d ]
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.h ], [ -1, %._crit_edge46 ], [ -1, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ], [ %9, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.j:                                             ; preds = %bb.b
  %.not11.i.i = icmp eq i64 %i.h, 0
  br i1 %.not11.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.cd = lshr i64 %i.h, 4
  %i.ce = and i64 %i.h, 15
  %.not.i.i.i.i = icmp ne i64 %i.ce, 0
  %i.cf = zext i1 %.not.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.cd, %i.cf ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.cg = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.cg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %.lr.ph.i.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.sroa.0.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.cp, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.0.013.i.i.epil.init ; 2 uses
  %.val10.i.i.epil = load <16 x i8>, ptr %i.ci, align 16
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val10.i.i.epil, splat (i8 7)
  %i.cj = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ck = or <2 x i64> %i.cj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ck, ptr %i.ci, align 16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.pre.i.i = load i64, ptr %i.e, align 8
  %.pre14.i.i = add i64 %.pre.i.i, 1              ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %.pre14.i.i, i64 16)
  %spec.select20.i.i = tail call i64 @llvm.umin.i64(i64 %.pre14.i.i, i64 16)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.013.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.cp, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.0.013.i.i ; 2 uses
  %.val10.i.i = load <16 x i8>, ptr %i.cm, align 16
  %.lobit.i.i.i = ashr <16 x i8> %.val10.i.i, splat (i8 7)
  %i.cn = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.co = or <2 x i64> %i.cn, splat (i64 -9187201950435737472)
  store <2 x i64> %i.co, ptr %i.cm, align 16
  %i.cp = add i64 %.sroa.0.013.i.i, 32            ; 2 uses
  %i.cq = load ptr, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.0.013.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %.val10.i.i.1 = load <16 x i8>, ptr %i.cs, align 16
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val10.i.i.1, splat (i8 7)
  %i.ct = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.cu = or <2 x i64> %i.ct, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cu, ptr %i.cs, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %._crit_edge.i.i, %bb.j
  %.sink19.i.i = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 16, %bb.j ]
  %.pre-phi16.sink.i.i = phi i64 [ %spec.select20.i.i, %._crit_edge.i.i ], [ 0, %bb.j ]
  %i.cv = load ptr, ptr %0, align 8               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sink19.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cv, i64 %.pre-phi16.sink.i.i, i1 false)
  %i.cx = load i64, ptr %i.e, align 8             ; 2 uses
  %.not52.i = icmp eq i64 %i.cx, -1
  br i1 %.not52.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.cy = getelementptr i8, ptr %2, i64 8
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %bb.v
  %.sroa.0.051.i = phi i64 [ %i.cz, %bb.v ], [ 0, %.lr.ph.i9.preheader ] ; 10 uses
  %i.cz = add nuw i64 %.sroa.0.051.i, 1
  %i.da = load ptr, ptr %0, align 8               ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.0.051.i
  %i.dc = load i8, ptr %i.db, align 1
  %.not.i10 = icmp eq i8 %i.dc, -128
  br i1 %.not.i10, label %bb.k, label %bb.v

bb.k:                                             ; preds = %.lr.ph.i9
  %.neg.i = xor i64 %.sroa.0.051.i, -1
  %.neg9.i = shl i64 %.neg.i, 5
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %.neg9.i ; 6 uses
  %i.de = sub nsw i64 0, %.sroa.0.051.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  br label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i.i.preheader.i, %bb.k
  %i.di = phi ptr [ %.pre.i, %.lr.ph.i.i.preheader.i ], [ %i.da, %bb.k ] ; 8 uses
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.di, i64 %i.de ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %.val.i.i = load i64, ptr %2, align 8           ; 2 uses
  %.val1.i.i = load i64, ptr %i.cy, align 8       ; 2 uses
  %i.dl = xor i64 %.val.i.i, 8317987319222330741
  %i.dm = xor i64 %.val1.i.i, 7237128888997146477 ; 3 uses
  %i.dn = xor i64 %.val.i.i, 7816392313619706465
  %i.do = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8            ; 5 uses
  %i.dr = xor i64 %.val1.i.i, %i.dq
  %i.ds = xor i64 %i.dr, 8387220255154660723      ; 3 uses
  %i.dt = add i64 %i.dm, %i.dl                    ; 3 uses
  %i.du = add i64 %i.ds, %i.dn                    ; 2 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 13)
  %i.dw = xor i64 %i.dv, %i.dt                    ; 3 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 16)
  %i.dy = xor i64 %i.du, %i.dx                    ; 3 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 32)
  %i.ea = add i64 %i.du, %i.dw                    ; 3 uses
  %i.eb = add i64 %i.dy, %i.dz                    ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 17)
  %i.ed = xor i64 %i.ea, %i.ec                    ; 2 uses
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 21)
  %i.ef = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 32) ; 2 uses
  %i.eh = xor i64 %i.eb, %i.dq                    ; 2 uses
  %i.ei = and i64 %i.dq, 7                        ; 3 uses
  %i.ej = and i64 %i.dq, -8                       ; 5 uses
  %.not38.i = icmp eq i64 %i.ej, 0
  br i1 %.not38.i, label %._crit_edge.i14.i, label %.lr.ph.i15.i

._crit_edge.i14.i:                                ; preds = %.lr.ph.i15.i, %.lr.ph.i35.i
  %.sroa.32.4.i = phi i64 [ %i.ef, %.lr.ph.i35.i ], [ %i.fw, %.lr.ph.i15.i ]
  %.sroa.22.4.i = phi i64 [ %i.ed, %.lr.ph.i35.i ], [ %i.fu, %.lr.ph.i15.i ] ; 3 uses
  %.sroa.12.4.i = phi i64 [ %i.eg, %.lr.ph.i35.i ], [ %i.fx, %.lr.ph.i15.i ]
  %.sroa.0.4.i = phi i64 [ %i.eh, %.lr.ph.i35.i ], [ %i.fy, %.lr.ph.i15.i ]
  %i.ek = icmp samesign ugt i64 %i.ei, 3
  br i1 %i.ek, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i14.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej
  %.sroa.014.0.copyload.i16.i.i = load i32, ptr %i.el, align 1
  %i.em = zext i32 %.sroa.014.0.copyload.i16.i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i14.i
  %.sroa.03.0.i10.i.i = phi i64 [ 4, %bb.l ], [ 0, %._crit_edge.i14.i ] ; 5 uses
  %.sroa.0.0.i11.i.i = phi i64 [ %i.em, %bb.l ], [ 0, %._crit_edge.i14.i ] ; 2 uses
  %i.en = or disjoint i64 %.sroa.03.0.i10.i.i, 1
  %i.eo = icmp samesign ult i64 %i.en, %i.ei
  br i1 %i.eo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ep = getelementptr i8, ptr %i.do, i64 %i.ej
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.sroa.03.0.i10.i.i
  %.sroa.015.0.copyload.i15.i.i = load i16, ptr %i.eq, align 1
  %i.er = zext i16 %.sroa.015.0.copyload.i15.i.i to i64
  %i.es = shl nuw nsw i64 %.sroa.03.0.i10.i.i, 3
  %i.et = shl nuw nsw i64 %i.er, %i.es
  %i.eu = or i64 %i.et, %.sroa.0.0.i11.i.i
  %i.ev = or disjoint i64 %.sroa.03.0.i10.i.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i.i = phi i64 [ %i.ev, %bb.n ], [ %.sroa.03.0.i10.i.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i.i = phi i64 [ %i.eu, %bb.n ], [ %.sroa.0.0.i11.i.i, %bb.m ] ; 2 uses
  %i.ew = icmp samesign ult i64 %.sroa.03.1.i12.i.i, %i.ei
  br i1 %i.ew, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ex = getelementptr i8, ptr %i.do, i64 %i.ej
  %i.ey = getelementptr i8, ptr %i.ex, i64 %.sroa.03.1.i12.i.i
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %.sroa.03.1.i12.i.i, 3
  %i.fc = shl nuw nsw i64 %i.fa, %i.fb
  %i.fd = or i64 %i.fc, %.sroa.0.1.i13.i.i
  br label %bb.q

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i35.i, %.lr.ph.i15.i
  %i.fe = phi i64 [ %i.fx, %.lr.ph.i15.i ], [ %i.eg, %.lr.ph.i35.i ]
  %i.ff = phi i64 [ %i.fu, %.lr.ph.i15.i ], [ %i.ed, %.lr.ph.i35.i ] ; 3 uses
  %i.fg = phi i64 [ %i.fy, %.lr.ph.i15.i ], [ %i.eh, %.lr.ph.i35.i ]
  %i.fh = phi i64 [ %i.fw, %.lr.ph.i15.i ], [ %i.ef, %.lr.ph.i35.i ]
  %.sroa.0.118.i.i = phi i64 [ %i.fz, %.lr.ph.i15.i ], [ 0, %.lr.ph.i35.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.0.118.i.i
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.fi, align 1 ; 2 uses
  %i.fj = xor i64 %.sroa.07.0.copyload.i.i, %i.fh ; 3 uses
  %i.fk = add i64 %i.fg, %i.ff                    ; 3 uses
  %i.fl = add i64 %i.fj, %i.fe                    ; 2 uses
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 13)
  %i.fn = xor i64 %i.fk, %i.fm                    ; 3 uses
  %i.fo = tail call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 16)
  %i.fp = xor i64 %i.fl, %i.fo                    ; 3 uses
  %i.fq = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 32)
  %i.fr = add i64 %i.fl, %i.fn                    ; 3 uses
  %i.fs = add i64 %i.fp, %i.fq                    ; 2 uses
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 17)
  %i.fu = xor i64 %i.fr, %i.ft                    ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser:bb.a
  %i.gf = add i64 %.sroa.0.4.i, %.sroa.22.4.i     ; 3 uses
  %i.gg = add i64 %i.ge, %.sroa.12.4.i            ; 2 uses
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i, i64 %.sroa.22.4.i, i64 13)
  %i.gi = xor i64 %i.gf, %i.gh                    ; 3 uses
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 16)
  %i.gk = xor i64 %i.gj, %i.gg                    ; 3 uses
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 32)
  %i.gm = add i64 %i.gg, %i.gi                    ; 3 uses
  %i.gn = add i64 %i.gk, %i.gl                    ; 2 uses
  %i.go = tail call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 17)
  %i.gp = xor i64 %i.gm, %i.go                    ; 3 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 21)
  %i.gr = xor i64 %i.gq, %i.gn                    ; 3 uses
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 32)
  %i.gt = xor i64 %i.gn, %i.gd
  %i.gu = xor i64 %i.gs, 255
  %i.gv = add i64 %i.gt, %i.gp                    ; 3 uses
  %i.gw = add i64 %i.gr, %i.gu                    ; 2 uses
  %i.gx = tail call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 13)
  %i.gy = xor i64 %i.gv, %i.gx                    ; 3 uses
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 16)
  %i.ha = xor i64 %i.gz, %i.gw                    ; 3 uses
  %i.hb = tail call i64 @llvm.fshl.i64(i64 %i.gv, i64 %i.gv, i64 32)
  %i.hc = add i64 %i.gy, %i.gw                    ; 3 uses
  %i.hd = add i64 %i.ha, %i.hb                    ; 2 uses
  %i.he = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 17)
  %i.hf = xor i64 %i.hc, %i.he                    ; 3 uses
  %i.hg = tail call i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 21)
  %i.hh = xor i64 %i.hg, %i.hd                    ; 3 uses
  %i.hi = tail call i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 32)
  %i.hj = add i64 %i.hf, %i.hd                    ; 3 uses
  %i.hk = add i64 %i.hh, %i.hi                    ; 2 uses
  %i.hl = tail call i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 13)
  %i.hm = xor i64 %i.hl, %i.hj                    ; 3 uses
  %i.hn = tail call i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 16)
  %i.ho = xor i64 %i.hn, %i.hk                    ; 3 uses
  %i.hp = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 32)
  %i.hq = add i64 %i.hm, %i.hk                    ; 3 uses
  %i.hr = add i64 %i.ho, %i.hp                    ; 2 uses
  %i.hs = tail call i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 17)
  %i.ht = xor i64 %i.hs, %i.hq                    ; 3 uses
  %i.hu = tail call i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 21)
  %i.hv = xor i64 %i.hu, %i.hr                    ; 3 uses
  %i.hw = tail call i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 32)
  %i.hx = add i64 %i.ht, %i.hr
  %i.hy = add i64 %i.hv, %i.hw                    ; 2 uses
  %i.hz = tail call i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 13)
  %i.ia = xor i64 %i.hz, %i.hx                    ; 3 uses
  %i.ib = tail call i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 16)
  %i.ic = xor i64 %i.ib, %i.hy                    ; 2 uses
  %i.id = add i64 %i.ia, %i.hy                    ; 3 uses
  %i.ie = tail call i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 17)
  %i.if = tail call i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 21)
  %i.ig = tail call i64 @llvm.fshl.i64(i64 %i.id, i64 %i.id, i64 32)
  %i.ih = xor i64 %i.if, %i.ie
  %i.ii = xor i64 %i.ih, %i.ig
  %i.ij = xor i64 %i.ii, %i.id                    ; 3 uses
  %i.ik = load i64, ptr %i.e, align 8             ; 6 uses
  %.sroa.0.016.i.i = and i64 %i.ij, %i.ik         ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.016.i.i
  %.sroa.0.0.copyload.i1417.i.i = load <16 x i8>, ptr %i.il, align 1, !noalias !8
  %i.im = icmp slt <16 x i8> %.sroa.0.0.copyload.i1417.i.i, zeroinitializer
  %i.in = bitcast <16 x i1> %i.im to i16          ; 2 uses
  %.not.i18.i.i = icmp eq i16 %i.in, 0
  br i1 %.not.i18.i.i, label %.lr.ph.i11.i, label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %.lr.ph.i11.i, %bb.q
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.016.i.i, %bb.q ], [ %.sroa.0.0.i.i12, %.lr.ph.i11.i ]
  %.lcssa.i.i = phi i16 [ %i.in, %bb.q ], [ %i.jd, %.lr.ph.i11.i ]
  %i.io = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ip = zext nneg i16 %i.io to i64
  %i.iq = add i64 %.sroa.0.0.lcssa.i.i, %i.ip
  %i.ir = and i64 %i.iq, %i.ik                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = icmp sgt i8 %i.it, -1
  br i1 %i.iu, label %bb.r, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.r:                                             ; preds = %._crit_edge.i10.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.di, align 16
  %i.iv = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.iw = bitcast <16 x i1> %i.iv to i16          ; 2 uses
  %.not.i5.i.i = icmp eq i16 %i.iw, 0
  %i.ix = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.iw, i1 true)
  %i.iy = zext nneg i16 %i.ix to i64
  %.sroa.3.0.i6.i.i = select i1 %.not.i5.i.i, i64 undef, i64 %i.iy
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

.lr.ph.i11.i:                                     ; preds = %bb.q, %.lr.ph.i11.i
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i11.i ], [ %.sroa.0.016.i.i, %bb.q ]
  %.sroa.5.019.i.i = phi i64 [ %i.iz, %.lr.ph.i11.i ], [ 0, %bb.q ]
  %i.iz = add i64 %.sroa.5.019.i.i, 16            ; 2 uses
  %i.ja = add i64 %i.iz, %.sroa.0.020.i.i
  %.sroa.0.0.i.i12 = and i64 %i.ja, %i.ik         ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i14.i.i = load <16 x i8>, ptr %i.jb, align 1, !noalias !8
  %i.jc = icmp slt <16 x i8> %.sroa.0.0.copyload.i14.i.i, zeroinitializer
  %i.jd = bitcast <16 x i1> %i.jc to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.jd, 0
  br i1 %.not.i.i.i, label %.lr.ph.i11.i, label %._crit_edge.i10.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.r, %._crit_edge.i10.i
  %.sroa.0.0.i4.i.i = phi i64 [ %.sroa.3.0.i6.i.i, %bb.r ], [ %i.ir, %._crit_edge.i10.i ] ; 4 uses
  %i.je = sub i64 %.sroa.0.051.i, %.sroa.0.016.i.i
  %i.jf = sub i64 %.sroa.0.0.i4.i.i, %.sroa.0.016.i.i
  %i.jg = xor i64 %i.jf, %i.je
  %.unshifted.i = and i64 %i.jg, %i.ik
  %i.jh = icmp ult i64 %.unshifted.i, 16
  br i1 %i.jh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.ji = shl i64 %.sroa.0.0.i4.i.i, 5
  %i.jj = sub nuw nsw i64 -32, %i.ji
  %i.jk = getelementptr inbounds i8, ptr %i.di, i64 %i.jj ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.0.i4.i.i ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = lshr i64 %i.ij, 57
  %i.jo = trunc nuw nsw i64 %i.jn to i8           ; 2 uses
  %i.jp = add i64 %.sroa.0.0.i4.i.i, -16
  %i.jq = and i64 %i.jp, %i.ik
  store i8 %i.jo, ptr %i.jl, align 1
  %i.jr = load ptr, ptr %0, align 8
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.jq
  %i.jt = getelementptr i8, ptr %i.js, i64 16
  store i8 %i.jo, ptr %i.jt, align 1
  %i.ju = icmp eq i8 %i.jm, -1
  br i1 %i.ju, label %bb.u, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.dd, align 1
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.jk, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.dd, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.jk, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.df, align 1
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.jv, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.df, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.jv, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.dg, align 1
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.jw, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.dg, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.jw, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.3.i = load i64, ptr %i.dh, align 1
  %.sroa.02.0.copyload.i.i.i.3.i = load i64, ptr %i.jx, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.3.i, ptr %i.dh, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.3.i, ptr %i.jx, align 1
  %.pre.i = load ptr, ptr %0, align 8
  br label %.lr.ph.i35.i

bb.t:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.jy = lshr i64 %i.ij, 57
  %i.jz = trunc nuw nsw i64 %i.jy to i8           ; 2 uses
  %i.ka = add i64 %.sroa.0.051.i, -16
  %i.kb = and i64 %i.ik, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.051.i
  store i8 %i.jz, ptr %i.kc, align 1
  %i.kd = load ptr, ptr %0, align 8
  %i.ke = getelementptr i8, ptr %i.kd, i64 %i.kb
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  store i8 %i.jz, ptr %i.kf, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.kg = add i64 %.sroa.0.051.i, -16
  %i.kh = load i64, ptr %i.e, align 8
  %i.ki = and i64 %i.kh, %i.kg
  %i.kj = load ptr, ptr %0, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.sroa.0.051.i
  store i8 -1, ptr %i.kk, align 1
  %i.kl = load ptr, ptr %0, align 8
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.ki
  %i.kn = getelementptr i8, ptr %i.km, i64 16
  store i8 -1, ptr %i.kn, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jk, ptr noundef nonnull align 1 dereferenceable(32) %i.dd, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i9
  %exitcond.not.i = icmp eq i64 %.sroa.0.051.i, %i.cx
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %.lr.ph.i9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.v
  %.pre65.i = load i64, ptr %i.e, align 8
  %.pre65.i.fr = freeze i64 %.pre65.i             ; 3 uses
  %.pre66.i = add i64 %.pre65.i.fr, 1
  %i.ko = lshr i64 %.pre66.i, 3
  %i.kp = mul nuw i64 %i.ko, 7
  %i.kq = icmp ult i64 %.pre65.i.fr, 8
  %spec.select = select i1 %i.kq, i64 %.pre65.i.fr, i64 %i.kp
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread: ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.kr = phi i64 [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ], [ %spec.select, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %i.ks = load i64, ptr %i.a, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ku = sub i64 %i.kr, %i.ks
  store i64 %i.ku, ptr %i.kt, align 8
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.c, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %.sroa.3.0.i.i, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %.sroa.0.0.i.i, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %i.kv = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.kw = insertvalue { i64, i64 } %i.kv, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.kw
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB1u_11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1, ptr nofree readonly align 8 captures(none) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %0, i64 1, ptr readonly align 8 %3, i1 zeroext true) #37 ; 0 uses
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %i.e = lshr i64 %1, 57
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = load ptr, ptr %0, align 8                ; 4 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.sroa.6.0.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %i.ao, %bb.f ]
  %.pn.i = phi i64 [ %1, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %i.ap, %bb.f ]
  %.sroa.4.0.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %.sroa.4.123.i, %bb.f ]
  %.sroa.04.0.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %.sroa.04.125.i, %bb.f ]
  %.sroa.0.020.i = and i64 %.pn.i, %i.h           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.020.i
  %.sroa.0.0.copyload.i30.i = load <16 x i8>, ptr %i.m, align 1, !noalias !11 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i, %i.k
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not33.i = icmp eq i16 %i.o, 0
  br i1 %.not33.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = load i64, ptr %i.l, align 8              ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i, %.lr.ph.i
  %.sroa.01.034.i = phi i16 [ %i.o, %.lr.ph.i ], [ %i.t, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.034.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i16 %.sroa.01.034.i, -1
  %i.t = and i16 %i.s, %.sroa.01.034.i            ; 2 uses
  %i.u = add i64 %.sroa.0.020.i, %i.r
  %i.v = and i64 %i.u, %i.h
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.p, %i.z
  br i1 %i.aa, label %.split.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i

.split.i:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %2, align 8
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.ad, ptr readonly %i.ac, i64 %i.p)
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %.loopexit, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i: ; preds = %.split.i, %bb.d
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i, label %bb.d

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i, %bb.c
  %.not11.i = icmp eq i64 %.sroa.04.0.i, 1
  br i1 %.not11.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i
  %i.af = icmp slt <16 x i8> %.sroa.0.0.copyload.i30.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i, label %bb.f, label %.thread27.i

.thread27.i:                                      ; preds = %bb.e
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.0.020.i, %i.ai
  %i.ak = and i64 %i.aj, %i.h
  br label %.thread.i

.thread.i:                                        ; preds = %.thread27.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i
  %.sroa.4.124.i = phi i64 [ %i.ak, %.thread27.i ], [ %.sroa.4.0.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i ] ; 3 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread.i, %bb.e
  %.sroa.04.125.i = phi i64 [ 1, %.thread.i ], [ 0, %bb.e ]
  %.sroa.4.123.i = phi i64 [ %.sroa.4.124.i, %.thread.i ], [ undef, %bb.e ]
  %i.ao = add i64 %.sroa.6.0.i, 16                ; 2 uses
  %i.ap = add i64 %.sroa.0.020.i, %i.ao
  br label %bb.c

bb.g:                                             ; preds = %.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.4.124.i
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val2.i.i = load <16 x i8>, ptr %i.i, align 16
  %i.at = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i21.i = icmp eq i16 %i.au, 0
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %.sroa.3.0.i22.i = select i1 %.not.i21.i, i64 undef, i64 %i.aw
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.3.0.i.ph = phi i64 [ %.sroa.3.0.i22.i, %bb.h ], [ %.sroa.4.124.i, %bb.g ]
  %i.ax = inttoptr i64 %.sroa.3.0.i.ph to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %.split.i, %bb.i
  %.sroa.3.0 = phi ptr [ %i.ax, %bb.i ], [ %i.x, %.split.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %.split.i ]
  %i.ay = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.az = insertvalue { i64, ptr } %i.ay, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.az
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %0, i64 %1, ptr align 8 %2, i1 zeroext true) #37 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTRShB1a_EECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRShB1d_ENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.b, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread: ; preds = %bb.d, %bb.b, %bb.c
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 undef
  br label %bb.e

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8
  %i.u = sub nsw i64 0, %i.l
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = icmp eq i64 %i.n, 0
  br i1 %i.w, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.x = phi ptr [ %i.s, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %i.v, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %.sroa.0.05 = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %3, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %.sroa.6.04 = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %i.n, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.x, i64 %.sroa.6.04, i64 %.sroa.0.05) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.e, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %4) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = add i64 %3, -1
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 0, %3
  %i.h = and i64 %i.e, %i.g                       ; 3 uses
  %i.i = add i64 %4, 16
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = sub i64 -9223372036854775808, %3
  %i.m = icmp ugt i64 %i.j, %i.l
  %.not = icmp eq i64 %3, 0
  %i.n = or i1 %.not, %i.m
  %or.cond29 = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond29, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %3 to ptr
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.q = tail call ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 %i.j, i64 %3) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.r, label %bb.g, label %bb.h

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.x = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.j) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.h
  %i.ad = add i64 %4, -1                          ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 8
  %i.af = lshr i64 %4, 3
  %i.ag = mul nuw i64 %i.af, 7
  %.sroa.07.0 = select i1 %i.ae, i64 %i.ad, i64 %i.ag
  store ptr %i.ac, ptr %0, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %4, 15
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %2, 2
  %.inv.i = icmp ugt i64 %2, 3
  %..i = select i1 %.inv.i, i64 3, i64 7
  %i.e = tail call i64 @llvm.umax.i64(i64 range(i64 1, 0) %4, i64 %..i)
  %.sroa.0.0.sroa.speculated.i.i = select i1 %i.d, i64 14, i64 %i.e ; 2 uses
  %i.f = icmp samesign ult i64 %.sroa.0.0.sroa.speculated.i.i, 4
  %i.g = and i64 %.sroa.0.0.sroa.speculated.i.i, 8
  %.16.i = add nuw nsw i64 %i.g, 8
  %.sroa.04.0.i = select i1 %i.f, i64 4, i64 %.16.i
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = shl nuw i64 %4, 3
  %i.i = udiv i64 %i.h, 7
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %i.m = add nuw nsw i64 %i.l, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.4.0.i.ph = phi i64 [ %i.m, %bb.f ], [ %.sroa.04.0.i, %bb.e ] ; 5 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = add i64 %3, -1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = sub i64 0, %3
  %i.u = and i64 %i.r, %i.t                       ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.w = add i64 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.u
  %i.y = sub i64 -9223372036854775808, %3
  %i.z = icmp ugt i64 %i.w, %i.y
  %.not.i = icmp eq i64 %3, 0
  %i.aa = or i1 %.not.i, %i.z
  %or.cond29.i = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond29.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %6

6:                                                ; preds = %bb.i
  %7 = icmp eq i64 %i.w, 0
  br i1 %7, label %8, label %bb.j

8:                                                ; preds = %6
  %9 = inttoptr i64 %3 to ptr
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.j:                                             ; preds = %6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.ab = tail call ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 %i.w, i64 %3) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.j, %8
  %.sroa.0.0.i.i.i = phi ptr [ %9, %8 ], [ %i.ab, %bb.j ] ; 2 uses
  %10 = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %10, label %bb.k, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ac = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5)
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.ad = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.w)
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.ae = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread: ; preds = %bb.k, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i
  %.pn = phi { i64, i64 } [ %i.ac, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ %i.ad, %bb.k ] ; 2 uses
  %.sroa.9.030 = extractvalue { i64, i64 } %.pn, 1
  %.sroa.4.031 = extractvalue { i64, i64 } %.pn, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.031, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.030, ptr %i.ak, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.al = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.am = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.an = lshr i64 %.sroa.4.0.i.ph, 3
  %i.ao = mul nuw nsw i64 %i.an, 7
  %.sroa.07.0.i = select i1 %i.al, i64 %i.am, i64 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i8 -1, i64 %i.v, i1 false)
  store ptr %i.ap, ptr %0, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %.sroa.317.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, %bb.b, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i32 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RINvNtCs3oUPovFnLWP_4core10intrinsics23is_val_statically_knownbECshWvooqPLMQS_27fish_gettext_mo_file_parser(i1 zeroext %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
.lr.ph.i.i.i:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 1
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %0, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.1 = load i64, ptr %i.a, align 1
  %.sroa.02.0.copyload.i.i.i.i.1 = load i64, ptr %i.b, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.i.1, ptr %i.a, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.2 = load i64, ptr %i.c, align 1
  %.sroa.02.0.copyload.i.i.i.i.2 = load i64, ptr %i.d, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.i.2, ptr %i.c, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.3 = load i64, ptr %i.e, align 1
  %.sroa.02.0.copyload.i.i.i.i.3 = load i64, ptr %i.f, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.i.3, ptr %i.e, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.f, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj1_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 1
  %.sroa.02.0.copyload = load i8, ptr %1, align 1
  store i8 %.sroa.02.0.copyload, ptr %0, align 1
  store i8 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj2_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 1
  %.sroa.02.0.copyload = load i16, ptr %1, align 1
  store i16 %.sroa.02.0.copyload, ptr %0, align 1
  store i16 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj4_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 1
  %.sroa.02.0.copyload = load i32, ptr %1, align 1
  store i32 %.sroa.02.0.copyload, ptr %0, align 1
  store i32 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 1
  %.sroa.02.0.copyload = load i64, ptr %1, align 1
  store i64 %.sroa.02.0.copyload, ptr %0, align 1
  store i64 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr19swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2                    ; 2 uses
  %min.iters.check = icmp eq i64 %2, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.b
  br label %.lr.ph.i.i

vector.memcheck:                                  ; preds = %bb.b
  %i.b = shl i64 %2, 5                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep2 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep2
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.c, align 1, !alias.scope !14, !noalias !17
  %wide.load3 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !14, !noalias !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load4 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !17
  %wide.load5 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !17
  store <2 x i64> %wide.load4, ptr %i.c, align 1, !alias.scope !14, !noalias !17
  store <2 x i64> %wide.load5, ptr %i.e, align 1, !alias.scope !14, !noalias !17
  store <2 x i64> %wide.load, ptr %i.d, align 1, !alias.scope !17
  store <2 x i64> %wide.load3, ptr %i.f, align 1, !alias.scope !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %i.a
  br i1 %i.g, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %vector.body, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i ] ; 4 uses
  %i.h = or disjoint i64 %.sroa.0.03.i.i, 1       ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 1
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.j, align 1
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.i, align 1
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %.sroa.0.03.i.i, 2       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.l, align 1
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.m, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.l, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.m, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not.i.i.1, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %.lr.ph.i.i, !llvm.loop !22

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %vector.body, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
    i64 1, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = icmp uge ptr %i.b, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.g, 1095216660480
  %.not.i.i.i.i = or i1 %i.f, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.b, i64 -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 16)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 16)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = add i64 %i.c, 1
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = add i64 %i.h, -1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 0, %i.h
  %i.q = and i64 %i.n, %i.p                       ; 3 uses
  %i.r = add i64 %i.c, 17
  %i.s = add i64 %i.r, %i.q                       ; 4 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = sub i64 -9223372036854775808, %i.h
  %i.v = icmp ugt i64 %i.s, %i.u
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 undef
  br label %bb.e

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = sub nsw i64 0, %i.q
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = icmp eq i64 %i.s, 0
  br i1 %i.ab, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i
  %i.ac = phi ptr [ %i.x, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i ], [ %i.aa, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i ]
  %.sroa.0.05.i.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i ]
  %.sroa.6.04.i.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i ], [ %i.s, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.ac, i64 %.sroa.6.04.i.i, i64 %.sroa.0.05.i.i) #36
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not8.i.i = icmp eq i64 %i.d, -1
  br i1 %.not8.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.c ] ; 5 uses
  %.neg.i.i = xor i64 %.sroa.0.07.i.i, -1
  %i.f = add nuw i64 %.sroa.0.07.i.i, 1
  %i.g = load ptr, ptr %0, align 8                ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.07.i.i ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, -128
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.07.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.l = add i64 %.sroa.0.07.i.i, -16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, %i.l
  store i8 -1, ptr %i.i, align 1
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store i8 -1, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8
  %i.u = load i64, ptr %i.e, align 8
  %i.v = load ptr, ptr %i.t, align 8
  %.neg6.i.i = mul i64 %i.u, %.neg.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.neg6.i.i
  tail call void %i.s(ptr %i.w), !inline_history !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8
  br label %bb.c

_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %0, align 8           ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre9.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.pre9.i.fr.i = freeze i64 %.pre9.i.i           ; 3 uses
  %.pre10.i.i = add i64 %.pre9.i.fr.i, 1
  %i.ab = lshr i64 %.pre10.i.i, 3
  %i.ac = mul nuw i64 %i.ab, 7
  %i.ad = icmp ult i64 %.pre9.i.fr.i, 8
  %spec.select.i = select i1 %i.ad, i64 %.pre9.i.fr.i, i64 %i.ac
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.ae = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ] ; 2 uses
  %i.af = phi i64 [ 0, %bb.a ], [ %spec.select.i, %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = sub i64 %i.af, %i.ah
  store i64 %i.aj, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapRShB1g_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTRShB1i_EEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 undef
  br label %bb.d

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i: ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = icmp eq i64 %i.h, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTRShB1i_EEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i
  %i.q = phi ptr [ %i.l, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i ], [ %i.o, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ]
  %.sroa.0.05.i.i.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ]
  %.sroa.6.04.i.i.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.q, i64 %.sroa.6.04.i.i.i, i64 %.sroa.0.05.i.i.i) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTRShB1i_EEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTRShB1i_EEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTRShB1i_EEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 undef
  br label %bb.d

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i: ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = icmp eq i64 %i.h, 0
  br i1 %i.p, label %_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i
  %i.q = phi ptr [ %i.l, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i ], [ %i.o, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i ]
  %.sroa.0.05.i.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i ]
  %.sroa.6.04.i.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.q, i64 %.sroa.6.04.i.i, i64 %.sroa.0.05.i.i) #36
  br label %_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io5error9ErrorDataNtBE_11CustomOwnerEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %switch = icmp ult i8 %i.a, 3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapRShB1w_EECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapRShB1g_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 undef
  br label %bb.d

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = icmp eq i64 %i.h, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapRShB1g_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i
  %i.q = phi ptr [ %i.l, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i ], [ %i.o, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i ]
  %.sroa.0.05.i.i.i.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i ]
  %.sroa.6.04.i.i.i.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i.i.i.i ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.q, i64 %.sroa.6.04.i.i.i.i, i64 %.sroa.0.05.i.i.i.i) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapRShB1g_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapRShB1g_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
    i64 1, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = icmp uge ptr %i.c, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %.not3.i.i.i.i.i = icmp eq i64 %i.h, 1095216660480
  %.not.i.i.i.i.i = or i1 %i.g, %.not3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.e, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error11CustomOwnerECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val.i = load ptr, ptr %0, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i.i = or i1 %i.d, %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val.i, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB5_4ReprNtNtNtBb_3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
    i64 3, label %bb.b
    i64 0, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB5_4ReprNtNtNtBb_3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i = or i1 %i.d, %.not3.i.i
  br i1 %.not.i.i, label %bb.c, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB5_4ReprNtNtNtBb_3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB5_4ReprNtNtNtBb_3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB5_4ReprNtNtNtBb_3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr nonnull %i.b, ptr nonnull align 8 @4, ptr %1, ptr %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.b) #39
          to label %bb.m unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8              ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
    i64 1, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp uge ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %.not3.i.i.i.i.i = icmp eq i64 %i.j, 1095216660480
  %.not.i.i.i.i.i = or i1 %i.i, %.not3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %i.f, i64 -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.i, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @5, ptr nonnull inttoptr (i64 173 to ptr), ptr nonnull align 8 @7) #40
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.m:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable4 [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.a, 32
  %i.g = icmp uge ptr %1, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i = trunc i64 %i.f to i8       ; 2 uses
  %.not3 = icmp eq i8 %switch.idx.cast.i, -1
  %.not = or i1 %i.g, %.not3
  br i1 %.not, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.h, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %switch.idx.cast.i, ptr %i.k, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e
  %.sink = phi i8 [ 0, %bb.b ], [ 2, %bb.d ], [ 1, %bb.f ], [ 3, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable4 [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.a, 32
  %i.g = icmp uge ptr %1, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i = trunc i64 %i.f to i8       ; 2 uses
  %.not3 = icmp eq i8 %switch.idx.cast.i, -1
  %.not = or i1 %i.g, %.not3
  br i1 %.not, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.h, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %switch.idx.cast.i, ptr %i.k, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e
  %.sink = phi i8 [ 0, %bb.b ], [ 2, %bb.d ], [ 1, %bb.f ], [ 3, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2) unnamed_addr #9 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep4 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep4
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !24, !noalias !27
  %wide.load5 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !24, !noalias !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load6 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !27
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !27
  store <2 x i64> %wide.load6, ptr %i.b, align 1, !alias.scope !24, !noalias !27
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !24, !noalias !27
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !27
  store <2 x i64> %wide.load5, ptr %i.e, align 1, !alias.scope !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.0.03.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.g = or disjoint i64 %.sroa.0.03.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.ph ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %.sroa.0.03.unr = phi i64 [ %.sroa.0.03.ph, %.lr.ph.preheader8 ], [ %i.g, %.lr.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.0.03 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.0.03.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.03, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1
  %i.n = add nuw i64 %.sroa.0.03, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvXNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyzNtB3_14DestroyedState13register_dtorINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvXs2_NtNtCs3oUPovFnLWP_4core4hash5implsShNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %2, ptr nonnull readonly %i.a, i64 8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %2, ptr readonly %0, i64 %1) #35
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRRShNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %1, ptr nonnull readonly %i.a, i64 8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %1, ptr readonly %i.c, i64 %i.e) #35
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRShNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %1, ptr nonnull readonly %i.a, i64 8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %1, ptr readonly %i.b, i64 %i.d) #35
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvXs7_NtNtCs3oUPovFnLWP_4core4hash5implshNtB8_4Hash10hash_sliceNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %2, ptr readonly %0, i64 %1) #35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRShECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 10 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !31
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.39.0..sroa_idx.i, align 16, !alias.scope !31
  store <2 x i64> %i.c, ptr %.sroa.511.0..sroa_idx.i, align 16, !alias.scope !31
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.713.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !31
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.b, ptr nonnull readonly %i.a, i64 8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.b, ptr readonly %i.h, i64 %i.j) #35
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8
  %.sroa.15.0.copyload.i.i = load i64, ptr %.sroa.39.0..sroa_idx.i, align 16 ; 3 uses
  %.sroa.20.0.copyload.i.i = load i64, ptr %.sroa.410.0..sroa_idx.i, align 8
  %i.k = load i64, ptr %.sroa.713.0..sroa_idx.i, align 16
  %i.l = shl i64 %i.k, 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load i64, ptr %i.m, align 8
  %i.o = or i64 %i.l, %i.n                        ; 2 uses
  %i.p = xor i64 %i.o, %.sroa.20.0.copyload.i.i   ; 3 uses
  %i.q = add i64 %.sroa.15.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.r = add i64 %i.p, %.sroa.8.0.copyload.i.i    ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %.sroa.15.0.copyload.i.i, i64 %.sroa.15.0.copyload.i.i, i64 13)
  %i.t = xor i64 %i.s, %i.q                       ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 16)
  %i.v = xor i64 %i.u, %i.r                       ; 3 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 32)
  %i.x = add i64 %i.r, %i.t                       ; 3 uses
  %i.y = add i64 %i.v, %i.w                       ; 2 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 17)
  %i.aa = xor i64 %i.x, %i.z                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 21)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = xor i64 %i.y, %i.o
  %i.af = xor i64 %i.ad, 255
  %i.ag = add i64 %i.ae, %i.aa                    ; 3 uses
  %i.ah = add i64 %i.ac, %i.af                    ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 13)
  %i.aj = xor i64 %i.ag, %i.ai                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 16)
  %i.al = xor i64 %i.ak, %i.ah                    ; 3 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  %i.an = add i64 %i.aj, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.al, %i.am                    ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 17)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 21)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.ax = xor i64 %i.aw, %i.au                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 16)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 13)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 16)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = add i64 %i.bl, %i.bj                    ; 3 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 17)
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 21)
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 32)
  %i.bs = xor i64 %i.bq, %i.bp
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = xor i64 %i.bt, %i.bo
  ret i64 %i.bu
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = tail call i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRShECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %i.f, ptr nonnull readonly align 8 %i.e)
  ret i64 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyRShBO_BO_E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.g, align 8
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.o, ptr readonly %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyRShBO_BO_E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyRShBO_BO_E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.p, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = add i64 %i.b, 1
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = add i64 %i.g, -1
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 0, %i.g
  %i.p = and i64 %i.m, %i.o                       ; 3 uses
  %i.q = add i64 %i.b, 17
  %i.r = add i64 %i.q, %i.p                       ; 4 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = sub i64 -9223372036854775808, %i.g
  %i.u = icmp ugt i64 %i.r, %i.t
  %or.cond = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread: ; preds = %bb.d, %bb.b, %bb.c
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 undef
  br label %bb.e

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.d
  %i.x = load ptr, ptr %1, align 8
  %i.y = sub nsw i64 0, %i.p
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.ab = phi ptr [ %i.w, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %i.z, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %.sroa.0.05 = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %i.g, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %.sroa.6.04 = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread ], [ %i.r, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.ab, i64 %.sroa.6.04, i64 %.sroa.0.05) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.e, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherRShBL_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRShECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %i.a, ptr align 8 %1)
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyRShBO_BO_E0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXCskt5MLIAl8nl_9hashbrownRShINtB2_10EquivalentBq_E10equivalentCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.h, ptr readonly %i.g, i64 %i.c)
  %i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXCskt5MLIAl8nl_9hashbrownRShINtB2_10EquivalentBq_E10equivalentCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXCskt5MLIAl8nl_9hashbrownRShINtB2_10EquivalentBq_E10equivalentCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define nonnull ptr @_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone captures(none) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.a, ptr align 8 %1) ; 0 uses
  br label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNCNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomState3new0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.a, 1
  store i64 %i.d, ptr %0, align 8
  %i.e = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %i.c, 1
  ret { i64, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNCNvMs0_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB7_4Repr4data0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #13 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not8 = icmp eq i64 %i.c, -1
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre10 = add i64 %.pre9, 1
  %i.e = lshr i64 %.pre10, 3
  %i.f = mul nuw i64 %i.e, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %i.f, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.g = phi i64 [ %.pre9, %._crit_edge.loopexit ], [ -1, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = icmp ult i64 %i.g, 8
  %.sroa.03.0 = select i1 %i.i, i64 %i.g, i64 %.pre-phi
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = sub i64 %.sroa.03.0, %i.k
  store i64 %i.m, ptr %i.l, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.07 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.c ] ; 5 uses
  %.neg = xor i64 %.sroa.0.07, -1
  %i.n = add nuw i64 %.sroa.0.07, 1
  %i.o = load ptr, ptr %1, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.07 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, -128
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %exitcond.not = icmp eq i64 %.sroa.0.07, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.t = add i64 %.sroa.0.07, -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, %i.t
  store i8 -1, ptr %i.q, align 1
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store i8 -1, ptr %i.z, align 1
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %.neg6 = mul i64 %i.ac, %.neg
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6
  tail call void %i.aa(ptr %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RNCNvXs1_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB7_4ReprNtNtNtBd_3ops4drop4Drop4drop0CshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #13 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser11read_be_u32(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp ult i64 %1, 4
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %1, ptr nonnull align 8 @14) #34
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a
  %.sroa.03.0.copyload.i.i = load i32, ptr %0, align 1
  %i.a = tail call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser11read_le_u32(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp ult i64 %1, 4
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %1, ptr nonnull align 8 @15) #34
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a
  %.sroa.03.0.copyload.i.i = load i32, ptr %0, align 1
  ret i32 %.sroa.03.0.copyload.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [32 x i8], align 8          ; 4 uses
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = icmp ult i64 %2, 28
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1
  switch i8 %i.g, label %bb.j [
    i8 -107, label %bb.c
    i8 -34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 4
  br i1 %i.j, label %bb.e, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 18
  br i1 %i.m, label %bb.g, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 18
  br i1 %i.p, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, -34
  br i1 %i.s, label %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit, label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 4
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, -107
  br i1 %i.y, label %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit, label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.z = tail call ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 21, ptr nonnull @18, i64 33) #37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ab = tail call ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 21, ptr nonnull @22, i64 97) #37
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit: ; preds = %bb.h, %bb.f
  %.sroa.4.0.i.ph = phi ptr [ @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser11read_le_u32, %bb.h ], [ @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser11read_be_u32, %bb.f ] ; 6 uses
  %i.ad = add i64 %2, -4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = tail call i32 %.sroa.4.0.i.ph(ptr nonnull %i.ae, i64 %i.ad), !inline_history !34
  %switch.i = icmp ult i32 %i.af, 131072
  br i1 %switch.i, label %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit14, label %_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser30check_if_revision_is_supported.exit

_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser30check_if_revision_is_supported.exit: ; preds = %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit
  %i.ag = tail call ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 21, ptr nonnull @21, i64 29) #37 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit14, label %bb.k

bb.k:                                             ; preds = %_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser30check_if_revision_is_supported.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit14: ; preds = %_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser30check_if_revision_is_supported.exit, %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit
  %i.ai = add i64 %2, -8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = tail call i32 %.sroa.4.0.i.ph(ptr nonnull %i.aj, i64 %i.ai), !inline_history !34 ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 4 uses
  %i.am = add i64 %2, -12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = tail call i32 %.sroa.4.0.i.ph(ptr nonnull %i.an, i64 %i.am), !inline_history !34
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add i64 %2, -16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = tail call i32 %.sroa.4.0.i.ph(ptr nonnull %i.ar, i64 %i.aq), !inline_history !34
  call fastcc void @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings(ptr noalias align 8 %i.d, ptr nonnull %1, i64 %2, i64 %i.al, i64 %i.ap, ptr nonnull %.sroa.4.0.i.ph)
  %i.at = load i64, ptr %i.d, align 8             ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit14
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.m:                                             ; preds = %_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_mo_file0B3_.exit14
  %i.ay = zext i32 %i.as to i64
  %.sroa.4.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload48 = load ptr, ptr %.sroa.4.0..sroa_idx47, align 8
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload50 = load i64, ptr %.sroa.6.0..sroa_idx49, align 8
  store i64 %i.at, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload48, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.6.0.copyload50, ptr %.sroa.3.0..sroa_idx, align 8
  invoke fastcc void @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings(ptr noalias align 8 %i.b, ptr nonnull %1, i64 %2, i64 %i.al, i64 %i.ay, ptr nonnull %.sroa.4.0.i.ph)
          to label %bb.o unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit22: ; preds = %bb.q, %bb.n
  %.pn10 = phi { ptr, i32 } [ %i.az, %bb.n ], [ %.pn, %bb.q ]
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.e, i64 8, i64 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit unwind label %bb.x

bb.n:                                             ; preds = %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit22

bb.o:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  br i1 %i.bb, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.657.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.657.0.copyload59 = load i64, ptr %.sroa.657.0..sroa_idx58, align 8
  store i64 %i.ba, ptr %i.c, align 8
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bd, ptr %.sroa.261.0..sroa_idx, align 8
  %.sroa.362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.657.0.copyload59, ptr %.sroa.362.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.be = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge.i, label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge.i: ; preds = %bb.p
  %.pre.i = load i64, ptr %i.be, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre1.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.p
  %i.bi = invoke { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bk, ptr %i.bl, align 8
  store i8 1, ptr %i.bf, align 8
  br label %_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge.i
  %i.bm = phi i64 [ %.pre1.i, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge.i ], [ %i.bk, %.noexc ]
  %i.bn = phi i64 [ %.pre.i, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge.i ], [ %i.bj, %.noexc ] ; 2 uses
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.be, align 8
  invoke void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull sret([32 x i8]) align 8 %.sroa.0.i, ptr nonnull poison, i64 32, i64 16, i64 %i.al, i1 zeroext true) #35
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.s ], [ %i.bp, %bb.r ]
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c, i64 8, i64 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit22 unwind label %bb.x

bb.r:                                             ; preds = %_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapRShB1w_EECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.a) #39
  br label %bb.q

bb.t:                                             ; preds = %_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bn, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.bm, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %exitcond.not122 = icmp eq i32 %i.ak, 0
  br i1 %exitcond.not122, label %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %.lr.ph

_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.w
  %exitcond.not = icmp eq i64 %i.bq, %i.al
  br i1 %exitcond.not, label %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.sroa.063.0123 = phi i64 [ %i.bq, %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ 0, %bb.t ] ; 6 uses
  %i.bq = add nuw nsw i64 %.sroa.063.0123, 1      ; 2 uses
  %i.br = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.bs = icmp ult i64 %.sroa.063.0123, %i.br
  br i1 %i.bs, label %bb.v, label %.invoke

.invoke:                                          ; preds = %bb.v, %.lr.ph
  %i.bt = phi i64 [ %i.br, %.lr.ph ], [ %i.bv, %bb.v ]
  %i.bu = phi ptr [ @16, %.lr.ph ], [ @17, %bb.v ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %.sroa.063.0123, i64 %i.bt, ptr nonnull align 8 %i.bu) #34
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge: ; preds = %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c, i64 8, i64 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit25 unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit25: ; preds = %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge
  call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.e, i64 8, i64 16)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit25, %bb.l, %bb.k, %bb.j, %bb.i
  ret void

bb.v:                                             ; preds = %.lr.ph
  %i.bv = load i64, ptr %.sroa.362.0..sroa_idx, align 8 ; 2 uses
  %i.bw = icmp ult i64 %.sroa.063.0123, %i.bv
  br i1 %i.bw, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.sroa.063.0123 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.by, align 8
  %i.cc = load ptr, ptr %.sroa.261.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.sroa.063.0123 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = invoke { ptr, i64 } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRShBN_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.a, ptr %i.cb, i64 %i.ca, ptr %i.ce, i64 %i.cg)
          to label %_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit unwind label %.loopexit ; 0 uses

bb.x:                                             ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit22
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.y:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.cj, align 8
  store ptr null, ptr %0, align 8
  call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.e, i64 8, i64 16)
  br label %bb.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit22
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 range(i64 28, 0) %2, i64 %3, i64 %4, ptr nofree readonly captures(none) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp slt i64 %3, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr nonnull align 8 @19) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  %i.f = add i64 %4, %i.e                         ; 2 uses
  %i.g = icmp ult i64 %i.f, %4
  br i1 %i.g, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr nonnull align 8 @19) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = icmp ugt i64 %i.f, %2
  br i1 %i.h, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 @20) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %3, i1 zeroext false, i64 8, i64 16)
  %i.i = load i64, ptr %i.a, align 8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.m, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.l, i64 %i.n) #40
  unreachable

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.o = tail call ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 21, ptr nonnull @11, i64 21) #37, !noalias !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !35
  store i64 -1, ptr %0, align 8, !alias.scope !35
  br label %bb.m

.loopexit:                                        ; preds = %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i10, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.invoke66, %.invoke, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b, i64 8, i64 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit unwind label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.sroa.023.042 = phi i64 [ %i.t, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ 0, %bb.l ]
  %.sroa.0.041 = phi i64 [ %i.ah, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %4, %bb.l ] ; 8 uses
  %i.t = add nuw nsw i64 %.sroa.023.042, 1        ; 2 uses
  %i.u = icmp ugt i64 %.sroa.0.041, %2
  br i1 %i.u, label %.invoke, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

.invoke:                                          ; preds = %bb.n, %.lr.ph
  %i.v = phi i64 [ %.sroa.0.041, %.lr.ph ], [ %i.aa, %bb.n ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %i.v, i64 %2, i64 %2, ptr nonnull align 8 @12) #34
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %.lr.ph
  %i.w = sub nuw i64 %2, %.sroa.0.041
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.041
  %i.y = invoke i32 %5(ptr %i.x, i64 %i.w)
          to label %.noexc8 unwind label %.loopexit, !inline_history !38

.noexc8:                                          ; preds = %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %i.z = icmp ugt i64 %.sroa.0.041, -5
  br i1 %i.z, label %.invoke66, label %bb.n

.invoke66:                                        ; preds = %.noexc12, %.noexc8
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 @13) #34
          to label %.cont67 unwind label %.loopexit.split-lp

.cont67:                                          ; preds = %.invoke66
  unreachable

._crit_edge:                                      ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %._crit_edge, %bb.j
  ret void

bb.n:                                             ; preds = %.noexc8
  %i.aa = add nuw i64 %.sroa.0.041, 4             ; 4 uses
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = icmp ugt i64 %i.aa, %2
  br i1 %i.ac, label %.invoke, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i10

_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i10: ; preds = %bb.n
  %i.ad = sub nuw i64 %2, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.af = invoke i32 %5(ptr nonnull %i.ae, i64 %i.ad)
          to label %.noexc12 unwind label %.loopexit, !inline_history !38

.noexc12:                                         ; preds = %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i10
  %i.ag = icmp ugt i64 %.sroa.0.041, -9
  br i1 %i.ag, label %.invoke66, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %.noexc12
  %i.ah = add nuw i64 %.sroa.0.041, 8
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, %i.ab
  %i.ak = icmp ugt i64 %i.aj, %2
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.al = invoke ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 21, ptr nonnull @11, i64 21) #37
          to label %bb.r unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.an = load i64, ptr %i.s, align 8             ; 3 uses
  %i.ao = load i64, ptr %i.b, align 8
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.q, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRShE8grow_oneCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.b) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit unwind label %.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.q, %bb.p
  %i.aq = load ptr, ptr %i.r, align 8
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.an ; 2 uses
  store ptr %i.am, ptr %i.ar, align 8, !captures !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ab, ptr %i.as, align 8
  %i.at = add i64 %i.an, 1
  store i64 %i.at, ptr %i.s, align 8
  %exitcond.not = icmp eq i64 %i.t, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.au, align 8, !alias.scope !40
  store i64 -1, ptr %0, align 8, !alias.scope !40
  call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b, i64 8, i64 16)
  br label %bb.m

bb.s:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRShEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.k
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecRShE13with_capacityCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %1, i1 zeroext false, i64 8, i64 16)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #40
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define i64 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE16unwrap_uncheckedCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %1) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @23, i64 27, ptr nonnull align 8 @25) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.06.0.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = udiv i64 %.sroa.06.0.i, %3
  %i.c = urem i64 %.sroa.06.0.i, %3
  %.not.i = icmp ne i64 %i.c, 0
  %i.d = zext i1 %.not.i to i64
  %.sroa.05.0.i = add i64 %i.b, %i.d
  %i.e = add i64 %3, -1
  store i64 %1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB2_7HashMapRShB10_E13with_capacityCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge, label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1 = load i64, ptr %.phi.trans.insert, align 8
  br label %_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store i8 1, ptr %i.b, align 8
  br label %_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.i = phi i64 [ %.pre1, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge ], [ %i.g, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %i.j = phi i64 [ %.pre, %._RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit_crit_edge ], [ %i.f, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ] ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.a, align 8
  call void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull sret([32 x i8]) align 8 %.sroa.0, ptr nonnull poison, i64 32, i64 16, i64 %1, i1 zeroext true) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs0_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsE5resetCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) initializes((0, 32), (48, 56), (64, 72)) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %0, align 8
  %i.j = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = xor <2 x i64> %i.k, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRShBN_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = call i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRShECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %0, i64 1, ptr nonnull readonly align 8 %i.c, i1 zeroext true) #37 ; 0 uses
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.b, %bb.a
  %i.i = lshr i64 %i.d, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  %i.m = load ptr, ptr %0, align 8                ; 6 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  %.sroa.6.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ], [ %i.ap, %bb.e ]
  %.pn.i.i = phi i64 [ %i.d, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ], [ %.sroa.4.123.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRShBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ], [ %.sroa.04.125.i.i, %bb.e ]
  %.sroa.0.020.i.i = and i64 %.pn.i.i, %i.l       ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.020.i.i
  %.sroa.0.0.copyload.i30.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !43 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not33.i.i = icmp eq i16 %i.r, 0
  br i1 %.not33.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i.i
  %.sroa.01.034.i.i = phi i16 [ %i.v, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.034.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i16 %.sroa.01.034.i.i, -1
  %i.v = and i16 %i.u, %.sroa.01.034.i.i          ; 2 uses
  %i.w = add i64 %.sroa.0.020.i.i, %i.t
  %i.x = and i64 %i.w, %i.l
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %2, %i.ab
  br i1 %i.ac, label %.split.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %1, ptr readonly %i.ae, i64 %2)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i.i

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.backedge.i.i, %bb.c
  %.not11.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i.i
  %i.ag = icmp slt <16 x i8> %.sroa.0.0.copyload.i30.i.i, zeroinitializer
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread27.i.i

.thread27.i.i:                                    ; preds = %bb.d
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.0.020.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.l
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread27.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i.i
  %.sroa.4.124.i.i = phi i64 [ %i.al, %.thread27.i.i ], [ %.sroa.4.0.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRShBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1w_11make_hasherBS_BS_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge.i.i ] ; 3 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.125.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.123.i.i = phi i64 [ %.sroa.4.124.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ap = add i64 %.sroa.6.0.i.i, 16              ; 2 uses
  %i.aq = add i64 %.sroa.0.020.i.i, %i.ap
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.4.124.i.i
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val2.i.i.i = load <16 x i8>, ptr %i.m, align 16
  %i.au = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.av, 0
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %.sroa.3.0.i22.i.i = select i1 %.not.i21.i.i, i64 undef, i64 %i.ax ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.3.0.i22.i.i
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ay = phi i8 [ %.pre, %bb.g ], [ %i.as, %bb.f ]
  %.sroa.3.0.i.ph.i = phi i64 [ %.sroa.3.0.i22.i.i, %bb.g ], [ %.sroa.4.124.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.3.0.i.ph.i
  %i.ba = and i8 %i.ay, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = load i64, ptr %i.e, align 8
  %i.bd = sub i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.e, align 8
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = and i64 %i.be, %i.l
  store i8 %i.j, ptr %i.az, align 1
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.j, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bo = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -32
  store ptr %1, ptr %i.bp, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -24
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -16
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -8
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %.split.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  store ptr %3, ptr %i.bq, align 8, !captures !39
  store i64 %4, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.3.0 = phi i64 [ undef, %bb.h ], [ %i.bt, %bb.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ %i.br, %bb.i ]
  %i.bu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bv = insertvalue { ptr, i64 } %i.bu, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bv
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapRShB13_E6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRShBN_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4)
  ret { ptr, i64 } %i.a
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRShE8grow_oneCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0, i1 zeroext false, i64 %1, i64 %2)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = insertvalue { i64, ptr } poison, i64 %i.e, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %i.h, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EE16with_capacity_inCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %2 = alloca [32 x i8], align 8                  ; 2 uses
  call void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull sret([32 x i8]) align 8 %2, ptr nonnull poison, i64 32, i64 16, i64 %1, i1 zeroext true) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EE22insert_tagged_at_indexCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i8 %1, i64 %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, %i.i
  store i8 %1, ptr %i.b, align 1
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i8 %1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = sub nsw i64 0, %2
  %i.u = getelementptr inbounds [32 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  ret ptr %i.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE4pushCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE8push_mutCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRShE8grow_oneCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %0) #37
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE8push_mutCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE8push_mutCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %1, ptr %i.g, align 8, !captures !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShE8push_mutCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRShE8grow_oneCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %0) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.g, align 8, !captures !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCskt5MLIAl8nl_9hashbrown3mapINtB4_7HashMapRShBM_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE24with_capacity_and_hasherCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull poison, i64 32, i64 16, i64 %1, i1 zeroext true) #35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsb_NtNtCs3oUPovFnLWP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i8 %1) unnamed_addr #16 {
bb.a:
  %i.a = insertelement <16 x i8> poison, i8 %1, i64 0
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #17 {
bb.a:
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_nounwind_fmt(ptr nonnull @26, ptr nonnull inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #42
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownRShINtB2_10EquivalentBq_E10equivalentCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRShNtB7_9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = load ptr, ptr %0, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr readonly %i.g, ptr readonly %i.f, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRShNtB7_9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRShNtB7_9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvXNtCs3oUPovFnLWP_4core6borrowRShINtB2_6BorrowBu_E6borrowCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr readonly %0, ptr readonly %2, i64 %1)
  %i.b = icmp eq i32 %bcmp.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i64 %1) unnamed_addr #13 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %i.b, ptr %1, i64 %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
    i64 1, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp uge ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %.not3.i.i.i.i.i = icmp eq i64 %i.j, 1095216660480
  %.not.i.i.i.i.i = or i1 %i.i, %.not3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  store i8 3, ptr %i.a, align 8
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.f, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.g:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  ret i1 %.not

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSRShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, ptr nofree readnone align 8 captures(ret: address, provenance) %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %0
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 16)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = add i64 %i.c, 1
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = add i64 %i.h, -1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 0, %i.h
  %i.q = and i64 %i.n, %i.p                       ; 3 uses
  %i.r = add i64 %i.c, 17
  %i.s = add i64 %i.r, %i.q                       ; 4 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = sub i64 -9223372036854775808, %i.h
  %i.v = icmp ugt i64 %i.s, %i.u
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 undef
  br label %bb.e

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = sub nsw i64 0, %i.q
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = icmp eq i64 %i.s, 0
  br i1 %i.ab, label %_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i
  %i.ac = phi ptr [ %i.x, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ %i.aa, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %.sroa.0.05.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %.sroa.6.04.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ %i.s, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.ac, i64 %.sroa.6.04.i, i64 %.sroa.0.05.i) #36
  br label %_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not8.i = icmp eq i64 %i.d, -1
  br i1 %.not8.i, label %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %.neg.i = xor i64 %.sroa.0.07.i, -1
  %i.f = add nuw i64 %.sroa.0.07.i, 1
  %i.g = load ptr, ptr %0, align 8                ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.07.i ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, -128
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %exitcond.not.i = icmp eq i64 %.sroa.0.07.i, %i.d
  br i1 %exitcond.not.i, label %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.l = add i64 %.sroa.0.07.i, -16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, %i.l
  store i8 -1, ptr %i.i, align 1
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store i8 -1, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8
  %i.u = load i64, ptr %i.e, align 8
  %i.v = load ptr, ptr %i.t, align 8
  %.neg6.i = mul i64 %i.u, %.neg.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.neg6.i
  tail call void %i.s(ptr %i.w), !inline_history !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8
  br label %bb.c

_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8             ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre9.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.pre9.i.fr = freeze i64 %.pre9.i               ; 3 uses
  %.pre10.i = add i64 %.pre9.i.fr, 1
  %i.ab = lshr i64 %.pre10.i, 3
  %i.ac = mul nuw i64 %i.ab, 7
  %i.ad = icmp ult i64 %.pre9.i.fr, 8
  %spec.select = select i1 %i.ad, i64 %.pre9.i.fr, i64 %i.ac
  br label %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread

_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread: ; preds = %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.a
  %i.ae = phi ptr [ %i.b, %bb.a ], [ %.pre.i, %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ] ; 2 uses
  %i.af = phi i64 [ 0, %bb.a ], [ %spec.select, %_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = sub i64 %i.af, %i.ah
  store i64 %i.aj, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr align 8 %1, ptr nonnull @27, i64 2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i40 0, -254) i40 @_RNvXs3_NtCs3oUPovFnLWP_4core7convertRShINtB5_7TryIntoAhj4_E8try_intoCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq i64 %1, 4
  br i1 %i.a, label %bb.b, label %_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload.i = load i32, ptr %0, align 1
  br label %_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i32 [ %.sroa.03.0.copyload.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.3.0.i to i40
  %.sroa.3.0.insert.shift.i = shl nuw i40 %.sroa.3.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %.sroa.0.0.i to i40
  %.sroa.0.0.insert.insert.i = or disjoint i40 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i40 %.sroa.0.0.insert.insert.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.sroa.speculated.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.sroa.speculated.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp ult i64 %.sroa.03.1.i, %.sroa.0.0.sroa.speculated.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_leCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_leCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_leCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.aj, align 8
  %.promoted19 = load i64, ptr %0, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8
  %.promoted21 = load i64, ptr %i.al, align 8
  br label %bb.p
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCshWvooqPLMQS_27fish_gettext_mo_file_parser:bb.a
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 2 uses
  %i.bf = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bj = xor i64 %i.bh, %i.bg
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = xor i64 %i.bk, %i.bf
  ret i64 %i.bl
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.b, 1
  store i64 %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #19 {
bb.a:
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %1, i64 %2)
  %i.a = icmp eq i32 %bcmp, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.b, 1
  store i64 %i.e, ptr %0, align 8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i40 0, -254) i40 @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq i64 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i32, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.sroa.03.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i40
  %.sroa.3.0.insert.shift = shl nuw i40 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.b, 1
  ret { ptr, i64 } %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %0, i64 %2, i64 %2, ptr align 8 %3) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRShNtB7_9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = load ptr, ptr %0, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr readonly %i.g, ptr readonly %i.f, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit:
  %i.a = tail call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %0, ptr nonnull align 8 @4, ptr %1, ptr %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSRShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %1, i64 %i.b, ptr align 8 %2) #34
  unreachable

_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSRShE5indexCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRShBP_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRShB1d_ENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 undef
  br label %bb.d

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = icmp eq i64 %i.h, 0
  br i1 %i.p, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRShB1d_ENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i
  %i.q = phi ptr [ %i.l, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ %i.o, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %.sroa.0.05.i = phi i64 [ 0, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  %.sroa.6.04.i = phi i64 [ undef, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.thread.i ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.q, i64 %.sroa.6.04.i, i64 %.sroa.0.05.i) #36
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRShB1d_ENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRShB1d_ENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, ptr } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultFG_RL0_ShEmNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, ptr %1) unnamed_addr #13 {
bb.a:
  %i.a = insertvalue { i64, ptr } poison, i64 %0, 0
  %i.b = insertvalue { i64, ptr } %i.a, ptr %1, 1
  ret { i64, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecRShENtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #13 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapRShB1F_ENtNtNtB7_2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1N_EE13from_residualCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 12 uses
  store i32 0, ptr %i.b, align 4
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc i32 %i.p to i8
  %i.r = or i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %i.ac, ptr nonnull %i.b, i64 %.sroa.0.05.i) ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i
    i64 1, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp uge ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ak, 1095216660480
  %.not.i.i.i.i.i.i = or i1 %i.aj, %.not3.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.af, i64 -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8
  store i8 3, ptr %i.a, align 8
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i: ; preds = %bb.l, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8
  resume { ptr, i32 } %i.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit:
  %i.a = tail call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr align 8 %0, ptr nonnull align 8 @4, ptr %1, ptr %2), !inline_history !47
  ret i1 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr nonnull readonly %i.a, i64 8) #35
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr nonnull readonly %i.a, i64 8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.115, %bb.n ] ; 3 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.113, %bb.n ] ; 6 uses
  %i.f = call { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.036, i64 %.sroa.6.035) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 12 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.d, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.d
    i64 0, label %.split22
    i64 1, label %.split
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.j, 32
  %i.m = icmp uge ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.l to i8   ; 2 uses
  %.not3.i.i = icmp eq i8 %switch.idx.cast.i.i.i, -1
  %.not.i.i = or i1 %i.m, %.not3.i.i
  br i1 %.not.i.i, label %bb.e, label %.split21

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = invoke align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.o = lshr i64 %i.j, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke zeroext i1 %i.r(i32 %i.p)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit unwind label %bb.o, !inline_history !48

.split21:                                         ; preds = %bb.d
  %i.t = icmp eq i8 %switch.idx.cast.i.i.i, 35
  br i1 %i.t, label %bb.k, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

.split22:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i8, ptr %i.u, align 8
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.thread, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.h, i64 31
  %i.y = load i8, ptr %i.x, align 8
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.m, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

bb.g:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %i.j, i64 %.sroa.6.035, i64 %.sroa.6.035, ptr nonnull align 8 @30) #40
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = sub nuw i64 %.sroa.6.035, %i.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.n

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %.noexc
  br i1 %i.s, label %.thread.thread, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge: ; preds = %bb.n, %bb.g, %.split22, %.split21, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.a
  %.sroa.07.0 = phi ptr [ null, %bb.a ], [ @29, %bb.g ], [ %i.h, %.split22 ], [ %i.h, %.split21 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ null, %bb.n ]
  ret ptr %.sroa.07.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %.split22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.k:                                             ; preds = %.split21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = icmp uge ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.af = and i64 %i.j, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.af, 1095216660480
  %.not.i.i.i.i = or i1 %i.ae, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.m:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.h, i64 -1
  store ptr %i.ag, ptr %i.e, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %.thread.thread, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.sroa.0.115 = phi ptr [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %i.ad, %bb.j ]
  %.sroa.6.113 = phi i64 [ %.sroa.6.035, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.6.113, 0
  br i1 %i.ah, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %bb.b

bb.o:                                             ; preds = %.noexc, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.d) #39
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, ptr %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, ptr %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i64 %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i64 %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr align 8) unnamed_addr #21

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext, i64, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr, ptr align 8, ptr, ptr) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr, i64, ptr align 8) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr align 8) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8, ptr, i64) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr align 8) unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr align 8, i64, i64, i64, i64) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #20

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #29

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8, i64, i64) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr, ptr, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { noinline noreturn }
attributes #35 = { inlinehint }
attributes #36 = { nounwind }
attributes #37 = { noinline }
attributes #38 = { inlinehint nounwind }
attributes #39 = { cold }
attributes #40 = { noreturn }
attributes #41 = { cold noreturn nounwind }
attributes #42 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECshWvooqPLMQS_27fish_gettext_mo_file_parser}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser: argument 0"}
!7 = distinct !{!7, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser: argument 0"}
!10 = distinct !{!10, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser: argument 0"}
!13 = distinct !{!13, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser"}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !20}
!23 = !{ptr @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCshWvooqPLMQS_27fish_gettext_mo_file_parser, ptr @_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !20, !21}
!30 = distinct !{!30, !20}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasherCshWvooqPLMQS_27fish_gettext_mo_file_parser: argument 0"}
!33 = distinct !{!33, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasherCshWvooqPLMQS_27fish_gettext_mo_file_parser"}
!34 = distinct !{null}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings0B3_: argument 0"}
!37 = distinct !{!37, !"_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings0B3_"}
!38 = distinct !{null}
!39 = !{!"address", !"read_provenance"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings0B3_: argument 0"}
!42 = distinct !{!42, !"_RNCNvCshWvooqPLMQS_27fish_gettext_mo_file_parser13parse_strings0B3_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser: argument 0"}
!45 = distinct !{!45, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CshWvooqPLMQS_27fish_gettext_mo_file_parser"}
!46 = !{ptr @_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshWvooqPLMQS_27fish_gettext_mo_file_parser}
!47 = !{ptr @_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser}
!48 = distinct !{null}
end_hunk_2
