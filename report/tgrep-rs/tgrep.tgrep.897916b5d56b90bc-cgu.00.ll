Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.00?download=true
inline.NumInlined: 2834
inline.NumDeleted: 785
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1i_:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore13IgnoreMatcherEEECsbNLsQi0JuJ4_5tgrep.exit.i
  resume { ptr, i32 } %.pn26.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEENtNtNtB1w_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cc)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #31
          to label %.body.i unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.f

.body.i:                                          ; preds = %bb.f, %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore17TrackedMembershipECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.a) #31
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.i = load i64, ptr %i.a, align 8, !range !14, !alias.scope !354, !noundef !9
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i.i.i = load i32, ptr %i.k, align 8, !alias.scope !357, !noundef !9
  switch i32 %.val.i.i.i.i, label %bb.h [
    i32 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreECsbNLsQi0JuJ4_5tgrep.exit
    i32 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreECsbNLsQi0JuJ4_5tgrep.exit
    i32 0, label %bb.i
  ], !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @73, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #34, !noalias !358
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !359, !noundef !9
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !360, !noundef !9
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i: ; preds = %bb.j, %bb.i
  %.sink.i.i = phi ptr [ %i.l, %bb.i ], [ %i.o, %bb.j ]
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sink.i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreECsbNLsQi0JuJ4_5tgrep.exit

bb.k:                                             ; preds = %.body.i, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.g, %bb.g, %bb.i, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs22empcGmRho_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB37_13RefUnwindSafeNtB3L_4SyncEL_EEECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !363 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !363, !nonnull !9, !align !11, !noundef !9 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !9, !noalias !363 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.e, !noalias !363

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !invariant.load !9, !noalias !363 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !364, !invariant.load !9, !noalias !363
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #32, !noalias !363
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !9, !noalias !363 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !364, !invariant.load !9, !noalias !363
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #32, !noalias !363
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val) #31
          to label %.body3.i.i unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d, %bb.c
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %.body3.i.i unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body3.i.i:                                       ; preds = %bb.j, %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %.body.i.i ], [ %i.r, %bb.j ], [ %i.o, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(1400) %i.q) #31
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(1400) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB3k_13RefUnwindSafeNtB3Y_4SyncEL_EEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.l

bb.k:                                             ; preds = %.body3.i.i, %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.body3.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %.pn.i.i, %.body3.i.i ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #32
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB3k_13RefUnwindSafeNtB3Y_4SyncEL_EEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #32
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbNLsQi0JuJ4_5tgrep5serve13WatchRegistryEEEEB2f_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !15, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.g, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbNLsQi0JuJ4_5tgrep5serve13WatchRegistryEEEB1W_.exit, !prof !20

bb.e:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbNLsQi0JuJ4_5tgrep5serve13WatchRegistryEEEB1W_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbNLsQi0JuJ4_5tgrep5serve13WatchRegistryEEEB1W_.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore28TrackedMembershipFingerprintEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !15, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.g, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore28TrackedMembershipFingerprintEEECsbNLsQi0JuJ4_5tgrep.exit, !prof !20

bb.e:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore28TrackedMembershipFingerprintEEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore28TrackedMembershipFingerprintEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve15ReconcileStatusEEEB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !15, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.g, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve15ReconcileStatusEEB1A_.exit, !prof !20

bb.e:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve15ReconcileStatusEEB1A_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve15ReconcileStatusEEB1A_.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEEB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !15, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_0s5_0B7_:bb.a
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx10, align 8, !noalias !899
  invoke void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2l_8adapters6cloned6ClonedINtNtB3n_6filter6FilterINtNtNtB2n_5slice4iter4IterBO_ENCNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_0s5_0s0_0EEEB4S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f, !noalias !898

