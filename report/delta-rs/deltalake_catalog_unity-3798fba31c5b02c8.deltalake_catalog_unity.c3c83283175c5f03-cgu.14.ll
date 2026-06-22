inline.NumInlined: 839
inline.NumDeleted: 369
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/moka-0.12.14/src/cht/segment.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00E\02\00\00\0D\00\00\00" }>, align 8
@2 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/async-lock-3.4.2/src/mutex.rs\00", align 1
@3 = private unnamed_addr constant [30 x i8] c"future polled after completion", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\00\11\02\00\00!\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\004\02\00\00C\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\00\22\02\00\00C\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\00s\02\00\00:\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\00b\02\00\00?\00\00\00" }>, align 8
@9 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/moka-0.12.14/src/future/housekeeper.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"k\00\00\00\00\00\00\00\B3\00\00\00\18\00\00\00" }>, align 8
@_RNvNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL = external thread_local global { ptr, i8, [7 x i8] }
@11 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/moka-0.12.14/src/future/notifier.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"h\00\00\00\00\00\00\00\1B\00\00\00S\00\00\00" }>, align 8
@13 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/moka-0.12.14/src/future/invalidator.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"k\00\00\00\00\00\00\00\AD\00\00\00\05\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"k\00\00\00\00\00\00\00.\01\00\00\05\00\00\00" }>, align 8
@16 = private unnamed_addr constant [64 x i8] c"notify_entry_removal is called when the notification is disabled", align 1
@17 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/moka-0.12.14/src/future/base_cache.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\8D\03\00\00\0D\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\89\03\00\00\05\00\00\00" }>, align 8
@20 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/moka-0.12.14/src/future/key_lock.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"h\00\00\00\00\00\00\008\00\00\00;\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\15\05\00\00\0F\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\F1\05\00\00\07\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\10\06\00\00\05\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00J\06\00\00\05\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00}\09\00\00\05\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00Q\08\00\00\05\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\E4\08\00\00\05\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00>\09\00\00\05\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\CF\05\00\00J\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\E3\05\00\00E\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\001\08\00\00\05\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\E0\07\00\00\05\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"j\00\00\00\00\00\00\00\E7\09\00\00\07\00\00\00" }>, align 8
@35 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/crossbeam-epoch-0.9.18/src/internal.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"k\00\00\00\00\00\00\00\81\01\00\009\00\00\00" }>, align 8
@37 = private unnamed_addr constant [6 x i8] c"window", align 1
@38 = private unnamed_addr constant [14 x i8] c"main probation", align 1
@39 = private unnamed_addr constant [14 x i8] c"main protected", align 1
@40 = private unnamed_addr constant [5 x i8] c"other", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBN_6future11invalidator9PredicateB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2O_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateBS_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEINtNtB7_4iter11ScanningGetBS_B1u_E12scanning_getB2f_, ptr @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateBS_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEINtNtB7_4iter11ScanningGetBS_B1u_E4keysB2f_ }>, align 8
@42 = private unnamed_addr constant [6 x i8] c"Window", align 1
@43 = private unnamed_addr constant [13 x i8] c"MainProbation", align 1
@44 = private unnamed_addr constant [13 x i8] c"MainProtected", align 1
@45 = private unnamed_addr constant [5 x i8] c"Other", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtBO_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00EB2P_, [16 x i8] c"H\06\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtB7_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00B28_ }>, align 8
@switch.table._RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_ = private unnamed_addr constant [4 x i8] c"\06\0E\0E\05", align 8
@switch.table._RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_.127 = private unnamed_addr constant [4 x ptr] [ptr @37, ptr @38, ptr @39, ptr @40], align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity = private unnamed_addr constant [4 x i8] c"\06\0D\0D\05", align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.128 = private unnamed_addr constant [4 x ptr] [ptr @42, ptr @43, ptr @44, ptr @45], align 8

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifyjECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call noundef i64 @_RNvXsn_NtCseKAYRfgxGTE_14event_listener6notifyjNtB5_16IntoNotification17into_notification(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #23, !srcloc !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0)
  %i.d = call noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c, i64 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call noundef i64 @_RNvXsF_NtCseKAYRfgxGTE_14event_listener6notifylNtB5_16IntoNotification17into_notification(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #23, !srcloc !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0)
  %i.d = call noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c, i64 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3fLsjMQPbhe_8smallvec8IntoIterATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtB4_6option6OptionNtNtNtB1m_4time7instant7InstantEEj8_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsG_Cs3fLsjMQPbhe_8smallvecINtB5_8IntoIterATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtB2i_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtB2i_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3fLsjMQPbhe_8smallvec8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtB4_6option6OptionNtNtNtB1m_4time7instant7InstantEEj8_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtB2i_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(272) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3fLsjMQPbhe_8smallvec8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtB4_6option6OptionNtNtNtB1m_4time7instant7InstantEEj8_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !5, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtB15_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB29_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB24_EEEB3V_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !8
  %i.c = icmp eq i32 %i.b, 1000000001
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = load i8, ptr %i.e, align 8, !range !13, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  %.not.i.i.i = icmp ne ptr %i.f, null
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.h
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.f, i64 2 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !align !12, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtB15_5MutexINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB24_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !8
  %i.c = icmp eq i32 %i.b, 1000000001
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = load i8, ptr %i.e, align 8, !range !13, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  %.not.i.i.i = icmp ne ptr %i.f, null
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.h
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.f, i64 2 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !align !12, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtB15_5MutexINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB24_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !8
  %i.c = icmp eq i32 %i.b, 1000000001
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = load i8, ptr %i.e, align 8, !range !13, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  %.not.i.i.i = icmp ne ptr %i.f, null
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.h
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.f, i64 2 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB1H_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !align !12, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtB15_5MutexuEuEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !8
  %i.c = icmp eq i32 %i.b, 1000000001
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = load i8, ptr %i.e, align 8, !range !13, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  %.not.i.i.i = icmp ne ptr %i.f, null
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.h
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.f, i64 2 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !align !12, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.d = load i8, ptr %i.c, align 8, !range !33, !alias.scope !34, !noundef !8
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !38, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !38, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !38, !nonnull !8, !noundef !8
  tail call void %i.j(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !38, !inline_history !39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !49, !nonnull !8, !noundef !8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !49
  %i.m = icmp eq i64 %i.l, 1
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.g, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.j = load i8, ptr %i.h, align 8, !range !13, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.i, null
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i.i.i.i, %i.k
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.l = atomicrmw sub ptr %i.i, i64 2 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !align !12, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i.i.i.i.i.i.i.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs4IjZJRxZMkw_23event_listener_strategy13FutureWrapperINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures10WriteInnerNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs4IjZJRxZMkw_23event_listener_strategy13FutureWrapperINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures10WriteInnerNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexuEuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBN_6future11invalidator9PredicateB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2O_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateBS_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2f_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentNtNtBL_6string6StringINtNtNtB1n_6future11invalidator9PredicateB20_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB38_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.d = shl nuw nsw i64 %.val3, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentNtNtBL_6string6StringINtNtNtB1n_6future11invalidator9PredicateB20_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB38_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentNtNtBL_6string6StringINtNtNtB1n_6future11invalidator9PredicateB20_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB38_.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.g = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentNtNtBL_6string6StringINtNtNtB1n_6future11invalidator9PredicateB20_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB38_.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentNtNtBL_6string6StringINtNtNtB1n_6future11invalidator9PredicateB20_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB38_.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentNtNtBL_6string6StringINtNtNtB1n_6future11invalidator9PredicateB20_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB38_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !131, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !131
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtCseo6ZV82fEK1_3url8UrlQueryEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !132, !alias.scope !133, !noundef !8 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %or.cond.i = icmp slt i64 %i.a, 0
  br i1 %or.cond.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair9PairStateECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair9PairStateECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair9PairStateECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !132, !alias.scope !136, !noundef !8 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %or.cond.i = icmp slt i64 %i.a, 0
  br i1 %or.cond.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair9PairStateECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair9PairStateECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair9PairStateECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtBO_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00EB2P_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret.sink.split:                            ; preds = %bb.f, %bb.b
  %.sink = phi ptr [ %i.c, %bb.b ], [ %i.m, %bb.f ]
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #25
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !145, !nonnull !8, !noundef !8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !145
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %common.ret.sink.split, label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0EB2m_(ptr noundef nonnull align 8 %i.g)
          to label %bb.f unwind label %bb.d

.noexc:                                           ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !152, !nonnull !8, !noundef !8
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !152
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %.noexc

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %.noexc unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !159, !nonnull !8, !noundef !8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !159
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %common.ret.sink.split, label %common.ret

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs95DO3lnzZ3L_4moka6future8notifierINtBL_15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE6notify0EB2r_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.b = load i8, ptr %i.a, align 1, !range !33, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !166, !nonnull !8, !noundef !8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !166
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 288
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.i = load ptr, ptr %.val2, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !10, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #23
  br label %.body

bb.j:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %0) #26
          to label %bb.k unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %0)
  br label %common.ret

bb.k:                                             ; preds = %.body, %bb.j
  %.pn = phi { ptr, i32 } [ %i.o, %.body ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i8 0, ptr %i.y, align 4
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i8 0, ptr %i.ab, align 4
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtBO_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19scan_and_invalidate0EB2u_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !range !167, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.e
    i8 4, label %bb.h
  ]

common.ret.sink.split:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex4LockINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1r_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit, %bb.b
  %.sink = phi ptr [ %0, %bb.b ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex4LockINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1r_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit ]
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.ret.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1y_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3k_.exit, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %.pn3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1y_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3k_.exit ], [ %i.c, %bb.c ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !range !11, !noundef !8
  %i.g = icmp eq i32 %i.f, 1000000001
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex4LockINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1r_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.h, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.h, align 8
  %i.k = load i8, ptr %i.i, align 8, !range !13, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.j, null
  %or.cond.not.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i, %i.l
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw sub ptr %i.j, i64 2 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i.i.i.i = load ptr, ptr %i.n, align 8, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex4LockINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1r_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtBO_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE10invalidate0EB2u_(ptr noundef nonnull align 8 %i.o)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1y_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3k_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex4LockINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1r_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2t_.exit, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex11AcquireSlowRINtBJ_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1M_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1H_EEB3y_.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.ret.sink.split unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex4LockINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1r_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1y_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3k_.exit: ; preds = %.body, %bb.r, %bb.i
  %.pn3 = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.ak, %bb.r ], [ %.pn, %.body ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.v) #26
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2t_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #26
          to label %.body unwind label %bb.s

