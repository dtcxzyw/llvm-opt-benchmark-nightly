Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsxECskY9G75ZWc4U_11polars_expr:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEECskY9G75ZWc4U_11polars_expr(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !54856 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !54885 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !54886, !range !2328, !noundef !2226
  store i8 2, ptr %i.a, align 1, !dbg !54887
  %i.c = icmp eq i8 %i.b, 1, !dbg !54888
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !54888

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !54889 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !54890
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !54891
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i unwind label %bb.c, !dbg !54892

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtB1n_8LruEntryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d) #52
          to label %.body.i unwind label %bb.f, !dbg !54890

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB7_6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.d, !dbg !54893

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB7_6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %.body.i unwind label %bb.e, !dbg !54894

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !54893
  unreachable, !dbg !54893

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !54890
  unreachable, !dbg !54890

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB7_6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEE0ECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.g, !dbg !54895

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i, !dbg !54896

.body.i:                                          ; preds = %bb.g, %bb.d, %bb.c
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #50
          to label %.noexc1.i unwind label %bb.h, !dbg !54897

.noexc1.i:                                        ; preds = %.body.i
  unreachable, !dbg !54897

bb.h:                                             ; preds = %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !54898
  unreachable, !dbg !54898

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.a
  ret void, !dbg !54899
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !54900 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !54957 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !54958, !range !2328, !noundef !2226
  store i8 2, ptr %i.a, align 1, !dbg !54959
  %i.c = icmp eq i8 %i.b, 1, !dbg !54960
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !54960

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !54961 ; 5 uses
  invoke void @_RNvXs_NtCs4BcJZGCY6Ba_10rayon_core11thread_poolNtB4_10ThreadPoolNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c, !dbg !54962

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54949), !dbg !54962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54950), !dbg !54963
  %i.f = load ptr, ptr %i.d, align 8, !dbg !54964, !alias.scope !54951, !nonnull !2226, !noundef !2226
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !54965, !noalias !54952
  %i.h = icmp eq i64 %i.g, 1, !dbg !54966
  br i1 %i.h, label %bb.d, label %.body.i, !dbg !54966

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !54967
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %.body.i unwind label %bb.g, !dbg !54968

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54953), !dbg !54962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54954), !dbg !54969
  %i.i = load ptr, ptr %i.d, align 8, !dbg !54970, !alias.scope !54955, !nonnull !2226, !noundef !2226
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !54971, !noalias !54956
  %i.k = icmp eq i64 %i.j, 1, !dbg !54972
  br i1 %i.k, label %bb.f, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !54972

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !54973
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.h, !dbg !54974

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !54962
  unreachable, !dbg !54962

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i, !dbg !54975

.body.i:                                          ; preds = %bb.h, %bb.d, %bb.c
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #50
          to label %.noexc1.i unwind label %bb.i, !dbg !54976

.noexc1.i:                                        ; preds = %.body.i
  unreachable, !dbg !54976