bb.f:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body unwind label %bb.g, !noalias !898

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !898
  unreachable

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !898
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve16ignore_stamps_of0B5_(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = tail call { ptr, i64 } @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path12strip_prefixRBw_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load i64, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !911
  store i8 92, ptr %i.f, align 1, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !911
  store i8 47, ptr %i.e, align 1, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !911
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store ptr %i.q, ptr %i.d, align 8, !noalias !911
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %i.u, align 8, !noalias !911
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.v, align 8, !noalias !911
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.e, ptr %i.w, align 8, !noalias !911
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.x = extractvalue { ptr, i64 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !912
  store i8 92, ptr %i.c, align 1, !noalias !912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !912
  store i8 47, ptr %i.b, align 1, !noalias !912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !912
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store ptr %i.z, ptr %i.a, align 8, !noalias !912
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !912
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8, !noalias !912
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.af, align 8, !noalias !912
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #31
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !912
  %i.ah = load i64, ptr %i.k, align 8, !range !8, !alias.scope !913, !noundef !9
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.n, %bb.d, %bb.k, %bb.v, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.aj, %bb.g ], [ %i.ag, %bb.d ], [ %i.az, %bb.v ], [ %i.ax, %bb.s ], [ %i.am, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve16ignore_digest_of(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.p unwind label %bb.v

bb.j:                                             ; preds = %bb.v, %bb.k, %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #31
          to label %common.resume unwind label %bb.j

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !911
  %i.an = load i64, ptr %i.j, align 8, !range !8, !alias.scope !914, !noundef !9
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i12 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i12: ; preds = %bb.m
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit13

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit13: ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.i

bb.p:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.i, align 8, !range !14, !noundef !9
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTyyENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.au, i64 noundef %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.r
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.v:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #31
          to label %common.resume unwind label %bb.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtCsbNLsQi0JuJ4_5tgrep5serve24start_file_watcher_usingINvCsaNF60lbdjjq_6notify19recommended_watcherINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTINtNtB2r_6result6ResultNtNtCs6mHKL3HfXZM_12notify_types5event5EventNtNtB14_5error5ErrorEEEp6OutputuNtNtB2r_6marker4SendEL_EEE0INtB2n_6FnOnceB33_E9call_once6vtableBb_(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !918
  invoke void @_RNCINvNtCsbNLsQi0JuJ4_5tgrep5serve24start_file_watcher_usingINvCsaNF60lbdjjq_6notify19recommended_watcherINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTINtNtB2m_6result6ResultNtNtCs6mHKL3HfXZM_12notify_types5event5EventNtNtBZ_5error5ErrorEEEp6OutputuNtNtB2m_6marker4SendEL_EEE0B6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %_RNvYNCINvNtCsbNLsQi0JuJ4_5tgrep5serve24start_file_watcher_usingINvCsaNF60lbdjjq_6notify19recommended_watcherINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTINtNtB2p_6result6ResultNtNtCs6mHKL3HfXZM_12notify_types5event5EventNtNtB12_5error5ErrorEEEp6OutputuNtNtB2p_6marker4SendEL_EEE0INtB2l_6FnOnceB31_E9call_onceB9_.exit unwind label %bb.b, !noalias !919

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtCsbNLsQi0JuJ4_5tgrep5serve24start_file_watcher_usingINvCsaNF60lbdjjq_6notify19recommended_watcherINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTINtNtB4_6result6ResultNtNtCs6mHKL3HfXZM_12notify_types5event5EventNtNtB1B_5error5ErrorEEEp6OutputuNtNtB4_6marker4SendEL_EEE0EBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #31
          to label %bb.d unwind label %bb.c, !noalias !919

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !919
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYNCINvNtCsbNLsQi0JuJ4_5tgrep5serve24start_file_watcher_usingINvCsaNF60lbdjjq_6notify19recommended_watcherINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTINtNtB2p_6result6ResultNtNtCs6mHKL3HfXZM_12notify_types5event5EventNtNtB12_5error5ErrorEEEp6OutputuNtNtB2p_6marker4SendEL_EEE0INtB2l_6FnOnceB31_E9call_onceB9_.exit: ; preds = %bb.a
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtCsbNLsQi0JuJ4_5tgrep5serve24start_file_watcher_usingINvCsaNF60lbdjjq_6notify19recommended_watcherINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTINtNtB4_6result6ResultNtNtCs6mHKL3HfXZM_12notify_types5event5EventNtNtB1B_5error5ErrorEEEp6OutputuNtNtB4_6marker4SendEL_EEE0EBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !noalias !919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtCs5Xr050g3D4S_3std6thread11join_handle10JoinHandleuENtNtNtB4_2io5error5ErrorE6expectCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !9
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  store ptr %i.e, ptr %i.a, align 8
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #35
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_11DecodedFile3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 3) %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core8encoding24decode_owned_with_fixups(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1, i64 noundef %2, ptr %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_18RecentReindexCache19matching_overlay_id(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs9_CsgkkDPjMtGWv_3lruINtB6_8LruCacheNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE3geteEB1j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !922, !noundef !9
  %i.d = icmp eq i64 %i.c, %4
  br i1 %i.d, label %_RNCNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB7_18RecentReindexCache19matching_overlay_id0B9_.exit.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit.thread

_RNCNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB7_18RecentReindexCache19matching_overlay_id0B9_.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !922, !nonnull !9, !noundef !9
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull readonly %3, i64 %4), !noalias !922
  %bcmp.i.fr.i = freeze i32 %bcmp.i.i
  %i.g = icmp eq i32 %bcmp.i.fr.i, 0
  br i1 %i.g, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit.thread

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit: ; preds = %_RNCNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB7_18RecentReindexCache19matching_overlay_id0B9_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noundef !9
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit.thread

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit.thread: ; preds = %_RNCNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB7_18RecentReindexCache19matching_overlay_id0B9_.exit.i, %bb.b, %bb.a, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit
  %.sroa.3.0 = phi i32 [ %i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %_RNCNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB7_18RecentReindexCache19matching_overlay_id0B9_.exit.i ]
  %.sroa.0.0 = phi i32 [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE6filterNCNvMs2_BL_NtBL_18RecentReindexCache19matching_overlay_id0EBN_.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %_RNCNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB7_18RecentReindexCache19matching_overlay_id0B9_.exit.i ]
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_18RecentReindexCache3put(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !927
  invoke void @_RINvMs9_CsgkkDPjMtGWv_3lruINtB6_8LruCacheNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexE3popeEB1j_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.m = load i64, ptr %i.b, align 8, !range !8, !noalias !927, !noundef !9
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !927
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !926, !noalias !928, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !927, !noundef !9 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 %i.q)
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !926, !noalias !928
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEBF_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.thread44 unwind label %bb.d
end_hunk_1
begin_hunk_2_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve12publish_file:bb.a
  store i64 %1, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.m, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @95, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.k, %bb.c
  %.sroa.0.1 = phi ptr [ %i.af, %bb.k ], [ null, %bb.c ]
  ret ptr %.sroa.0.1

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.p = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.q = and i64 %i.p, 3
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !18

default.unreachable:                              ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  unreachable

bb.f:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.r = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = invoke noundef i8 %i.v(i32 noundef %i.t)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.l, !inline_history !2

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.x = lshr i64 %i.p, 32
  %i.y = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.x to i8   ; 2 uses
  %i.z = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  call void @llvm.assume(i1 %i.z)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.ac = getelementptr i8, ptr %i.i, i64 31
  %i.ad = load i8, ptr %i.ac, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.i, %bb.h, %bb.g, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ad, %bb.i ], [ %switch.idx.cast.i.i.i, %bb.g ], [ %i.ab, %bb.h ], [ %i.w, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = invoke noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorEB1m_(i8 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.l:                                             ; preds = %.noexc, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.n, %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.e
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.e ], [ %lpad.thr_comm, %bb.l ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #31
          to label %bb.p unwind label %bb.m

bb.o:                                             ; preds = %bb.p
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.j, %bb.b, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph, %bb.n ], [ %i.j, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.j ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr null) #31
          to label %bb.o unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_file(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [80 x i8], align 8                ; 21 uses
  %i.f = alloca [176 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 1                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [17 x i8], align 1               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 12 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [80 x i8], align 8               ; 4 uses
  %i.ak = alloca [17 x i8], align 1               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 12 uses
  %i.at = alloca [17 x i8], align 1               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [176 x i8], align 8              ; 12 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [16 x i8], align 16              ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 11 uses
  %i.ba = alloca [24 x i8], align 8               ; 14 uses
  %i.bb = alloca [80 x i8], align 8               ; 19 uses
  %i.bc = alloca [176 x i8], align 8              ; 12 uses
  %i.bd = alloca [176 x i8], align 8              ; 10 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 11 uses
  %i.bg = alloca [4 x i8], align 4                ; 17 uses
  %i.bh = alloca [24 x i8], align 8               ; 13 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 16              ; 7 uses
  %i.bl = alloca [80 x i8], align 8               ; 12 uses
  %i.bm = alloca [176 x i8], align 8              ; 7 uses
  %i.bn = alloca [176 x i8], align 8              ; 8 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 7 uses
  %i.bq = alloca [4 x i8], align 4                ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 36 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %2, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 33 uses
  store i64 %3, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.bu = tail call noundef zeroext i1 @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path11starts_withRNtB7_7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuarduEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.val, i64 1040
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexuE4lockCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 4 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !9, !align !21 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !range !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cb = trunc nuw i8 %i.ca to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !9, !noundef !9
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !9
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve16open_within_root(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.d unwind label %bb.c

.thread66:                                        ; preds = %bb.da, %bb.hz, %.thread59, %bb.jm, %bb.jw, %.thread70, %bb.m, %.thread16, %bb.jr, %bb.c
  %.pn116.pn = phi { ptr, i32 } [ %i.wb, %bb.jr ], [ %.pn109.pn, %bb.jm ], [ %i.cg, %bb.c ], [ %.pn11415, %.thread16 ], [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.wm, %bb.jw ], [ %i.ws, %.thread70 ], [ %.pn105, %bb.da ], [ %.pn105, %bb.hz ], [ %.pn109.pn, %.thread59 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuarduEECsbNLsQi0JuJ4_5tgrep(ptr nonnull %i.by, i8 %i.ca) #31
          to label %bb.kb unwind label %bb.an

bb.c:                                             ; preds = %bb.ju, %bb.b
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

bb.d:                                             ; preds = %bb.b
  %i.ch = load i32, ptr %i.bp, align 8, !range !31, !noundef !9
  %i.ci = trunc nuw i32 %i.ch to i1
  br i1 %i.ci, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.val154 = load ptr, ptr %i.cj, align 8, !nonnull !9, !noundef !9 ; 10 uses
  %i.ck = ptrtoint ptr %.val154 to i64            ; 7 uses
  %i.cl = and i64 %i.ck, 3                        ; 4 uses
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !18

default.unreachable:                              ; preds = %bb.jx, %bb.js, %bb.jn, %bb.cs, %bb.bp, %bb.j, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.cm = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.jr

.noexc:                                           ; preds = %bb.f
  %i.cn = lshr i64 %i.ck, 32
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !9, !noundef !9
  %i.cr = invoke noundef i8 %i.cq(i32 noundef %i.co)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.jr, !inline_history !33

bb.g:                                             ; preds = %bb.e
  %i.cs = lshr i64 %i.ck, 32
  %i.ct = icmp ult ptr %.val154, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.cs to i8 ; 2 uses
  %i.cu = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ct)
  call void @llvm.assume(i1 %i.cu)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.h:                                             ; preds = %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %.val154, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.i:                                             ; preds = %bb.e
  %i.cx = getelementptr i8, ptr %.val154, i64 31
  %i.cy = load i8, ptr %i.cx, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %.noexc, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i8 [ %i.cy, %bb.i ], [ %switch.idx.cast.i.i.i.i, %bb.g ], [ %i.cw, %bb.h ], [ %i.cr, %.noexc ]
  switch i8 %.sroa.0.0.i.i, label %bb.j [
    i8 0, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
    i8 14, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
    i8 20, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
  ]

bb.j:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit
    i64 3, label %bb.k
    i64 0, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread
    i64 1, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread
  ], !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cz = icmp ult ptr %.val154, inttoptr (i64 188978561024 to ptr)
  %i.da = and i64 %i.ck, 1095216660480
  %i.db = icmp ne i64 %i.da, 1095216660480
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.assume(i1 %i.db)
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !range !23, !noundef !9 ; 4 uses
  store i32 %i.dd, ptr %i.bq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bm, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bq)
          to label %bb.n unwind label %.thread20

.thread20:                                        ; preds = %bb.jq, %bb.jp, %bb.y, %bb.am, %bb.al, %bb.l, %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, %bb.ab, %bb.u, %bb.s, %bb.p, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread16

bb.m:                                             ; preds = %bb.gx, %bb.hw, %bb.jf
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

bb.n:                                             ; preds = %bb.l
  %i.de = load i64, ptr %i.bm, align 8, !range !17, !noundef !9
  %i.df = icmp eq i64 %i.de, 2
  br i1 %i.df, label %bb.jn, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bn, ptr noundef nonnull align 8 dereferenceable(176) %i.bm, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.dg = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.dh = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve22record_path_visibility(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bn)
          to label %bb.p unwind label %.thread20

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bn)
          to label %bb.q unwind label %.thread20

bb.q:                                             ; preds = %bb.p
  %i.di = load i64, ptr %i.bl, align 8, !noundef !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !9 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !noundef !9
  %i.dn = and i32 %i.dm, 61440
  %i.do = icmp eq i32 %i.dn, 32768
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = load i64, ptr %i.bv, align 8, !range !14, !noundef !9
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q, %bb.t
  %i.dr = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.ds = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 18)
          to label %bb.v unwind label %.thread20

bb.t:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.du = load i64, ptr %i.dt, align 8
  %.not = icmp ugt i64 %i.dk, %i.du
  br i1 %.not, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %i.dv = invoke noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.w unwind label %.thread20

bb.v:                                             ; preds = %bb.y, %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.jl

bb.w:                                             ; preds = %bb.u
  br i1 %i.dv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %4, label %bb.ao, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dw = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.dx = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve18mark_filename_only(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dx)
          to label %bb.v unwind label %.thread20

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.val, i64 1272 ; 4 uses
  %i.dz = load atomic i32, ptr %i.dy monotonic, align 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search:bb.a
  %.sroa.031.0542 = phi ptr [ %i.ajs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_.exit261 ], [ %i.aji, %._crit_edge541 ] ; 4 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.031.0542, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.031.0542, i64 8
  %i.aju = load ptr, ptr %i.ajt, align 8, !nonnull !9, !noundef !9
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.031.0542, i64 16
  %i.ajw = load i64, ptr %i.ajv, align 8, !noundef !9
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.031.0542, i64 24 ; 2 uses
  %i.ajy = load ptr, ptr %i.ajx, align 8, !nonnull !9, !noundef !9
  %i.ajz = atomicrmw add ptr %i.ajy, i64 1 monotonic, align 8
  %i.aka = icmp slt i64 %i.ajz, 0
  br i1 %i.aka, label %bb.oy, label %bb.ox

._crit_edge545:                                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_.exit261, %._crit_edge541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.akb = load ptr, ptr %i.abp, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.akc = load i64, ptr %i.aam, align 8, !noundef !9
  %i.akd = getelementptr inbounds nuw [48 x i8], ptr %i.akb, i64 %i.akc
  store ptr %i.akb, ptr %i.dd, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.akd, ptr %i.ake, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.dg, ptr %i.akf, align 8
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB31_5slice4iter4IterTB12_NtNtCs5Xr050g3D4S_3std4path7PathBufEENCNvB1G_13handle_searchs1_0EE9from_iterB1I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.du, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dd)
          to label %bb.pc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ox:                                            ; preds = %.lr.ph544
  %i.akg = load ptr, ptr %i.ajx, align 8, !nonnull !9, !noundef !9
  %i.akh = invoke noundef ptr @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aju, i64 noundef %i.ajw, ptr noundef nonnull %i.akg)
          to label %bb.oz unwind label %.loopexit ; 3 uses

bb.oy:                                            ; preds = %.lr.ph544
  call void @llvm.trap()
  unreachable

bb.oz:                                            ; preds = %bb.ox
  store ptr %i.akh, ptr %i.de, align 8
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_.exit261, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.akj = atomicrmw sub ptr %i.akh, i64 1 release, align 8, !noalias !1678
  %i.akk = icmp eq i64 %i.akj, 1
  br i1 %i.akk, label %bb.pb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_.exit261

bb.pb:                                            ; preds = %bb.pa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_.exit261 unwind label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_.exit261: ; preds = %bb.pa, %bb.oz, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  %i.akl = icmp eq ptr %i.ajs, %i.ajk
  br i1 %i.akl, label %._crit_edge545, label %.lr.ph544

bb.pc:                                            ; preds = %._crit_edge545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB2a_.exit263 unwind label %bb.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB2a_.exit263: ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtB7_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %bb.pe unwind label %bb.pd

bb.pd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB2a_.exit263
  %i.akm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.thread480 unwind label %bb.pf

bb.pe:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB2a_.exit263
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit unwind label %bb.lt

bb.pf:                                            ; preds = %bb.pd
  %i.akn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit: ; preds = %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtB7_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.ph unwind label %bb.pg

bb.pg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit
  %i.ako = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %.body270 unwind label %bb.pi

bb.ph:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit272 unwind label %bb.ln

bb.pi:                                            ; preds = %bb.pg
  %i.akp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit272: ; preds = %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.pk unwind label %bb.pj

bb.pj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit272
  %i.akq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %.body274 unwind label %bb.pl

bb.pk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_.exit272
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.lg

bb.pl:                                            ; preds = %bb.pj
  %i.akr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.ll

.body291:                                         ; preds = %bb.tq, %bb.sd, %bb.pm, %bb.to, %.body288
  %.sroa.049.8 = phi i1 [ %.sroa.049.13, %.body288 ], [ false, %bb.to ], [ false, %bb.sd ], [ %.sroa.049.9, %bb.pm ], [ false, %bb.tq ]
  %.pn160 = phi { ptr, i32 } [ %.pn156.pn.pn, %.body288 ], [ %i.asi, %bb.to ], [ %i.arb, %bb.sd ], [ %i.aks, %bb.pm ], [ %i.asj, %bb.tq ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.du) #31
          to label %.body274 unwind label %bb.my

bb.pm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i322, %bb.se, %bb.po, %bb.pn, %bb.ll
  %.sroa.049.9 = phi i1 [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i322 ], [ false, %bb.se ], [ true, %bb.po ], [ true, %bb.pn ], [ true, %bb.ll ]
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %.body291

bb.pn:                                            ; preds = %bb.ll
  %i.akt = extractvalue { i64, i32 } %i.aah, 0
  %i.aku = extractvalue { i64, i32 } %i.aah, 1    ; 2 uses
  %i.akv = uitofp i64 %i.akt to double
  %i.akw = icmp ult i32 %i.aku, 1000000000
  call void @llvm.assume(i1 %i.akw)
  %i.akx = uitofp nneg i32 %i.aku to double
  %i.aky = fdiv nnan double %i.akx, 1.000000e+09
  %i.akz = fadd nnan double %i.aky, %i.akv
  %i.ala = fmul nnan double %i.akz, 1.000000e+03
  store double %i.ala, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  %i.alb = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now()
          to label %bb.po unwind label %bb.pm     ; 2 uses

bb.po:                                            ; preds = %bb.pn
  %i.alc = extractvalue { i64, i32 } %i.alb, 0
  %i.ald = extractvalue { i64, i32 } %i.alb, 1
  store i64 %i.alc, ptr %i.db, align 8
  %i.ale = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %i.ald, ptr %i.ale, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.alf = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.alg = load ptr, ptr %i.alf, align 8, !nonnull !9, !noundef !9
  %i.alh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ali = load i64, ptr %i.alh, align 8, !noundef !9
  store ptr %i.alg, ptr %i.cz, align 8
  %i.alj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.ali, ptr %i.alj, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.fc, ptr %i.alk, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %i.ex, ptr %i.all, align 8
  invoke void @_RINvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtB1g_6string6StringEINtNtB8_4iter20FromParallelIteratorIBA_B1I_B2v_EE13from_par_iterINtNtB2V_3map3MapINtNtB8_5slice4IterTB2v_INtNtB1g_4sync3ArcNtB1K_11DecodedFileEEENCNvB1K_13handle_searchs2_0EEB1M_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cz)
          to label %bb.pp unwind label %bb.pm

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.alm = load i64, ptr %i.da, align 8, !range !14, !noundef !9
  %i.aln = trunc nuw i64 %i.alm to i1
  br i1 %i.aln, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.alo, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.alp = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !nonnull !9, !noundef !9
  %i.alr = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.als = load i64, ptr %i.alr, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve14json_rpc_error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.cx, i32 noundef -32603, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.alq, i64 noundef %i.als)
          to label %bb.tp unwind label %bb.to