bb.m:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2t_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.q, %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.af, %bb.q ], [ %i.z, %bb.n ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val7 = load ptr, ptr %i.ac, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.ad = atomicrmw sub ptr %.val7, i64 1 release, align 8 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  invoke fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.ae) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1y_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3k_.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtCsiFSAbtmCsla_16serde_urlencoded3ser9to_stringRATReBR_Ej5_ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  invoke fastcc void @_RINvXs4_NtCsiFSAbtmCsla_16serde_urlencoded3serINtB6_15TupleSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementTReB2Q_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull align 8 dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !noalias !395 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.m, -9223372036854775806
  br i1 %.not6.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %.sroa.03.0.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  invoke fastcc void @_RINvXs4_NtCsiFSAbtmCsla_16serde_urlencoded3serINtB6_15TupleSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementTReB2Q_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull align 8 dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0.ptr.1.i.i)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.a, align 8, !noalias !395 ; 2 uses
  %.not6.1.i.i = icmp eq i64 %i.n, -9223372036854775806
  br i1 %.not6.1.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %.sroa.03.0.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  invoke fastcc void @_RINvXs4_NtCsiFSAbtmCsla_16serde_urlencoded3serINtB6_15TupleSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementTReB2Q_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull align 8 dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0.ptr.2.i.i)
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !noalias !395 ; 2 uses
  %.not6.2.i.i = icmp eq i64 %i.o, -9223372036854775806
  br i1 %.not6.2.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %.sroa.03.0.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  invoke fastcc void @_RINvXs4_NtCsiFSAbtmCsla_16serde_urlencoded3serINtB6_15TupleSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementTReB2Q_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull align 8 dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0.ptr.3.i.i)
          to label %.noexc22 unwind label %bb.h

