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
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
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
end_hunk_0
begin_hunk_1_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.czg) #26
          to label %.body40.i unwind label %bb.aez

.body347:                                         ; preds = %bb.aab, %bb.aaa
  %i.czh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.cfk, align 1
  %cond.i354 = icmp eq i8 %.pr, 3
  br i1 %cond.i354, label %bb.afd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.afb:                                           ; preds = %.thread.i317, %bb.aei
  %i.czi = phi ptr [ %i.cxo, %.thread.i317 ], [ %i.cmh, %bb.aei ]
  store i8 3, ptr %i.czi, align 1, !noalias !1092
  br label %common.ret

bb.afc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.yq, %bb.aet
  %i.czj = phi ptr [ %i.cfl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.cfl, %bb.yq ], [ %i.cmh, %bb.aet ]
  store i8 1, ptr %i.czj, align 1, !noalias !1092
  br label %bb.yj

bb.afd:                                           ; preds = %.body347
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtBO_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19scan_and_invalidate0EB2u_(ptr noundef nonnull align 8 %i.cfj)
          to label %bb.aff unwind label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  %i.czk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.czl = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.czl, align 4
  br label %.body355

bb.aff:                                           ; preds = %bb.afd
  %i.czm = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.czm, align 4
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit: ; preds = %bb.yj
  %i.czn = getelementptr i8, ptr %0, i64 104
  %.val123 = load i64, ptr %i.czn, align 8        ; 2 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cev, i64 8
  %i.czp = load i64, ptr %i.czo, align 8          ; 2 uses
  %.not77.not = icmp ugt i64 %.val123, %i.czp
  br i1 %.not77.not, label %.thread722, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread

.thread722:                                       ; preds = %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit
  %i.czq = sub nuw i64 %.val123, %i.czp
  %i.czr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.czs = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.czt = load i32, ptr %i.czs, align 4, !noundef !8
  %.sroa.7475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.czq, ptr %.sroa.7475.0..sroa_idx, align 8
  %.sroa.9477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.cev, ptr %.sroa.9477.0..sroa_idx, align 8
  %.sroa.10478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.czu = load <2 x ptr>, ptr %i.czr, align 8
  %i.czv = getelementptr inbounds nuw i8, <2 x ptr> %i.czu, i64 16
  store <2 x ptr> %i.czv, ptr %.sroa.10478.0..sroa_idx, align 8
  %.sroa.12480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.cew, ptr %.sroa.12480.0..sroa_idx, align 8
  %.sroa.13481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.czt, ptr %.sroa.13481.0..sroa_idx, align 8
  %.sroa.15483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 383
  store i8 0, ptr %.sroa.15483.0..sroa_idx, align 1
  %i.czw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.czx = getelementptr inbounds nuw i8, ptr %0, i64 383
  br label %bb.ak