bb.pr:                                            ; preds = %bb.pp
  %i.alt = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.035.0.copyload = load i64, ptr %i.alt, align 8 ; 2 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.236.0.copyload = load ptr, ptr %.sroa.236.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %.sroa.337.0.copyload = load i64, ptr %.sroa.337.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  store i64 0, ptr %i.cw, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.alu, align 8
  %i.alv = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  store i64 0, ptr %i.alv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store i64 0, ptr %i.cv, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.alw, align 8
  %i.alx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 0, ptr %i.alx, align 8
  %i.aly = icmp ult i64 %.sroa.337.0.copyload, 144115188075855872
  call void @llvm.assume(i1 %i.aly)
  %.idx548 = shl nuw nsw i64 %.sroa.337.0.copyload, 6
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.236.0.copyload, i64 %.idx548
  %i.ama = icmp sgt i64 %.sroa.035.0.copyload, -1
  call void @llvm.assume(i1 %i.ama)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %.sroa.236.0.copyload, ptr %i.cu, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  store ptr %.sroa.236.0.copyload, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %.sroa.035.0.copyload, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  store ptr %i.alz, ptr %.sroa.641.0..sroa_idx, align 8
  %i.amb = icmp eq i64 %.sroa.337.0.copyload, 0
  br i1 %i.amb, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.pr
  %.sroa.7395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.amd = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ame = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.amf = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.ps:                                            ; preds = %bb.tk, %bb.tn
  %.pn156 = phi { ptr, i32 } [ %i.ash, %bb.tn ], [ %i.asd, %bb.tk ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit unwind label %bb.my

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %bb.tm
  %i.amh = phi ptr [ %.sroa.236.0.copyload, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.asf, %bb.tm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 64
  store ptr %i.ami, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !1679, !noalias !1680
  %.sroa.0.0.copyload394 = load i64, ptr %i.amh, align 8, !noalias !1679 ; 3 uses
  %.not149 = icmp eq i64 %.sroa.0.0.copyload394, -1
  br i1 %.not149, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.pt

bb.pt:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7395.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store i64 %.sroa.0.0.copyload394, ptr %i.ct, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7395.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7395.0..sroa_idx396, i64 56, i1 false)
  %i.amj = load ptr, ptr %.sroa.7395.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.amk = load i64, ptr %i.amc, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.aml = icmp ult i64 %i.amk, 288230376151711744
  call void @llvm.assume(i1 %i.aml)
  %i.amm = getelementptr inbounds nuw [32 x i8], ptr %i.amj, i64 %i.amk
  store ptr %i.amj, ptr %i.bo, align 8
  store i64 %.sroa.0.0.copyload394, ptr %i.amd, align 8
  store ptr %i.amj, ptr %i.ame, align 8
  store ptr %i.amm, ptr %i.amf, align 8
  invoke void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bo)
          to label %bb.tl unwind label %bb.tn

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit, %bb.tm, %bb.pr
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit278 unwind label %bb.pu

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit: ; preds = %bb.ro, %bb.py, %bb.ps, %.thread516, %bb.pu
  %.sroa.049.10 = phi i1 [ true, %bb.pu ], [ true, %bb.ps ], [ true, %.thread516 ], [ false, %bb.ro ], [ true, %bb.py ]
  %.pn156.pn = phi { ptr, i32 } [ %i.amn, %bb.pu ], [ %.pn156, %bb.ps ], [ %.pn152515, %.thread516 ], [ %i.aqp, %bb.ro ], [ %.pn154, %bb.py ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cv) #31
          to label %.body288 unwind label %bb.my