.noexc22:                                         ; preds = %bb.f
  %i.p = load i64, ptr %i.a, align 8, !noalias !395 ; 2 uses
  %.not6.3.i.i = icmp eq i64 %i.p, -9223372036854775806
  br i1 %.not6.3.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %.sroa.03.0.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  invoke fastcc void @_RINvXs4_NtCsiFSAbtmCsla_16serde_urlencoded3serINtB6_15TupleSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementTReB2Q_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull align 8 dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0.ptr.4.i.i)
          to label %.noexc23 unwind label %bb.h

.noexc23:                                         ; preds = %bb.g
  %i.q = load i64, ptr %i.a, align 8, !noalias !395 ; 2 uses
  %.not6.4.i.i = icmp eq i64 %i.q, -9223372036854775806
  br i1 %.not6.4.i.i, label %bb.m, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.e) #26
          to label %common.resume unwind label %bb.r

bb.i:                                             ; preds = %.noexc23, %.noexc22, %.noexc21, %.noexc20, %.noexc
  %.sroa.027.0.copyload = phi i64 [ %i.m, %.noexc ], [ %i.n, %.noexc20 ], [ %i.o, %.noexc21 ], [ %i.p, %.noexc22 ], [ %i.q, %.noexc23 ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !395
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.027.0.copyload, ptr %i.s, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0.copyload, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.copyload, ptr %.sroa.316.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.t = load i64, ptr %i.e, align 8, !range !4, !alias.scope !396, !noundef !8
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_Csj62dA9SVw2s_15form_urlencodedINtB5_10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringE6finishCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = load i64, ptr %i.e, align 8, !range !4, !alias.scope !401, !noundef !8
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split: ; preds = %bb.o, %bb.j
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsj62dA9SVw2s_15form_urlencoded10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split, %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.r:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB22_8snapshotNtB3c_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1t_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB51_5error5ErrorEEs_0EENtNtBR_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB37_19UnityCatalogBuilder17execute_uc_futureNCNvB33_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1t_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5H_B5H_EENtB37_17UnityCatalogErrorEE0B54_E00EENtNtBR_8schedule16BlockingScheduleEB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1F_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5T_B5T_EENtB3j_17UnityCatalogErrorEE0B5g_E00EENtNtB13_8schedule16BlockingScheduleE3newB3j_(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4I_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2y_19UnityCatalogBuilder17execute_uc_futureNCNvB2u_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB58_B58_EENtB2y_17UnityCatalogErrorEE0B4v_E00ENtNtBR_8schedule16BlockingScheduleEB2y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2K_19UnityCatalogBuilder17execute_uc_futureNCNvB2G_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5k_B5k_EENtB2K_17UnityCatalogErrorEE0B4H_E00ENtNtB13_8schedule16BlockingScheduleE3newB2K_(ptr noundef %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtCsiFSAbtmCsla_16serde_urlencoded3serINtB6_15TupleSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementTReB2Q_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.0.val, ptr %i.g, align 8
  store i64 -9223372036854775807, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !406
  call void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pairINtB4_14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer15serialize_tupleCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, i64 noundef 2), !noalias !411
  %i.h = load i64, ptr %i.d, align 8, !range !412, !noalias !406, !noundef !8
  %i.i = icmp eq i64 %i.h, -9223372036854775804
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !406
  br label %_RINvXs1s_NtNtCs1gOyXocuPRE_10serde_core3ser5implsTReBM_ENtB9_9Serialize9serializeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !406
  invoke void @_RINvXs0_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pairINtB6_14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.d unwind label %bb.n, !noalias !414

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8, !range !415, !noalias !406, !noundef !8
  %.not.i = icmp eq i64 %i.k, -9223372036854775806
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !406
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !406
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvXs0_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pairINtB6_14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %bb.g unwind label %bb.n, !noalias !414

bb.g:                                             ; preds = %bb.f
  %i.m = load i64, ptr %i.b, align 8, !range !415, !noalias !406, !noundef !8
  %.not2.i = icmp eq i64 %i.m, -9223372036854775806
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !406
  call void @_RNvXs0_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pairINtB5_14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple3endCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !406
  br label %_RINvXs1s_NtNtCs1gOyXocuPRE_10serde_core3ser5implsTReBM_ENtB9_9Serialize9serializeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.n = load i64, ptr %i.e, align 8, !range !132, !alias.scope !417, !noalias !406, !noundef !8 ; 2 uses
  %i.o = icmp ne i64 %i.n, -9223372036854775806
  call void @llvm.assume(i1 %i.o)
  %or.cond.i.i.i = icmp slt i64 %i.n, 0
  br i1 %or.cond.i.i.i, label %_RINvXs1s_NtNtCs1gOyXocuPRE_10serde_core3ser5implsTReBM_ENtB9_9Serialize9serializeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.l, !noalias !414

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume.i unwind label %bb.m, !noalias !414

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !414
  unreachable

common.resume.i:                                  ; preds = %bb.n, %bb.l
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.l ], [ %lpad.thr_comm.i, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.k
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e), !noalias !414
  br label %_RINvXs1s_NtNtCs1gOyXocuPRE_10serde_core3ser5implsTReBM_ENtB9_9Serialize9serializeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.f, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.e) #26
          to label %common.resume.i unwind label %bb.o, !noalias !414

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !414
  unreachable