bb.i:                                             ; preds = %.body.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !54977
  unreachable, !dbg !54977

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void, !dbg !54978
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr(ptr nofree noundef captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !54979 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !55007 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !55008, !range !2328, !noundef !2226
  store i8 2, ptr %i.a, align 1, !dbg !55009
  %i.c = icmp eq i8 %i.b, 1, !dbg !55010
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !55010

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !dbg !55011, !noundef !2226 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072, !dbg !55012
  %i.e = load i64, ptr %i.d, align 8, !dbg !55013, !noundef !2226
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080, !dbg !55014 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !55015, !noundef !2226 ; 2 uses
  %i.h = add i64 %i.g, -1, !dbg !55016
  store i64 %i.h, ptr %i.f, align 8, !dbg !55017
  %i.i = icmp eq i64 %i.e, 0, !dbg !55018
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j, !dbg !55018
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !55018, !prof !2376

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleE0ECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !55019

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #50
          to label %.noexc1.i unwind label %bb.e, !dbg !55020

.noexc1.i:                                        ; preds = %bb.d
  unreachable, !dbg !55020

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !55021
  unreachable, !dbg !55021

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void, !dbg !55022
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4ItermEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtB1A_8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3n_3VecmE14extend_trustedINtNtB8_3rev3RevBQ_EE0E0ECskY9G75ZWc4U_11polars_expr(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !55023 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !55075 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !55075
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !55075 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !55075
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !55075 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !55076
  br i1 %i.a, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldmuNCINvNvNtNtBP_8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3m_3VecmE14extend_trustedINtNtB1V_3rev3RevINtB1T_6CopiedB3_EEE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph.i.preheader, !dbg !55077

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !55075
  %i.c = ptrtoaddr ptr %1 to i64, !dbg !55075
  %i.d = add i64 %i.c, -4, !dbg !55077
  %i.e = sub i64 %i.d, %i.b, !dbg !55077          ; 3 uses
  %i.f = lshr i64 %i.e, 2, !dbg !55077
  %i.g = add nuw nsw i64 %i.f, 1, !dbg !55077     ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 108, !dbg !55077
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.memcheck, !dbg !55077

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.h = shl i64 %.sroa.4.0.copyload, 2, !dbg !55077 ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.h, !dbg !55077
  %i.j = and i64 %i.e, -4, !dbg !55077            ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.h, !dbg !55077
  %i.l = getelementptr i8, ptr %i.k, i64 %i.j, !dbg !55077
  %i.m = getelementptr i8, ptr %i.l, i64 4, !dbg !55077
  %i.n = sub nuw nsw i64 -4, %i.j, !dbg !55077
  %i.o = getelementptr i8, ptr %1, i64 %i.n, !dbg !55077
  %bound0 = icmp ult ptr %i.i, %1, !dbg !55077
  %bound1 = icmp ult ptr %i.o, %i.m, !dbg !55077
  %found.conflict = and i1 %bound0, %bound1, !dbg !55077
  br i1 %found.conflict, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775800      ; 4 uses
  %i.p = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.q = mul i64 %n.vec, -4
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %1, i64 %i.t  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16, !dbg !55078
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32, !dbg !55078
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !dbg !55078, !alias.scope !55070, !noalias !55071
  %wide.load4 = load <4 x i32>, ptr %i.v, align 4, !dbg !55078, !alias.scope !55070, !noalias !55071
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55078
  %reverse5 = shufflevector <4 x i32> %wide.load4, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55078
  %i.w = getelementptr [4 x i8], ptr %i.s, i64 %index, !dbg !55079 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !55080
  store <4 x i32> %reverse, ptr %i.w, align 4, !dbg !55080, !alias.scope !55072, !noalias !55073
  store <4 x i32> %reverse5, ptr %i.x, align 4, !dbg !55080, !alias.scope !55072, !noalias !55073
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !55077
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !55077, !llvm.loop !55053

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !55077
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldmuNCINvNvNtNtBP_8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3m_3VecmE14extend_trustedINtNtB1V_3rev3RevINtB1T_6CopiedB3_EEE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph.i.preheader7, !dbg !55077

.lr.ph.i.preheader7:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  %.sroa.2.012.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i, !dbg !55077

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %i.z = phi i64 [ %i.ac, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader7 ], !dbg !55081 ; 2 uses
  %.sroa.2.012.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.2.012.i.ph, %.lr.ph.i.preheader7 ]
  %i.aa = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -4, !dbg !55081 ; 3 uses
  %.val8.i = load i32, ptr %i.aa, align 4, !dbg !55078, !noalias !55071, !noundef !2226
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.z, !dbg !55079
  store i32 %.val8.i, ptr %i.ab, align 4, !dbg !55080, !noalias !55074
  %i.ac = add i64 %i.z, 1, !dbg !55082            ; 2 uses
  %i.ad = icmp eq ptr %0, %i.aa, !dbg !55076
  br i1 %i.ad, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldmuNCINvNvNtNtBP_8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3m_3VecmE14extend_trustedINtNtB1V_3rev3RevINtB1T_6CopiedB3_EEE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph.i, !dbg !55077, !llvm.loop !55060

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldmuNCINvNvNtNtBP_8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3m_3VecmE14extend_trustedINtNtB1V_3rev3RevINtB1T_6CopiedB3_EEE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %i.ac, %.lr.ph.i ], !dbg !55083
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !55084, !noalias !55071
  ret void, !dbg !55085
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestNtNtB8_7float164pf16ECskY9G75ZWc4U_11polars_expr(i16 noundef %0, i16 noundef %1) unnamed_addr #8 !dbg !55086 {
bb.a:
  %i.a = and i16 %0, 32767, !dbg !55094
  %i.b = icmp samesign ugt i16 %i.a, 31744, !dbg !55094
  br i1 %i.b, label %bb.h, label %bb.b, !dbg !55095

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %1, 32767, !dbg !55096           ; 2 uses
  %i.d = icmp samesign ugt i16 %i.c, 31744, !dbg !55096
  br i1 %i.d, label %bb.h, label %bb.c, !dbg !55097

bb.c:                                             ; preds = %bb.b
  %.not.i2 = icmp slt i16 %1, 0, !dbg !55098      ; 2 uses
  %i.e = icmp sgt i16 %0, -1, !dbg !55099
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !55099

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i2, label %bb.g, label %bb.f, !dbg !55099

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ugt i16 %1, %0
  %spec.select = and i1 %.not.i2, %i.f, !dbg !55099
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread, !dbg !55099

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i16 %0, %1, !dbg !55100
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread, !dbg !55101