bb.pu:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, %bb.pw, %bb.pv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit278
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit278: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.amo = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.db)
          to label %bb.pv unwind label %bb.pu     ; 2 uses

bb.pv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit278
  %i.amp = extractvalue { i64, i32 } %i.amo, 0
  %i.amq = extractvalue { i64, i32 } %i.amo, 1    ; 2 uses
  %i.amr = uitofp i64 %i.amp to double
  %i.ams = icmp ult i32 %i.amq, 1000000000
  call void @llvm.assume(i1 %i.ams)
  %i.amt = uitofp nneg i32 %i.amq to double
  %i.amu = fdiv nnan double %i.amt, 1.000000e+09
  %i.amv = fadd nnan double %i.amu, %i.amr
  %i.amw = fmul nnan double %i.amv, 1.000000e+03
  store double %i.amw, ptr %i.cs, align 8
  %i.amx = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ff)
          to label %bb.pw unwind label %bb.pu     ; 2 uses

bb.pw:                                            ; preds = %bb.pv
  %i.amy = extractvalue { i64, i32 } %i.amx, 0
  %i.amz = extractvalue { i64, i32 } %i.amx, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.ana = uitofp i64 %i.amy to double
  %i.anb = icmp ult i32 %i.amz, 1000000000
  call void @llvm.assume(i1 %i.anb)
  %i.anc = uitofp nneg i32 %i.amz to double
  %i.and = fdiv nnan double %i.anc, 1.000000e+09
  %i.ane = fadd nnan double %i.and, %i.ana
  %i.anf = fmul nnan double %i.ane, 1.000000e+03
  store double %i.anf, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.ang = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.anh = load i64, ptr %i.ang, align 8, !noundef !9 ; 2 uses
  store i64 %i.anh, ptr %i.cq, align 8
  %i.ani = icmp ult i64 %i.anh, 192153584101141163
  call void @llvm.assume(i1 %i.ani)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.anj = load i64, ptr %i.alv, align 8, !noundef !9 ; 2 uses
  store i64 %i.anj, ptr %i.cp, align 8
  %i.ank = icmp ult i64 %i.anj, 288230376151711744
  call void @llvm.assume(i1 %i.ank)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %i.ew, ptr %i.co, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.ev, ptr %i.anl, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %i.eq, ptr %i.anm, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.489.0..sroa_idx, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %i.cq, ptr %i.ann, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.493.0..sroa_idx, align 8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store ptr %i.cp, ptr %i.ano, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.497.0..sroa_idx, align 8
  %i.anp = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  store ptr %i.cr, ptr %i.anp, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  store ptr %i.dw, ptr %i.anq, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4105.0..sroa_idx, align 8
  %i.anr = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  store ptr %i.dc, ptr %i.anr, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4109.0..sroa_idx, align 8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  store ptr %i.cs, ptr %i.ans, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @133, ptr noundef nonnull %i.co)
          to label %bb.px unwind label %bb.pu