_RINvXs1s_NtNtCs1gOyXocuPRE_10serde_core3ser5implsTReBM_ENtB9_9Serialize9serializeINtNtNtCsiFSAbtmCsla_16serde_urlencoded3ser4pair14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.i, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXsf_NtCs7kfTgH1B6X1_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1f_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB1a_ENtCs4IjZJRxZMkw_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB4m_11NonBlockingEB31_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !425, !alias.scope !422, !noundef !8 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 1000000000
  br i1 %.not.i, label %bb.b, label %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge

._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now(), !noalias !422 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 3 uses
  %i.j = icmp ult i32 %i.i, 1000000000
  tail call void @llvm.assume(i1 %i.j)
  store i64 %i.h, ptr %0, align 8, !alias.scope !422
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !422
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge, %bb.b
  %i.k = phi i32 [ %i.f, %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge ], [ %i.i, %bb.b ]
  %i.l = phi i64 [ %.pre, %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge ], [ %i.h, %bb.b ]
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.b, align 8, !align !12, !noundef !8 ; 8 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !361

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.o = load i8, ptr %i.d, align 8, !range !13, !noundef !8
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs2pqxYH9ZEk8_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

bb.e:                                             ; preds = %.backedge34, %.preheader
  %i.r = load ptr, ptr %i.c, align 8, !align !12, !noundef !8 ; 3 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.j, label %bb.g, !prof !361