bb.g:                                             ; preds = %bb.d
  %i.h = or i16 %i.c, %0, !dbg !55102
  %i.i = icmp ne i16 %i.h, 0, !dbg !55102
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread, !dbg !55103

_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.0.0.i3.ph = phi i1 [ %i.i, %bb.g ], [ %spec.select, %bb.e ], [ %i.g, %bb.f ]
  %i.j = select i1 %.sroa.0.0.i3.ph, i16 %0, i16 %1, !dbg !55104
  br label %bb.h, !dbg !55100

bb.h:                                             ; preds = %bb.a, %bb.b, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread
  %.sroa.0.0.i = phi i16 [ %i.j, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread ], [ %1, %bb.b ], [ %0, %bb.a ], !dbg !55100
  ret i16 %.sroa.0.0.i, !dbg !55105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestaECskY9G75ZWc4U_11polars_expr(i8 noundef %0, i8 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55106 {
bb.a:
  %.sroa.0.0.i = tail call i8 @llvm.smax.i8(i8 %0, i8 %1), !dbg !55109
  ret i8 %.sroa.0.0.i, !dbg !55110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef double @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestdECskY9G75ZWc4U_11polars_expr(double noundef %0, double noundef %1) unnamed_addr #8 !dbg !55111 {
bb.a:
  %i.a = fcmp ogt double %0, %1, !dbg !55114
  %i.b = fcmp uno double %0, 0.000000e+00, !dbg !55115
  %i.c = or i1 %i.b, %i.a, !dbg !55114
  %..i = select i1 %i.c, double %0, double %1, !dbg !55116
  ret double %..i, !dbg !55117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef float @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestfECskY9G75ZWc4U_11polars_expr(float noundef %0, float noundef %1) unnamed_addr #8 !dbg !55118 {
bb.a:
  %i.a = fcmp ogt float %0, %1, !dbg !55121
  %i.b = fcmp uno float %0, 0.000000e+00, !dbg !55122
  %i.c = or i1 %i.b, %i.a, !dbg !55121
  %..i = select i1 %i.c, float %0, float %1, !dbg !55123
  ret float %..i, !dbg !55124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4besthECskY9G75ZWc4U_11polars_expr(i8 noundef %0, i8 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55125 {
bb.a:
  %.sroa.0.0.i = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !55128
  ret i8 %.sroa.0.0.i, !dbg !55129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i32 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestlECskY9G75ZWc4U_11polars_expr(i32 noundef %0, i32 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55130 {
bb.a:
  %.sroa.0.0.i = tail call i32 @llvm.smax.i32(i32 %0, i32 %1), !dbg !55133
  ret i32 %.sroa.0.0.i, !dbg !55134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i32 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestmECskY9G75ZWc4U_11polars_expr(i32 noundef %0, i32 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55135 {
bb.a:
  %.sroa.0.0.i = tail call i32 @llvm.umax.i32(i32 %0, i32 %1), !dbg !55138
  ret i32 %.sroa.0.0.i, !dbg !55139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i128 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestnECskY9G75ZWc4U_11polars_expr(i128 noundef %0, i128 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55140 {
bb.a:
  %.sroa.0.0.i = tail call i128 @llvm.smax.i128(i128 %0, i128 %1), !dbg !55143
  ret i128 %.sroa.0.0.i, !dbg !55144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i128 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestoECskY9G75ZWc4U_11polars_expr(i128 noundef %0, i128 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55145 {
bb.a:
  %.sroa.0.0.i = tail call i128 @llvm.umax.i128(i128 %0, i128 %1), !dbg !55148
  ret i128 %.sroa.0.0.i, !dbg !55149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestsECskY9G75ZWc4U_11polars_expr(i16 noundef %0, i16 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55150 {
bb.a:
  %.sroa.0.0.i = tail call i16 @llvm.smax.i16(i16 %0, i16 %1), !dbg !55153
  ret i16 %.sroa.0.0.i, !dbg !55154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4besttECskY9G75ZWc4U_11polars_expr(i16 noundef %0, i16 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55155 {
bb.a:
  %.sroa.0.0.i = tail call i16 @llvm.umax.i16(i16 %0, i16 %1), !dbg !55158
  ret i16 %.sroa.0.0.i, !dbg !55159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvXs1_NtCs2mZqlW55729_12polars_utils7min_maxNtB6_15MaxPropagateNanNtB6_12MinMaxPolicy4bestxECskY9G75ZWc4U_11polars_expr(i64 noundef %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !55160 {
bb.a:
  %.sroa.0.0.i = tail call i64 @llvm.smax.i64(i64 %0, i64 %1), !dbg !55163
  ret i64 %.sroa.0.0.i, !dbg !55164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
end_hunk_0