bb.px:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store ptr null, ptr %i.cm, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 0, ptr %.sroa.5116.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.qa unwind label %bb.pz

bb.py:                                            ; preds = %.body191, %.body194, %.body197, %.body197.thread, %.body194.thread, %.body191.thread, %bb.pz
  %.pn154 = phi { ptr, i32 } [ %i.ant, %bb.pz ], [ %eh.lpad-body192507, %.body191.thread ], [ %i.app, %.body191 ], [ %eh.lpad-body195502, %.body194.thread ], [ %i.aox, %.body194 ], [ %eh.lpad-body198497, %.body197.thread ], [ %i.aod, %.body197 ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1t_.exit unwind label %bb.my

bb.pz:                                            ; preds = %.invoke, %bb.rl, %bb.rg, %bb.qv, %bb.qk, %bb.rj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit284, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit282, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, %bb.px
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %bb.py

bb.qa:                                            ; preds = %bb.px
  %i.anu = load i64, ptr %i.bm, align 8, !range !14, !noundef !9
  %i.anv = trunc nuw i64 %i.anu to i1
  %i.anw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.anx = load i64, ptr %i.anw, align 8, !range !29, !noundef !9 ; 3 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  br i1 %i.anv, label %bb.qb, label %bb.qc, !prof !20

bb.qb:                                            ; preds = %bb.qa
  %i.anz = load i64, ptr %i.any, align 8
  br label %.invoke

bb.qc:                                            ; preds = %bb.qa
  %i.aoa = load ptr, ptr %i.any, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.aob = icmp samesign ugt i64 %i.anx, 6
  call void @llvm.assume(i1 %i.aob)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aoa, ptr noundef nonnull align 1 dereferenceable(7) @134, i64 7, i1 false)
  store i64 %i.anx, ptr %i.ck, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
end_hunk_3
begin_hunk_4_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve16reindex_files_in:bb.a
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body68.i unwind label %bb.cj, !noalias !2634

bb.cj:                                            ; preds = %bb.ci
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !2634
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve23changed_ignore_rules_in0EB20_.exit.thread.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.bb, !noalias !2634

bb.ck:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve23changed_ignore_rules_in0EB20_.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2632
  %.sroa.0288.0.copyload291 = load i64, ptr %i.bb, align 8, !noalias !2645
  %.sroa.9.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx294, i64 16, i1 false), !noalias !2645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2632
  br label %bb.ct

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2632
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.invoke.i unwind label %bb.cl, !noalias !2634

bb.cl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body54.i unwind label %bb.cm, !noalias !2634

bb.cm:                                            ; preds = %bb.cl
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !2634
  unreachable

.backedge.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.999.i)
  %i.lt = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2649, !noalias !2640, !nonnull !9, !noundef !9
  %i.lu = load ptr, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !2649, !noalias !2640, !nonnull !9, !noundef !9 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lt
  br i1 %i.lv, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i

bb.cn:                                            ; preds = %bb.ca
  %.val43.i = load ptr, ptr %i.hq, align 8, !noalias !2632, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2650
  %i.lw = ptrtoint ptr %.val43.i to i64           ; 2 uses
  %i.lx = and i64 %i.lw, 3
  switch i64 %i.lx, label %default.unreachable [
    i64 2, label %bb.cq
    i64 3, label %bb.co
    i64 0, label %bb.cq
    i64 1, label %bb.cp
  ], !prof !18

bb.co:                                            ; preds = %bb.cn
  %i.ly = icmp ult ptr %.val43.i, inttoptr (i64 188978561024 to ptr)
  %i.lz = and i64 %i.lw, 1095216660480
  %i.ma = icmp ne i64 %i.lz, 1095216660480
  call void @llvm.assume(i1 %i.ly)
  call void @llvm.assume(i1 %i.ma)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.mb = getelementptr i8, ptr %.val43.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  store ptr %i.mb, ptr %i.hr, align 8, !alias.scope !2651, !noalias !2650
  store i8 3, ptr %i.aq, align 8, !alias.scope !2651, !noalias !2650
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hr)
          to label %bb.cq unwind label %.loopexit.split-lp.i, !noalias !2634

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2632
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i83.i unwind label %bb.cr, !noalias !2634

bb.cr:                                            ; preds = %bb.cq
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body68.i unwind label %bb.cs, !noalias !2634

bb.cs:                                            ; preds = %bb.cr
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !2634
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i83.i: ; preds = %bb.cq
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit87.i unwind label %bb.bb, !noalias !2634

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit87.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2632
  br label %bb.bh

bb.ct:                                            ; preds = %bb.ck, %.critedge.i, %select.unfold.i
  %.sroa.13.1 = phi i64 [ 18, %select.unfold.i ], [ 8, %bb.ck ], [ 29, %.critedge.i ]
  %.sroa.9295.1 = phi ptr [ @407, %select.unfold.i ], [ @405, %bb.ck ], [ @406, %.critedge.i ]
  %.sroa.0288.1 = phi i64 [ %.sroa.0288.0.copyload289, %select.unfold.i ], [ %.sroa.0288.0.copyload291, %bb.ck ], [ %.sroa.0288.0.copyload290, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2632
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i89.i unwind label %bb.cu, !noalias !2634

bb.cu:                                            ; preds = %bb.ct
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body54.i unwind label %bb.cv, !noalias !2634

bb.cv:                                            ; preds = %bb.cu
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !2634
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i89.i: ; preds = %bb.ct
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit93.i unwind label %.loopexit.split-lp122.i, !noalias !2634

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit93.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999.i)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit95.i unwind label %.loopexit.split-lp127.i, !noalias !2634

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit95.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2632
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit53.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit95.i
  %.sroa.13.0 = phi i64 [ %.sroa.13.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit95.i ], [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit53.i ]
  %.sroa.9295.0 = phi ptr [ %.sroa.9295.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit95.i ], [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit53.i ] ; 2 uses
  %.sroa.0288.0 = phi i64 [ %.sroa.0288.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit95.i ], [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit53.i ] ; 2 uses
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bj)
          to label %bb.cz unwind label %bb.cy