bb.f:                                             ; preds = %bb.u, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.t = call noundef zeroext i1 @_RNvMsh_CseKAYRfgxGTE_14event_listenerINtB5_13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !426
  br i1 %i.t, label %_RINvXs2_Cs4IjZJRxZMkw_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCseKAYRfgxGTE_14event_listener13EventListenerECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.r)
          to label %bb.k unwind label %bb.i, !noalias !426

common.resume:                                    ; preds = %bb.q, %bb.ae, %bb.z, %bb.i
  %.sink = phi ptr [ null, %bb.z ], [ null, %bb.i ], [ %i.v, %bb.q ], [ %i.ar, %bb.ae ]
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.z ], [ %i.u, %bb.i ], [ %i.ai, %bb.q ], [ %i.ay, %bb.ae ]
  store ptr %.sink, ptr %i.c, align 8
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.e
  %i.v = call noundef nonnull align 8 ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event6listenCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.q) ; 2 uses
  %.val38 = load ptr, ptr %i.c, align 8, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val38)
          to label %bb.r unwind label %bb.q

bb.k:                                             ; preds = %bb.h
  store ptr null, ptr %i.c, align 8, !alias.scope !426, !noalias !429
  %i.w = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.w, 0
  switch i64 %.sroa.01.0.i, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