.body292:                                         ; preds = %bb.yf, %bb.ub
  %i.czy = phi ptr [ %i.bqt, %bb.ub ], [ %i.bqa, %bb.yf ]
  %.pn66 = phi { ptr, i32 } [ %.pn33.pn.i, %bb.ub ], [ %i.ceq, %bb.yf ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE32evict_expired_entries_using_deqs0EB2m_(ptr noundef nonnull align 8 %i.czy) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

.body251:                                         ; preds = %bb.ts, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_4sync3ArcNtNtBN_6string6StringEybEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.czz = phi ptr [ %i.bjk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_4sync3ArcNtNtBN_6string6StringEybEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bit, %bb.ts ]
  %.pn60 = phi { ptr, i32 } [ %.pn29.pn.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_4sync3ArcNtNtBN_6string6StringEybEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bpe, %bb.ts ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0EB2m_(ptr noundef nonnull align 8 %i.czz) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

bb.afg:                                           ; preds = %.body217
  %i.daa = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.dab = load i8, ptr %i.daa, align 4, !range !33, !noundef !8
  %cond.i.i359 = icmp eq i8 %i.dab, 3
  br i1 %cond.i.i359, label %bb.afh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.afh:                                           ; preds = %bb.afg
  %i.dac = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

.body195:                                         ; preds = %bb.qb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dad = phi ptr [ %i.zx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.xz, %bb.qb ]
  %.pn51 = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bei, %bb.qb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12apply_writes0EB2m_(ptr noundef nonnull align 8 %i.dad) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

bb.afi:                                           ; preds = %.body173
  %i.dae = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

.body148:                                         ; preds = %bb.di, %.body42.i
  %i.daf = phi ptr [ %i.fm, %.body42.i ], [ %i.fj, %bb.di ]
  %.pn80 = phi { ptr, i32 } [ %.pn31.pn.i, %.body42.i ], [ %i.pl, %bb.di ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17evict_lru_entries0EB2m_(ptr noundef nonnull align 8 %i.daf) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

bb.afj:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.dag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.dag, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.dah = atomicrmw sub ptr %.val, i64 1 release, align 8 ; 0 uses
  %i.dai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dai) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !167, !noundef !8
  switch i8 %i.g, label %default.unreachable103 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.bc
    i8 4, label %bb.f
  ]

default.unreachable103:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 250
  %i.n = load i8, ptr %i.m, align 2, !range !33, !noundef !8
  store i8 %i.n, ptr %i.l, align 4
  %i.o = load <2 x ptr>, ptr %i.k, align 8
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !8, !align !12, !noundef !8 ; 3 uses
  store <2 x ptr> %i.o, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !align !12, !noundef !8
  store ptr %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.u = load i32, ptr %i.t, align 8, !noundef !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !8, !align !12, !noundef !8
  store ptr %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr i8, ptr %i.p, i64 120
  %.val41 = load i64, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.p, i64 128
  %.val42 = load i32, ptr %i.ac, align 8, !range !425, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %.val41, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.val42, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  %i.ah = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ag)
          to label %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit unwind label %bb.c ; 2 uses

.body49:                                          ; preds = %bb.aj, %bb.ai, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit67, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit64, %bb.c
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit64 ], [ %.pn29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit67 ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55 ], [ %i.ef, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.dt, %bb.ad ], [ %i.ai, %bb.c ]
  store i8 2, ptr %i.f, align 1
  resume { ptr, i32 } %.pn33.pn

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body49

_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit: ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.ah, 0
  %i.al = extractvalue { i64, i64 } %i.ah, 1
  store i64 %i.ak, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.aj, ptr %i.an, align 8
  %i.ao = load i8, ptr %i.l, align 4, !range !33, !noundef !8 ; 2 uses
  %i.ap = zext nneg i8 %i.ao to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_, i64 %i.ap
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.aq = zext nneg i8 %i.ao to i64
  %switch.gep105 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_.127, i64 %i.aq
  %switch.load106 = load ptr, ptr %switch.gep105, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %switch.load106, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %switch.ext, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 245
  store i8 1, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.u, ptr %i.av, align 4
  br label %.preheader