bb.cw:                                            ; preds = %.thread103.i, %.body58.i, %bb.bn, %.body68.i, %.body54.i, %bb.aq, %.thread.i
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !2634
  unreachable

.thread103.i:                                     ; preds = %bb.ax, %.thread107.i
  %eh.lpad-body106.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread107.i ], [ %i.in, %bb.ax ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #31
          to label %.thread.i unwind label %bb.cw, !noalias !2634

bb.cx:                                            ; preds = %bb.da, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.mh = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @26)
          to label %bb.dn unwind label %bb.cy     ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit148, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145, %.body138
  %.sroa.091.2 = phi ptr [ %i.mj, %.body138 ], [ %.sroa.091.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145 ], [ %.sroa.091.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit148 ]
  %.sroa.52.2 = phi i32 [ %i.mk, %.body138 ], [ %.sroa.52.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145 ], [ %.sroa.52.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit148 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTyyEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dn)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBK_4path7PathBufEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.w

bb.cy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit282, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i, %._crit_edge.i, %.noexc135, %bb.aj, %bb.cx
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body138

.body138:                                         ; preds = %bb.dj, %bb.cy, %.thread.i
  %eh.lpad-body139 = phi { ptr, i32 } [ %.pn39.pn.pn.i, %.thread.i ], [ %i.mi, %bb.cy ], [ %i.ms, %bb.dj ] ; 2 uses
  %i.mj = extractvalue { ptr, i32 } %eh.lpad-body139, 0
  %i.mk = extractvalue { ptr, i32 } %eh.lpad-body139, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit

bb.cz:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.not93 = icmp eq i64 %.sroa.0288.0, -1
  br i1 %.not93, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.cx

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145: ; preds = %bb.dl, %bb.dm, %bb.df, %bb.db
  %.pn94 = phi { ptr, i32 } [ %i.ml, %bb.db ], [ %i.mq, %bb.df ], [ %i.mu, %bb.dm ], [ %i.mu, %bb.dl ] ; 2 uses
  %.sroa.52.3 = extractvalue { ptr, i32 } %.pn94, 1
  %.sroa.091.3 = extractvalue { ptr, i32 } %.pn94, 0
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd) #31
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.w

bb.db:                                            ; preds = %bb.dh
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145

bb.dc:                                            ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9295.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  store i64 %.sroa.0288.0, ptr %i.dd, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store ptr %.sroa.9295.0, ptr %i.dc, align 8, !captures !28
  %i.mm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.sroa.13.0, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.du, i64 1994
  store atomic i8 1, ptr %i.mn seq_cst, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  %i.mo = atomicrmw add ptr %i.du, i64 1 monotonic, align 8
  %i.mp = icmp slt i64 %i.mo, 0
  br i1 %i.mp, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.du, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.dg unwind label %bb.dl

bb.de:                                            ; preds = %bb.dc
  call void @llvm.trap()
  unreachable

bb.df:                                            ; preds = %bb.dg
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145

bb.dg:                                            ; preds = %bb.dd
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve29schedule_ignore_rules_refresh(ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.da)
          to label %bb.dh unwind label %bb.df

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  store ptr %i.dd, ptr %i.cz, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dc, ptr %i.mr, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.464.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @204, ptr noundef nonnull %i.cz)
          to label %bb.di unwind label %bb.db

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ms = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %.body138 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.di
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.cy

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTyyEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dn)
  br label %.sink.split

bb.dl:                                            ; preds = %bb.dd
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = atomicrmw sub ptr %i.du, i64 1 release, align 8, !noalias !2652
  %i.mw = icmp eq i64 %i.mv, 1
  br i1 %i.mw, label %bb.dm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145

bb.dm:                                            ; preds = %bb.dl
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEEB1d_.exit145 unwind label %bb.w

bb.dn:                                            ; preds = %bb.cx
  %i.mx = extractvalue { i64, i64 } %i.mh, 0
  %i.my = extractvalue { i64, i64 } %i.mh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i64 %i.mx, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i64 %i.my, ptr %.sroa.570.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.mz = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @26)
          to label %bb.dp unwind label %bb.do     ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit148: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit286, %bb.do
  %.sroa.091.4 = phi ptr [ %i.nb, %bb.do ], [ %.sroa.091.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit286 ]
  %.sroa.52.4 = phi i32 [ %i.nc, %bb.do ], [ %.sroa.52.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit286 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cy)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.w

bb.do:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit280, %bb.dn
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  %i.nc = extractvalue { ptr, i32 } %i.na, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit148

bb.dp:                                            ; preds = %bb.dn
  %i.nd = extractvalue { i64, i64 } %i.mz, 0
  %i.ne = extractvalue { i64, i64 } %i.mz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i64 %i.nd, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store i64 %i.ne, ptr %.sroa.576.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.nf = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @26)
          to label %.lr.ph553 unwind label %bb.dq ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit286: ; preds = %.thread313, %bb.dq
  %.sroa.091.5 = phi ptr [ %i.nh, %bb.dq ], [ %.sroa.091.6309, %.thread313 ]
  %.sroa.52.5 = phi i32 [ %i.ni, %bb.dq ], [ %.sroa.52.6311, %.thread313 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit148 unwind label %bb.w

bb.dq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit278, %bb.dp
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  %i.ni = extractvalue { ptr, i32 } %i.ng, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit286

.lr.ph553:                                        ; preds = %bb.dp
  %i.nj = extractvalue { i64, i64 } %i.nf, 0
  %i.nk = extractvalue { i64, i64 } %i.nf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.nj, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store i64 %i.nk, ptr %.sroa.582.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store i64 0, ptr %i.cv, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 4 uses
  store i64 0, ptr %i.nm, align 8
  %.idx = mul nuw nsw i64 %4, 24
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.no = getelementptr inbounds nuw i8, ptr %i.du, i64 80 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.nu = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ol = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %i.du, i64 1440 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.or = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.os = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.du, i64 1120
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph553, %.backedge
  %.sroa.05.0550 = phi ptr [ %3, %.lr.ph553 ], [ %i.pd, %.backedge ] ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.05.0550, i64 24 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.05.0550, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !nonnull !9, !noundef !9 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20reset_to_empty_index:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !3640
  unreachable

bb.aq:                                            ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEE5writeCsbNLsQi0JuJ4_5tgrep.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !3640, !noalias !3641, !nonnull !9, !align !11, !noundef !9
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ed = load i8, ptr %i.ec, align 8, !range !15, !alias.scope !3640, !noalias !3641, !noundef !9
  store ptr %i.eb, ptr %i.k, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %i.ed, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.eg = cmpxchg weak ptr %i.ef, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !3643
  %i.eh = extractvalue { i32, i1 } %i.eg, 1
  br i1 %i.eh, label %.noexc57, label %bb.ar, !prof !13

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.ef)
          to label %.noexc57 unwind label %bb.at

.noexc57:                                         ; preds = %bb.ar, %bb.aq
  %i.ei = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3643
  %i.ej = and i64 %i.ei, 9223372036854775807
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i54, label %bb.as, !prof !13

bb.as:                                            ; preds = %.noexc57
  %i.el = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc58 unwind label %bb.at