end_hunk_2
begin_hunk_3_@_RNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtB7_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00B28_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !range !425, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.i, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.g, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load <2 x i32>, ptr %i.h, align 8
  store <2 x i32> %i.j, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.h, %bb.k
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.q, %bb.h ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !526, !nonnull !8, !noundef !8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !526
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = invoke fastcc noundef i8 @_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0EB2m_(ptr noundef nonnull align 8 %i.o) #26
          to label %bb.c unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.r = icmp eq i8 %i.p, 2
  br i1 %i.r, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.l, %bb.m
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 8
  ret i8 %i.p

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0EB2m_(ptr noundef nonnull align 8 %i.o)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !533, !nonnull !8, !noundef !8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !533
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #25
          to label %common.ret unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit: ; preds = %bb.c, %bb.d, %bb.n
  %.pn10 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %.pn8, %bb.d ], [ %.pn8, %bb.c ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn10

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit

bb.o:                                             ; preds = %bb.d, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCs95DO3lnzZ3L_4moka6future8notifierINtB4_15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE6notify0B1K_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 16              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [256 x i8], align 16              ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !range !33, !noundef !8
  switch i8 %i.f, label %default.unreachable65 [
    i8 0, label %bb.c
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.b
  ]

default.unreachable65:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 299 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 301 ; 2 uses
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 1, ptr %i.g, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  store ptr %i.n, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %0, i64 256, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 298 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i8, ptr %i.p, align 8, !range !33, !noundef !8
  store i8 %i.q, ptr %i.o, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load atomic i8, ptr %i.r acquire, align 8
  %.not55 = icmp eq i8 %i.s, 0
  br i1 %.not55, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.j, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store i8 0, ptr %i.g, align 4
  store i8 0, ptr %i.h, align 1
  %i.u = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.02.sroa.3.0..sroa_idx, i64 240, i1 false)
  %i.v = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.v, ptr %i.a, align 16, !noalias !542
  %i.w = load i8, ptr %i.o, align 2, !range !33, !noalias !534, !noundef !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %i.u, ptr %i.x, align 16, !noalias !534
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 %i.w, ptr %i.y, align 8, !noalias !534
  %i.z = load ptr, ptr %i.t, align 8, !noalias !534, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !534, !nonnull !8, !align !12, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !8, !noalias !534, !nonnull !8
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.z, ptr noundef nonnull %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.a, i8 noundef %i.w) #27
          to label %bb.h unwind label %bb.e, !noalias !542, !inline_history !543 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.f, !noalias !542 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #24, !noalias !542
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 299 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !13, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.aj, label %bb.ai

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  %i.am = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = extractvalue { ptr, ptr } %i.ae, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store i8 0, ptr %i.i, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.an, ptr %i.ap, align 8
  br label %bb.r

.body34:                                          ; preds = %bb.ah, %bb.ag, %bb.aa, %bb.z, %bb.s
  %.pn9.pn = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %i.cx, %bb.ag ], [ %i.bq, %bb.s ], [ %i.cx, %bb.ah ], [ %i.cf, %bb.aa ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 301
  %i.ar = load i8, ptr %i.aq, align 1, !range !13, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.ap, label %.body

bb.i:                                             ; preds = %bb.e
  %i.at = extractvalue { ptr, ptr } %i.ah, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = extractvalue { ptr, ptr } %i.ah, 1      ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au), "nonnull"(ptr %i.au) ]
  %i.av = load ptr, ptr %i.j, align 8, !nonnull !8, !align !12, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store atomic i8 0, ptr %i.aw release, align 8
  %i.ax = load ptr, ptr %i.au, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ax(ptr noundef nonnull %i.at)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, -9223372036854775808) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, -9223372036854775808) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #23
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ae, %bb.af, %bb.k, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.bj, align 1
  br label %bb.g