.preheader:                                       ; preds = %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.aw = phi i32 [ %i.u, %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit ], [ %.pre95, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  %i.ax = phi i32 [ 0, %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit ], [ %.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 148
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.ba = icmp ult i32 %i.ax, %i.aw
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 245 ; 3 uses
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.bq
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bj = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0B1O_(ptr noundef nonnull align 8 %i.bi, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_(ptr noundef nonnull align 8 %i.bi) #26
          to label %.body unwind label %bb.bl

bb.h:                                             ; preds = %bb.f
  br i1 %i.bj, label %common.ret, label %bb.i

common.ret:                                       ; preds = %bb.be, %bb.ax, %.loopexit, %bb.h
  %.sink = phi i8 [ 1, %bb.ax ], [ 4, %bb.h ], [ 1, %.loopexit ], [ 3, %bb.be ]
  %common.ret.op = phi i1 [ false, %bb.ax ], [ true, %bb.h ], [ false, %.loopexit ], [ true, %bb.be ]
  store i8 %.sink, ptr %i.f, align 1
  ret i1 %common.ret.op

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 610
  %i.bm = load i8, ptr %i.bl, align 2, !range !33, !noundef !8
  switch i8 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit [
    i8 0, label %bb.j
    i8 3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1240, !nonnull !8, !noundef !8
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !1240
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit unwind label %bb.o

bb.l:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs95DO3lnzZ3L_4moka6future8notifierINtBL_15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE6notify0EB2r_(ptr noundef nonnull align 8 %i.bi)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i8 0, ptr %i.bs, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i8 0, ptr %i.bt, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit

bb.o:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit: ; preds = %bb.k, %bb.i, %bb.j, %bb.n, %bb.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !8, !align !12, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1241, !noundef !8
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.by, i64 1)
  store i64 %i.bz, ptr %i.bx, align 8, !alias.scope !1241
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.cd = load i8, ptr %i.cc, align 4, !range !33, !noundef !8
  %i.ce = invoke { ptr, ptr } @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE10select_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.cb, i8 noundef %i.cd)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0EB2v_.exit
  %i.cg = extractvalue { ptr, ptr } %i.ce, 0
  %i.ch = extractvalue { ptr, ptr } %i.ce, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !8, !noundef !8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !8, !align !12, !noundef !8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store i8 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !8, !noundef !8
  %i.cr = load ptr, ptr %i.bv, align 8, !nonnull !8, !align !12, !noundef !8
  invoke void @_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE25handle_remove_with_dequesB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.q
  store i8 0, ptr %i.co, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.bu, %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val36 = load ptr, ptr %i.ct, align 8, !align !12, !noundef !8 ; 3 uses
  %i.cu = icmp eq ptr %.val36, null
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = atomicrmw sub ptr %.val36, i64 1 release, align 8 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val36, i64 8
  invoke fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.cw) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60: ; preds = %bb.bw, %bb.bj, %bb.bd, %bb.bv, %bb.v
  %.pn25 = phi { ptr, i32 } [ %i.cx, %bb.v ], [ %.pn22.pn, %bb.bv ], [ %.pn22.pn, %bb.bw ], [ %i.gx, %bb.bj ], [ %i.gj, %bb.bd ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock7KeyLockNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0) #26
          to label %bb.w unwind label %bb.bl

bb.v:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.u, %bb.t
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock7KeyLockNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60
  %.pn27 = phi { ptr, i32 } [ %i.db, %bb.x ], [ %.pn25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 247
  %i.cz = load i8, ptr %i.cy, align 1, !range !13, !noundef !8
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit67

bb.x:                                             ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 247 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !range !13, !noundef !8
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.z, %bb.aa, %bb.y
  store i8 0, ptr %i.dc, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !alias.scope !1244, !noalias !1232
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.pre95 = load i32, ptr %.phi.trans.insert94, align 4, !alias.scope !1249, !noalias !1229
  br label %.preheader

bb.z:                                             ; preds = %bb.y
end_hunk_1
begin_hunk_2_@_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1320
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1320
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.p, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs15_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_18AwsTempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !4, !noundef !8
  %.not1 = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %.not1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.w unwind label %bb.v

bb.s:                                             ; preds = %bb.q
  store i64 -9223372036854775808, ptr %i.o, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !noundef !8
  %.not2 = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not2, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.aa, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.af, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18AwsTempCredentialsEEB16_(ptr noalias noundef align 8 dereferenceable(96) %i.p) #26
          to label %common.resume unwind label %bb.ap

bb.v:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.t

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %bb.t
  store i64 -9223372036854775808, ptr %i.n, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !noundef !8
  %.not3 = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not3, label %bb.aj, label %bb.ad

bb.aa:                                            ; preds = %.body, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ai, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models22AzureUserDelegationSasEEB16_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #26
          to label %bb.u unwind label %bb.ap

bb.ab:                                            ; preds = %bb.x
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1326
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ag)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1326
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.ag unwind label %bb.af, !noalias !1330

bb.ae:                                            ; preds = %bb.ah, %bb.af
  %.pn.i7 = phi { ptr, i32 } [ %i.am, %bb.ah ], [ %i.ak, %bb.af ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.c) #26
          to label %.body unwind label %bb.ai, !noalias !1330

bb.af:                                            ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1326
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.am unwind label %bb.ah, !noalias !1330

bb.ah:                                            ; preds = %bb.ag
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.ae unwind label %bb.ai, !noalias !1330

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1330
  unreachable

bb.aj:                                            ; preds = %bb.z
  store i64 -9223372036854775808, ptr %i.m, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ao unwind label %bb.an

.body:                                            ; preds = %bb.al, %bb.ae, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.an ], [ %i.ao, %bb.al ], [ %.pn.i7, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenEEB16_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #26
          to label %bb.aa unwind label %bb.ap

bb.al:                                            ; preds = %bb.ad
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1331
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1331
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ak

bb.an:                                            ; preds = %bb.ak
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models17R2TempCredentialsEEB16_(ptr noalias noundef align 8 dereferenceable(72) %i.m) #26
          to label %.body unwind label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ap:                                            ; preds = %bb.an, %.body, %bb.aa, %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %.val = load i8, ptr %i.a, align 1, !range !33, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.128, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_3key7KeySinkNCINvXs0_NtB6_4pairINtB1C_14PairSerializerNtCseo6ZV82fEK1_3url8UrlQueryENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementReE0EENtB2F_10Serializer13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser3keyINtB5_7KeySinkNCINvXs0_NtB7_4pairINtB1a_14PairSerializerNtCseo6ZV82fEK1_3url8UrlQueryENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementReE0ENtNtB7_4part4Sink13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_3key7KeySinkNCINvXs0_NtB6_4pairINtB1C_14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementReE0EENtB2O_10Serializer13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser3keyINtB5_7KeySinkNCINvXs0_NtB7_4pairINtB1a_14PairSerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs1gOyXocuPRE_10serde_core3ser14SerializeTuple17serialize_elementReE0ENtNtB7_4part4Sink13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_5value9ValueSinkNtCseo6ZV82fEK1_3url8UrlQueryEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser5valueINtB4_9ValueSinkNtCseo6ZV82fEK1_3url8UrlQueryENtNtB6_4part4Sink13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_5value9ValueSinkNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs_NtNtCsiFSAbtmCsla_16serde_urlencoded3ser5valueINtB4_9ValueSinkNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB6_4part4Sink13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtB8_6traits8iterator8Iterator4nextB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1332, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1332, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %1, align 8, !alias.scope !1332
  tail call void @_RNvXs3_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB1I_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtBa_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00NtNtNtCs8CRAYtH5WmW_12futures_util6future6future9FutureExt5boxedB2b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1608) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1335
  %i.a = tail call noundef align 8 dereferenceable_or_null(1608) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 1608, i64 noundef 8) #23, !noalias !1335 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtBM_11Housekeeper20do_run_pending_tasksNtNtB4_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00E3newB2w_.exit, !prof !361

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1608) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtBO_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00EB2P_(ptr noundef nonnull align 8 dereferenceable(1608) %0) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtBM_11Housekeeper20do_run_pending_tasksNtNtB4_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00E3newB2w_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.a, ptr noundef nonnull align 8 dereferenceable(1608) %0, i64 1608, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @46, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs4j34XAPZOn0_4http5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCs4j34XAPZOn0_4http5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsee2lL6QbnsJ_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXsn_NtCseKAYRfgxGTE_14event_listener6notifyjNtB5_16IntoNotification17into_notification(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXsF_NtCseKAYRfgxGTE_14event_listener6notifylNtB5_16IntoNotification17into_notification(i32 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19remove_entry_if_andTB1e_B29_ENCNCNvMsd_NtNtB9_6future10base_cacheINtB5X_5InnerB1M_B3d_B4u_E13handle_upsert0s0_0NCB5P_s1_0NCINvMs_NtB7_7segmentINtB7p_7HashMapB1e_B29_E19remove_entry_if_andB5D_B5N_B77_NCB5P_s2_0E0EB3h_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB29_NCNvMsd_NtNtB9_6future10base_cacheINtB5S_5InnerB1M_B3d_B4u_E21skip_updated_entry_ao0NCINvMs_NtB7_7segmentINtB7e_7HashMapB1e_B29_E17get_key_value_andB29_B5K_NCINvB7b_3getB5K_E0E0EB3h_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB29_NCNvMsd_NtNtB9_6future10base_cacheINtB5S_5InnerB1M_B3d_B4u_E21skip_updated_entry_wo0NCINvMs_NtB7_7segmentINtB7e_7HashMapB1e_B29_E17get_key_value_andB29_B5K_NCINvB7b_3getB5K_E0E0EB3h_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB29_NCNvMsd_NtNtB9_6future10base_cacheINtB5S_5InnerB1M_B3d_B4u_E5admit0NCINvMs_NtB7_7segmentINtB6X_7HashMapB1e_B29_E17get_key_value_andB29_B5K_NCINvB6U_3getB5K_E0E0EB3h_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsG_Cs3fLsjMQPbhe_8smallvecINtB5_8IntoIterATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtB2i_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(288)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtB2i_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NvCseKAYRfgxGTE_14event_listener1__INtB7_13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1Y_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

end_hunk_2