.noexc58:                                         ; preds = %bb.as
  %i.em = xor i1 %i.el, true
  %i.en = zext i1 %i.em to i8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i54

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i54: ; preds = %.noexc58, %.noexc57
  %.sroa.01.0.i.i55 = phi i8 [ %i.en, %.noexc58 ], [ 0, %.noexc57 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ep = load atomic i8, ptr %i.eo monotonic, align 8, !noalias !3643
  %.not.i.i56 = icmp ne i8 %i.ep, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheENCNvMse_B10_BX_3new0EB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i1 noundef zeroext %.not.i.i56, i8 noundef %.sroa.01.0.i.i55, ptr noundef nonnull align 8 %i.ef)
          to label %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheE5writeB13_.exit unwind label %bb.at

.body22:                                          ; preds = %bb.bb, %bb.av, %bb.at
  %.pn14 = phi { ptr, i32 } [ %i.ey, %bb.av ], [ %i.eq, %bb.at ], [ %.pn, %bb.bb ]
  %.sroa.02.4 = phi i1 [ true, %bb.av ], [ %.sroa.02.5, %bb.at ], [ false, %bb.bb ]
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.p

bb.at:                                            ; preds = %bb.bf, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i54, %bb.as, %bb.ar
  %.sroa.02.5 = phi i1 [ false, %bb.bf ], [ true, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i54 ], [ true, %bb.ar ], [ true, %bb.as ]
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheE5writeB13_.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  %i.er = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3644, !noalias !3645, !noundef !9
  %i.es = trunc nuw i64 %i.er to i1
  br i1 %i.es, label %bb.au, label %bb.ay, !prof !20

bb.au:                                            ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheE5writeB13_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3646
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !3644, !noalias !3645, !nonnull !9, !align !11, !noundef !9
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ew = load i8, ptr %i.ev, align 8, !range !15, !alias.scope !3644, !noalias !3645, !noundef !9
  store ptr %i.eu, ptr %i.d, align 8, !noalias !3646
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ew, ptr %i.ex, align 8, !noalias !3646
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #35
          to label %bb.aw unwind label %bb.av, !noalias !3644

bb.av:                                            ; preds = %bb.au
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body22 unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !3644
  unreachable

bb.ay:                                            ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheE5writeB13_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !3644, !noalias !3645, !nonnull !9, !align !11, !noundef !9
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fd = load i8, ptr %i.fc, align 8, !range !15, !alias.scope !3644, !noalias !3645, !noundef !9
  store ptr %i.fb, ptr %i.i, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.fd, ptr %i.fe, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ff = load ptr, ptr %i.p, align 8, !nonnull !9, !align !11, !noundef !9
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(296) %i.fg)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.fg, ptr noundef nonnull align 8 dereferenceable(296) %i.q, i64 296, i1 false)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.fg, ptr noundef nonnull align 8 dereferenceable(296) %i.q, i64 296, i1 false)
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve23forget_recent_reindexes(ptr noundef nonnull align 8 %0)
          to label %bb.bd unwind label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.az
  %.pn = phi { ptr, i32 } [ %i.fi, %bb.bc ], [ %i.fh, %bb.az ]
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.body22 unwind label %bb.p

bb.bc:                                            ; preds = %bb.be, %bb.bd, %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ba
  %i.fj = load ptr, ptr %i.k, align 8, !nonnull !9, !align !11, !noundef !9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  invoke void @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE5clearCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %bb.be unwind label %bb.bc

bb.be:                                            ; preds = %bb.bd
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1972
  store atomic i8 0, ptr %i.fl seq_cst, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1973
  store atomic i8 0, ptr %i.fm seq_cst, align 1
  %i.fn = load ptr, ptr %i.i, align 8, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  invoke void @_RNvMs9_CsgkkDPjMtGWv_3lruINtB5_8LruCacheNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEE5clearB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.fo)
          to label %bb.bf unwind label %bb.bc

bb.bf:                                            ; preds = %bb.be
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  store i64 0, ptr %i.fp, align 8, !alias.scope !3647
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.fr = atomicrmw add ptr %i.fq, i64 1 seq_cst, align 8 ; 0 uses
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1H_.exit65 unwind label %bb.at

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1H_.exit65: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit67 unwind label %bb.aj

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit67: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1H_.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.o

.body26.thread:                                   ; preds = %bb.w, %.body26.thread73, %bb.u
  %.pn1870 = phi { ptr, i32 } [ %lpad.thr_comm, %.body26.thread73 ], [ %.pn16, %bb.u ], [ %i.bw, %bb.w ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(296) %i.q) #31
          to label %common.resume unwind label %bb.p

bb.bh:                                            ; preds = %bb.q
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #31
          to label %common.resume unwind label %bb.p

bb.bi:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 28, 47) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [17 x i8], align 1                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 %1, ptr %i.m, align 8
  store ptr %2, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 1272 ; 3 uses
  %i.p = cmpxchg weak ptr %i.o, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !3657
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.o), !noalias !3657
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3657
  %i.s = and i64 %i.r, 9223372036854775807
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE5writeCsbNLsQi0JuJ4_5tgrep.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33, !noalias !3657
  %i.v = xor i1 %i.u, true
  %i.w = zext i1 %i.v to i8
  br label %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE5writeCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE5writeCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.w, %bb.d ], [ 0, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 1280
  %i.y = load atomic i8, ptr %i.x monotonic, align 1, !noalias !3657
  %.not.i.i = icmp ne i8 %i.y, 0
  call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENCNvMse_B10_BX_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  %i.z = load i64, ptr %i.i, align 8, !range !14, !alias.scope !3658, !noalias !3659, !noundef !9
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit, !prof !20

bb.e:                                             ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE5writeCsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3660
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3658, !noalias !3659, !nonnull !9, !align !11, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !15, !alias.scope !3658, !noalias !3659, !noundef !9
  store ptr %i.ac, ptr %i.a, align 8, !noalias !3660
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ae, ptr %i.af, align 8, !noalias !3660
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #35
          to label %bb.g unwind label %bb.f, !noalias !3658

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !3658
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.t, %bb.s, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.be, %bb.s ], [ %i.aq, %bb.i ], [ %i.be, %bb.t ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE5writeCsbNLsQi0JuJ4_5tgrep.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3658, !noalias !3659, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !15, !alias.scope !3658, !noalias !3659, !noundef !9
  store ptr %i.aj, ptr %i.j, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ao = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9
  %i.ap = load i64, ptr %i.m, align 8, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ap, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.k, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %common.resume unwind label %bb.u

bb.j:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit
  %i.ar = load i64, ptr %i.c, align 8, !range !14, !noundef !9
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !29, !noundef !9 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.av, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #35
          to label %bb.v unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ay = icmp ule i64 %i.ap, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  store i64 %i.au, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1
  invoke void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i64 noundef -1, i64 noundef -1, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(17) %i.g)
          to label %bb.o unwind label %bb.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXsi_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.l, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.45.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %i.az, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @324, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 1994
  store atomic i8 1, ptr %i.ba seq_cst, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bb = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.0.val, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.r unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve29schedule_ignore_rules_refresh(ptr noundef nonnull %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !3661
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.t, label %common.resume

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #33
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.v:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20staged_publish_order(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.a, align 8, !alias.scope !3666
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @215, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3666
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 15, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3666
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @325, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3666
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw (i8, ptr @325, i64 64), ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3666
end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search0INtB7_5FnMutTRmEE8call_mutBU_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5190
  %i.df = ptrtoint ptr %.val4.i.i to i64          ; 2 uses
  %i.dg = and i64 %i.df, 3
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.thread.i
    i64 3, label %bb.ak
    i64 0, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.thread.i
    i64 1, label %bb.al
  ], !prof !18

default.unreachable:                              ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dh = icmp ult ptr %.val4.i.i, inttoptr (i64 188978561024 to ptr)
  %i.di = and i64 %i.df, 1095216660480
  %i.dj = icmp ne i64 %i.di, 1095216660480
  call void @llvm.assume(i1 %i.dh)
  call void @llvm.assume(i1 %i.dj)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.thread.i

bb.al:                                            ; preds = %bb.aj
  %i.dk = getelementptr i8, ptr %.val4.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !alias.scope !5191, !noalias !5190
  store i8 3, ptr %i.a, align 8, !alias.scope !5191, !noalias !5190
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.thread.i unwind label %bb.ah, !noalias !5182

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.thread.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5190
  br label %bb.am

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.i: ; preds = %bb.ai
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.42.0.copyload.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !5189, !noalias !5182
  %i.dm = icmp ugt i64 %.sroa.42.0.copyload.i.i, %i.cz
  br i1 %i.dm, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.i, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5182
  br label %bb.ag

bb.an:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search00EB1X_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5182
  store i64 -1, ptr %0, align 8, !alias.scope !5180, !noalias !5181
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.ae unwind label %.loopexit.split-lp.i, !noalias !5182

bb.ao:                                            ; preds = %bb.ap, %bb.ah
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !5182
  unreachable

bb.ap:                                            ; preds = %bb.ah, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.db, %bb.ah ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #31
          to label %common.resume.i unwind label %bb.ao, !noalias !5182

_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_search0B5_.exit: ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.aa, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5182
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_0INtB7_5FnMutTRTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufEEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.c, align 8, !nonnull !9, !align !11, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5202)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5202, !noalias !5201, !nonnull !9, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5202, !noalias !5201, !noundef !9
  %i.h = tail call noundef ptr @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeeEB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !noalias !5203 ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5203
  store ptr %i.h, ptr %i.b, align 8, !noalias !5204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5204
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %_RNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_00B7_.exit.i unwind label %bb.c, !noalias !5205

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !5206
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit.i.i unwind label %bb.e, !noalias !5205

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !5205
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.i

_RNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_00B7_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5203
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5201, !noalias !5202
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_0B5_.exit

bb.f:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !5201, !noalias !5202
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_0B5_.exit

_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_0B5_.exit: ; preds = %_RNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs1_00B7_.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs_0INtB7_5FnMutTRTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufEEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.i, align 8             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5221
  call void @_RINvNtCs5Xr050g3D4S_3std2fs4readRNtNtB4_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j), !noalias !5220
  %i.k = load i64, ptr %i.g, align 8, !range !8, !noalias !5221, !noundef !9 ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5222)
  call void @llvm.experimental.noalias.scope.decl(metadata !5223)
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !5224, !noalias !5221, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5225
  %i.n = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.c
    i64 0, label %bb.f
    i64 1, label %bb.d
  ], !prof !18

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.q = and i64 %i.n, 1095216660480
  %i.r = icmp ne i64 %i.q, 1095216660480
  call void @llvm.assume(i1 %i.p)
  call void @llvm.assume(i1 %i.r)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !5226, !noalias !5225
  store i8 3, ptr %i.b, align 8, !alias.scope !5226, !noalias !5225
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !5227
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !5221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5221
  store i64 %i.k, ptr %i.h, align 8, !noalias !5221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5221
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.g unwind label %bb.p, !noalias !5220

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5221
  store i64 -1, ptr %0, align 8, !alias.scope !5220, !noalias !5228
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs_0B5_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5221
  %i.u = load i64, ptr %.val, align 8, !range !17, !noalias !5221, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5221
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core8encoding24decode_owned_with_fixups(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef range(i64 0, 3) %i.u, ptr %i.w)
          to label %bb.i unwind label %bb.h, !noalias !5220

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.ae, %bb.k ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %bb.o unwind label %bb.n, !noalias !5220

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5229
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !5229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5221
  store i64 1, ptr %i.c, align 8, !noalias !5221
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !5221
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !5221
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !5230
  %i.ac = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2001) 64, i64 noundef 8) #32, !noalias !5230 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.m, !prof !20

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #35
          to label %.noexc.i unwind label %bb.k, !noalias !5220

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c) #31
          to label %.body.i unwind label %bb.l, !noalias !5220

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !5220
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !5220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5221
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5220, !noalias !5228
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs_0B5_.exit

bb.n:                                             ; preds = %bb.p, %.body.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !5220
  unreachable

bb.o:                                             ; preds = %bb.p, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn10.i

bb.p:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #31
          to label %bb.o unwind label %bb.n, !noalias !5220

_RNCNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_searchs_0B5_.exit: ; preds = %bb.f, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5221
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve21classify_file_changess_0INtB7_5FnMutTRRNtNtCsgCecv3eZDcN_5alloc6string6StringEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11, !noundef !9
  %.val1 = load ptr, ptr %1, align 8, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = tail call noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.g = xor i1 %i.f, true
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess2_0INtB7_5FnMutTRRNtNtCsgCecv3eZDcN_5alloc6string6StringEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !align !11, !noundef !9
  %.val1 = load ptr, ptr %1, align 8, !nonnull !9, !align !11, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1)
  %i.c = call noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  %i.d = xor i1 %i.c, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess3_0INtB7_5FnMutTRRNtNtCsgCecv3eZDcN_5alloc6string6StringEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11, !noundef !9
  %.val1 = load ptr, ptr %1, align 8, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = tail call noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess_0INtB7_5FnMutTRRNtNtCsgCecv3eZDcN_5alloc6string6StringEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !align !11, !noundef !9
  %.val1 = load ptr, ptr %1, align 8, !nonnull !9, !align !11, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1)
  %i.c = call noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  %i.d = xor i1 %i.c, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 0, 768614336404564651) i64 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_0s4_0ENtNtNtB9_6traits8iterator8Iterator5countB2d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.b = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !align !11, !noundef !9
  %i.h = icmp eq ptr %.val, %.val5
  br i1 %i.h, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2l_6filterINtB34_6FilterppEB1t_5count8to_usizeB2N_NCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_0s4_0E0NCINvXsK_NtB1x_5accumjNtB5e_3Sum3sumINtB2j_3MapBF_B2T_EE0E0EB43_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.o, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.n, %.preheader ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.04.0.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.j, align 8, !alias.scope !5235, !nonnull !9, !noundef !9
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val12.i = load i64, ptr %i.k, align 8, !alias.scope !5235, !noundef !9
  %i.l = tail call noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i), !noalias !5236
  %i.m = zext i1 %i.l to i64
  %i.n = add i64 %.sroa.02.0.i, %i.m              ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2l_6filterINtB34_6FilterppEB1t_5count8to_usizeB2N_NCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_0s4_0E0NCINvXsK_NtB1x_5accumjNtB5e_3Sum3sumINtB2j_3MapBF_B2T_EE0E0EB43_.exit, label %.preheader

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2l_6filterINtB34_6FilterppEB1t_5count8to_usizeB2N_NCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_0s4_0E0NCINvXsK_NtB1x_5accumjNtB5e_3Sum3sumINtB2j_3MapBF_B2T_EE0E0EB43_.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.n, %.preheader ] ; 2 uses
  %i.q = icmp ule i64 %.sroa.0.0.i, %i.e
  tail call void @llvm.assume(i1 %i.q)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2i_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBufINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB6_4PathE2eq(ptr nofree nonnull readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %.sroa.5.i = alloca [39 x i8], align 1          ; 4 uses
  %.sroa.518.i = alloca [39 x i8], align 1        ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5241)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5240, !noalias !5241, !noundef !9 ; 3 uses
end_hunk_6