bb.o:                                             ; preds = %bb.as, %bb.s, %bb.ap, %bb.aq
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.m, %bb.n, %bb.ap, %.body34
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %.body34 ], [ %.pn9.pn, %bb.ap ], [ %i.bd, %bb.m ], [ %i.bd, %bb.n ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 299
  %i.bn = load i8, ptr %i.bm, align 1, !range !13, !noundef !8
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.aq, label %bb.ak

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
  unreachable

bb.r:                                             ; preds = %bb.b, %bb.h
  %.sroa.8.0 = phi ptr [ %i.an, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.am, %bb.h ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCsbvkFyIu7lgC_4core5panic11unwind_safe16AssertUnwindSafeINtNtB1u_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputuNtNtB1u_6marker4SendEL_EEEEB3f_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val22 = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %0, i64 288
  %.val23 = load ptr, ptr %i.br, align 8, !nonnull !8, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val22, ptr nonnull %.val23) #26
          to label %.body34 unwind label %bb.o

bb.t:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.b, align 8, !range !14, !noundef !8
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.u, label %bb.v

common.ret:                                       ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 1, %bb.ab ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ false, %bb.ab ]
  store i8 %storemerge, ptr %i.e, align 1
  ret i1 %common.ret.op

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.v:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noundef !8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8            ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val24 = load ptr, ptr %i.bp, align 8          ; 5 uses
  %i.by = getelementptr i8, ptr %0, i64 288
  %.val25 = load ptr, ptr %i.by, align 8, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.bz = load ptr, ptr %.val25, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  invoke void %i.bz(ptr noundef nonnull %.val24)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef range(i64 1, -9223372036854775808) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.z:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.body34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef range(i64 1, -9223372036854775808) %i.ch, i64 noundef range(i64 1, 536870913) %i.ck) #23
  br label %.body34

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.y, %bb.x
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.cm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i8 0, ptr %i.cn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store atomic i8 0, ptr %i.cq release, align 8
  %i.cr = load ptr, ptr %i.bx, align 8, !invariant.load !8 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cr, null
  br i1 %.not.i36, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void %i.cr(ptr noundef nonnull %i.bv)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef range(i64 1, -9223372036854775808) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ag:                                            ; preds = %bb.ad
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body34, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef range(i64 1, -9223372036854775808) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #23
  br label %.body34

bb.ai:                                            ; preds = %bb.aj, %bb.g
  store i8 0, ptr %i.aj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 4, !range !13, !noundef !8
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aj:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.c)
          to label %bb.ai unwind label %bb.al

bb.ak:                                            ; preds = %bb.aq, %bb.al, %.body
  %.pn17 = phi { ptr, i32 } [ %i.dk, %bb.al ], [ %.pn12.pn.pn, %bb.aq ], [ %.pn12.pn.pn, %.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.dg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.di = load i8, ptr %i.dh, align 4, !range !13, !noundef !8
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42

bb.al:                                            ; preds = %bb.aj
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.am, %bb.an, %bb.ai
  store i8 0, ptr %i.dd, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.dl = load ptr, ptr %i.d, align 8, !alias.scope !550, !nonnull !8, !noundef !8
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !550
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42: ; preds = %bb.ar, %bb.as, %bb.ao, %bb.ak
  %.pn19 = phi { ptr, i32 } [ %i.dp, %bb.ao ], [ %.pn17, %bb.ak ], [ %.pn17, %bb.as ], [ %.pn17, %bb.ar ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i8 0, ptr %i.do, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.e, align 1
  resume { ptr, i32 } %.pn19

bb.ao:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42

bb.ap:                                            ; preds = %.body34
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.sroa.0.0, ptr %.sroa.8.0) #26
          to label %.body unwind label %bb.o

bb.aq:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.c) #26
          to label %bb.ak unwind label %bb.o

bb.ar:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.dq = load ptr, ptr %i.d, align 8, !alias.scope !557, !nonnull !8, !noundef !8
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !557
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42 unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0B1O_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.017 = alloca [256 x i8], align 8         ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 330 ; 3 uses
  %i.e = load i8, ptr %i.d, align 2, !range !33, !noundef !8
  switch i8 %i.e, label %default.unreachable26 [
    i8 0, label %bb.b
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.c
  ]

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 4 uses
  store ptr %i.j, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.l = load i8, ptr %i.k, align 1, !range !33, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !align !12, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  %.val = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.f, align 8
  store ptr %i.j, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val13 = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  invoke fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.q)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.017, i64 256, i1 false)
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.r, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.j, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %i.l, ptr %.sroa.1021.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  br label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !558
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h
end_hunk_3
