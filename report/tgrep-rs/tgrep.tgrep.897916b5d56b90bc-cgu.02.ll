Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.02?download=true
inline.NumInlined: 782
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTTINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1A_4path7PathBufEjEEECsbNLsQi0JuJ4_5tgrep:bb.a

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTTINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1H_4path7PathBufEjEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTjjEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTjjEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmNtNtBG_6string6StringEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTmNtNtBG_6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTmNtNtBG_6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !6
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs22empcGmRho_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB37_13RefUnwindSafeNtB3L_4SyncEL_EEECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !163 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !163, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !6, !noalias !163 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.e, !noalias !163

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !13, !invariant.load !6, !noalias !163 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !164, !invariant.load !6, !noalias !163
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #25, !noalias !163
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB2E_13RefUnwindSafeNtB3i_4SyncEL_EECsbNLsQi0JuJ4_5tgrep.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !13, !invariant.load !6, !noalias !163 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !164, !invariant.load !6, !noalias !163
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #25, !noalias !163
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val) #22
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

.body3.i.i:                                       ; preds = %bb.j, %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %.body.i.i ], [ %i.r, %bb.j ], [ %i.o, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(1400) %i.q) #22
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.body3.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %.pn.i.i, %.body3.i.i ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #25
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtNtB4_6marker4SendNtB3k_13RefUnwindSafeNtB3Y_4SyncEL_EEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map11VacantEntryNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #22
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCskrXG8MCksKX_11fancy_regex12RegexOptionsECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9overrides8OverrideECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core6walker11WalkOptionsECsbNLsQi0JuJ4_5tgrep:bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !15, !alias.scope !281, !noundef !6
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.i

bb.i:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9overrides8OverrideECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !15, !alias.scope !282, !noundef !6
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit7, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9overrides8OverrideECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit7 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body4, %bb.i, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn, %bb.i ], [ %.pn, %.body4 ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #22
          to label %common.resume unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit7: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit9 unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit7
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.m ], [ %.pn2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit9: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit7
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  ret void

bb.o:                                             ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit, %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9filetypes10TypeFilterECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !287, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #22
          to label %common.resume unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !288, !noundef !6
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i2: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9oNxn7AafV1_7globset7GlobSetEECsbNLsQi0JuJ4_5tgrep.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbNLsQi0JuJ4_5tgrep.exit.i2
  ret void

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.c
  ], !prof !18

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !291
  store i8 3, ptr %i.a, align 8, !alias.scope !291
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata4meta8wrappers11HybridCacheECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !alias.scope !294, !noundef !6
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs22empcGmRho_14regex_automata6hybrid5regex5CacheEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata6hybrid3dfa5CacheECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata6hybrid5regex5CacheECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata6hybrid3dfa5CacheECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(352) %i.d) #22
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata6hybrid5regex5CacheECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata6hybrid3dfa5CacheECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(352) %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs22empcGmRho_14regex_automata6hybrid5regex5CacheEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs22empcGmRho_14regex_automata6hybrid5regex5CacheEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata6hybrid5regex5CacheECsbNLsQi0JuJ4_5tgrep.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata4meta8wrappers11PikeVMCacheECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !297, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm5CacheEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0)
          to label %.body.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(96) %i.f) #22
          to label %.body2.i.i unwind label %bb.r

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata4util10sparse_set9SparseSetECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.g)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm9SlotTableECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #22
          to label %.body2.i.i unwind label %bb.k

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm13FollowEpsilonEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm9SlotTableECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body2.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm9SlotTableECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

.body2.i.i:                                       ; preds = %bb.l, %bb.i, %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.o, %bb.l ], [ %i.k, %bb.i ], [ %i.h, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(96) %i.n) #22
          to label %common.resume.i.i unwind label %bb.r

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm9SlotTableECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm9SlotTableECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs22empcGmRho_14regex_automata4util10sparse_set9SparseSetECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm9SlotTableECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #22
          to label %common.resume.i.i unwind label %bb.q

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs22empcGmRho_14regex_automata3nfa8thompson6pikevm5CacheECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs22empcGmRho_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %common.resume.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i.i:                                ; preds = %bb.o, %bb.m, %.body2.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.q, %bb.m ], [ %i.t, %bb.o ], [ %.pn.i.i, %.body2.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.q:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %.body2.i.i, %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search18flush_before_stats:bb.a

default.unreachable:                              ; preds = %bb.i, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  %i.f = lshr i64 %i.c, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = invoke noundef i8 %i.i(i32 noundef %i.g)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.n, !inline_history !0

bb.d:                                             ; preds = %bb.b
  %i.k = lshr i64 %i.c, 32
  %i.l = icmp ult ptr %i.b, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.k to i8   ; 2 uses
  %i.m = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.b, i64 31
  %i.q = load i8, ptr %i.p, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.h, %bb.a, %bb.l
  %.sroa.0.0 = phi ptr [ null, %bb.l ], [ null, %bb.a ], [ %i.s, %bb.h ]
  ret ptr %.sroa.0.0

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.f, %bb.e, %bb.d, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.q, %bb.f ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.o, %bb.e ], [ %i.j, %.noexc ]
  %i.r = icmp eq i8 %.sroa.0.0.i, 11
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  %i.s = tail call noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.b)
  br label %bb.g

bb.i:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %bb.l
    i64 3, label %bb.j
    i64 0, label %bb.l
    i64 1, label %bb.k
  ], !prof !18

bb.j:                                             ; preds = %bb.i
  %i.t = icmp ult ptr %i.b, inttoptr (i64 188978561024 to ptr)
  %i.u = and i64 %i.c, 1095216660480
  %i.v = icmp ne i64 %i.u, 1095216660480
  tail call void @llvm.assume(i1 %i.t)
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.b, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !1260
  store i8 3, ptr %i.a, align 8, !alias.scope !1260
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.m:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %.noexc, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr nonnull %i.b) #22
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search19to_source_positions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %7, ptr %i.d, align 8, !noalias !1267
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1266, !noalias !1268, !noundef !6 ; 2 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1267
  %i.k = tail call noundef i64 @_RNvMs_NtCsbzNSmZPCnTx_10tgrep_core8encodingNtB4_11LossyFixups16to_source_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8, i64 noundef %7), !noalias !1268
  store i64 %i.k, ptr %i.c, align 8, !noalias !1267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1267
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8, !noalias !1267
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !1267
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %8, ptr %i.n, align 8, !noalias !1267
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1267
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterjENCNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns0EE9from_iterB2T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1267
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre17 = load i64, ptr %.phi.trans.insert16, align 8
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1267
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !1267
  %i.o = load i64, ptr %i.a, align 8, !range !20, !noalias !1267, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !21, !noalias !1267, !noundef !6 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.s, align 8, !noalias !1267
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #24, !noalias !1267
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.s, align 8, !noalias !1267, !nonnull !6, !noundef !6 ; 4 uses
  %i.v = icmp samesign ule i64 %2, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1267
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !1265, !noalias !1269
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.u, ptr %i.w, align 8, !alias.scope !1265, !noalias !1269
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8, !alias.scope !1265, !noalias !1269
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw nsw i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %1, i64 %i.y, i1 false), !noalias !1270
  store i64 %2, ptr %i.x, align 8, !alias.scope !1265, !noalias !1269
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns.exit

_RNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.z = phi i64 [ %.pre17, %bb.b ], [ 0, %bb.e ], [ %2, %bb.f ]
  %i.aa = phi ptr [ %.pre, %bb.b ], [ %i.u, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjEINtBZ_4IteriEEINtB5_7ZipImplBW_B1r_E3newCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull readonly align 8 %3, ptr noundef nonnull readonly %i.ac)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSiECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.g

bb.g:                                             ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns.exit, %.thread
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #22
          to label %bb.j unwind label %bb.i

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSiECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 4 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.49.0.copyload = load ptr, ptr %.sroa.49.0..sroa_idx, align 8 ; 4 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.ae = icmp ult i64 %.sroa.510.0.copyload, %.sroa.7.0.copyload
  br i1 %i.ae, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSiECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload) ]
  %i.af = sub nuw i64 %.sroa.7.0.copyload, %.sroa.510.0.copyload
  %.neg = add i64 %.sroa.510.0.copyload, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.510.0.copyload ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.49.0.copyload, i64 %.sroa.510.0.copyload
  %i.ai = add nuw i64 %.sroa.510.0.copyload, 1
  %i.aj = load i64, ptr %i.ah, align 8, !noundef !6 ; 2 uses
  %i.ak = load i64, ptr %i.ag, align 8, !noundef !6 ; 2 uses
  %i.al = add i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak               ; 2 uses
  %i.an = icmp sgt i64 %i.aj, -1
  %i.ao = xor i1 %i.an, %i.am
  %.8.prol = sext i1 %i.am to i64
  %.sroa.03.0.prol = select i1 %i.ao, i64 %i.al, i64 %.8.prol
  %i.ap = call i64 @llvm.umax.i64(i64 %.sroa.03.0.prol, i64 1)
  store i64 %i.ap, ptr %i.ag, align 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.sroa.510.015.unr = phi i64 [ %.sroa.510.0.copyload, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i64 %.sroa.7.0.copyload, %.neg
  br i1 %i.aq, label %.thread, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.510.015 = phi i64 [ %i.bd, %.lr.ph.new ], [ %.sroa.510.015.unr, %.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.510.015 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.49.0.copyload, i64 %.sroa.510.015
  %i.at = add nuw i64 %.sroa.510.015, 1           ; 2 uses
  %i.au = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.av = load i64, ptr %i.ar, align 8, !noundef !6 ; 2 uses
  %i.aw = add i64 %i.av, %i.au                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av               ; 2 uses
  %i.ay = icmp sgt i64 %i.au, -1
  %i.az = xor i1 %i.ay, %i.ax
  %.8 = sext i1 %i.ax to i64
  %.sroa.03.0 = select i1 %i.az, i64 %i.aw, i64 %.8
  %i.ba = call i64 @llvm.umax.i64(i64 %.sroa.03.0, i64 1)
  store i64 %i.ba, ptr %i.ar, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.at ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.49.0.copyload, i64 %i.at
  %i.bd = add nuw i64 %.sroa.510.015, 2           ; 2 uses
  %i.be = load i64, ptr %i.bc, align 8, !noundef !6 ; 2 uses
  %i.bf = load i64, ptr %i.bb, align 8, !noundef !6 ; 2 uses
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf               ; 2 uses
  %i.bi = icmp sgt i64 %i.be, -1
  %i.bj = xor i1 %i.bi, %i.bh
  %.8.1 = sext i1 %i.bh to i64
  %.sroa.03.0.1 = select i1 %i.bj, i64 %i.bg, i64 %.8.1
  %i.bk = call i64 @llvm.umax.i64(i64 %.sroa.03.0.1, i64 1)
  store i64 %i.bk, ptr %i.bb, align 8
  %exitcond.not.1 = icmp eq i64 %i.bd, %.sroa.7.0.copyload
  br i1 %exitcond.not.1, label %.thread, label %.lr.ph.new

.thread:                                          ; preds = %.prol.loopexit, %.lr.ph.new, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutjENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSiECsbNLsQi0JuJ4_5tgrep.exit
  %i.bl = invoke noundef i64 @_RNvMs_NtCsbzNSmZPCnTx_10tgrep_core8encodingNtB4_11LossyFixups16to_source_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8, i64 noundef %5)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.h:                                             ; preds = %.thread
  %i.bm = add i64 %i.bl, %6                       ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl               ; 2 uses
  %i.bo = icmp sgt i64 %6, -1
  %i.bp = xor i1 %i.bo, %i.bn
  %. = sext i1 %i.bn to i64
  %.sroa.04.0 = select i1 %i.bp, i64 %i.bm, i64 %.
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.04.0, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsbNLsQi0JuJ4_5tgrep6search20exceeds_max_filesize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  %.not = xor i1 %3, true
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 596
  %i.d = load i8, ptr %i.c, align 4, !range !8
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load i64, ptr %i.f, align 8, !range !20
  %i.h = trunc nuw i64 %i.g to i1
  %or.cond5 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep6search20exceeds_max_filesize0EB1V_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.04.i, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep6search20exceeds_max_filesize0EB1V_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCs5Xr050g3D4S_3std2fs8metadataRNtNtB4_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.k = load i64, ptr %i.b, align 8, !range !16, !alias.scope !1275, !noundef !6
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.42.0.copyload.i = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1275
  %i.m = icmp ugt i64 %.sroa.42.0.copyload.i, %i.j
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep6search20exceeds_max_filesize0EB1V_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i = load ptr, ptr %i.n, align 8, !alias.scope !1275, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1275
  %i.o = ptrtoint ptr %.val4.i to i64             ; 2 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i
    i64 1, label %bb.g
  ], !prof !18

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = icmp ult ptr %.val4.i, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.o, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.val4.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !1276, !noalias !1275
  store i8 3, ptr %i.a, align 8, !alias.scope !1276, !noalias !1275
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !1275
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1275
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep6search20exceeds_max_filesize0EB1V_.exit

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep6search20exceeds_max_filesize0EB1V_.exit: ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.04.i = phi i1 [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search21list_files_via_server(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(624) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  %i.s = alloca [48 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 5 uses
end_hunk_2
begin_hunk_3_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search22count_reported_matches:bb.a
          to label %bb.h unwind label %bb.c       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %.not41 = icmp eq ptr %i.w, null
  br i1 %.not41, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %i.w, align 8, !range !19, !noundef !6
  %i.y = icmp eq i8 %i.x, 3
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  switch i64 %i.ac, label %bb.m [
    i64 6, label %bb.k
    i64 5, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.aa, align 1
  %i.ae = xor i32 %i.ad, 1634625890
  %i.af = getelementptr i8, ptr %i.aa, i64 4
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = xor i32 %i.ah, 31090
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.055, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 5)
          to label %bb.x unwind label %bb.c       ; 4 uses

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.012.048 = phi ptr [ %i.aa, %bb.j ], [ @94, %bb.i ], [ @94, %bb.h ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.012.048, align 1
  %i.ap = xor i32 %i.ao, 1668571501
  %i.aq = getelementptr i8, ptr %.sroa.012.048, i64 4
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = xor i32 %i.as, 104
  %i.au = or i32 %i.ap, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.ab, %bb.w, %.thread
  %.sroa.03.1 = phi i64 [ %i.bw, %bb.ab ], [ %.sroa.03.056, %bb.w ], [ %.sroa.03.056, %.thread ], [ %.sroa.03.056, %bb.j ], [ %.sroa.03.056, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.bv, %bb.ab ], [ %i.be, %bb.w ], [ %.sroa.0.057, %.thread ], [ %.sroa.0.057, %bb.j ], [ %.sroa.0.057, %bb.k ] ; 2 uses
  %i.ay = icmp eq ptr %i.j, %i.f
  br i1 %i.ay, label %._crit_edge.loopexit, label %bb.b

bb.n:                                             ; preds = %.thread
  %i.az = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.055, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 5)
          to label %bb.o unwind label %bb.c       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %.not43 = icmp eq ptr %i.az, null
  br i1 %.not43, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE6map_oryNCNvNtCsbNLsQi0JuJ4_5tgrep6search22count_reported_matchess2_0EB2c_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load i8, ptr %i.az, align 8, !range !19, !noundef !6
  %i.bb = icmp eq i8 %i.ba, 4
  br i1 %i.bb, label %bb.q, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE6map_oryNCNvNtCsbNLsQi0JuJ4_5tgrep6search22count_reported_matchess2_0EB2c_.exit

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %i.az, i64 24
  %.val.i = load i64, ptr %i.bc, align 8, !alias.scope !1347, !noundef !6 ; 2 uses
  %i.bd = icmp ult i64 %.val.i, 288230376151711744
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE6map_oryNCNvNtCsbNLsQi0JuJ4_5tgrep6search22count_reported_matchess2_0EB2c_.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE6map_oryNCNvNtCsbNLsQi0JuJ4_5tgrep6search22count_reported_matchess2_0EB2c_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.be = add i64 %.sroa.02.0.i, %.sroa.0.057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.055, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 4)
          to label %bb.r unwind label %bb.c       ; 4 uses

bb.r:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE6map_oryNCNvNtCsbNLsQi0JuJ4_5tgrep6search22count_reported_matchess2_0EB2c_.exit
  %.not44 = icmp eq ptr %i.bf, null
  br i1 %.not44, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr %i.bf, align 8, !range !19, !noundef !6
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !16, !noundef !6
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.r, %bb.s, %bb.u
  %.sroa.029.0 = phi i64 [ %i.bm, %bb.u ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.t ]
  store ptr %.sroa.07.0, ptr %i.a, align 8
  store i64 %.sroa.38.0, ptr %i.h, align 8
  store i64 %.sroa.029.0, ptr %i.i, align 8
  %i.bn = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapTReyEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.w unwind label %bb.c       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.x:                                             ; preds = %bb.l
  %.not45 = icmp eq ptr %i.an, null
  br i1 %.not45, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = load i8, ptr %i.an, align 8, !range !19, !noundef !6
  %i.bp = icmp eq i8 %i.bo, 2
  br i1 %i.bp, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !16, !noundef !6
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.x, %bb.y, %bb.aa
  %.sroa.020.0 = phi i64 [ %i.bu, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.z ] ; 2 uses
  %i.bv = add i64 %.sroa.020.0, %.sroa.0.057
  %i.bw = add i64 %.sroa.020.0, %.sroa.03.056
  br label %bb.m

bb.ac:                                            ; preds = %bb.c
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetTReyEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search23load_indexed_file_paths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [33 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 1                ; 6 uses
  %i.j = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.631 = alloca [32 x i8], align 8          ; 6 uses
  %i.k = alloca [136 x i8], align 8               ; 12 uses
  %i.l = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.m = alloca [120 x i8], align 8               ; 18 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [64 x i8], align 8                ; 9 uses
  %i.p = alloca [88 x i8], align 8                ; 7 uses
  %i.q = alloca [88 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 10)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvNtCs5Xr050g3D4S_3std2fs8metadataRNtNtB4_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #22
          to label %common.resume unwind label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.f, align 8, !range !16, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val63 = load ptr, ptr %i.y, align 8           ; 4 uses
  %.not.i = icmp eq i64 %i.x, 2
  br i1 %.not.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val63) ]
  %i.z = ptrtoint ptr %.val63 to i64              ; 2 uses
  %i.aa = and i64 %i.z, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.e
    i64 0, label %bb.g
    i64 1, label %bb.f
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult ptr %.val63, inttoptr (i64 188978561024 to ptr)
  %i.ac = and i64 %i.z, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.assume(i1 %i.ad)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %.val63, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !1350
  store i8 3, ptr %i.a, align 8, !alias.scope !1350
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body69.thread, %bb.av, %bb.b, %bb.r, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %i.ag, %bb.h ], [ %i.ai, %bb.k ], [ %i.w, %bb.b ], [ %.pn5876, %.body69.thread ], [ %.pn56, %bb.av ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit65 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit65: ; preds = %bb.j
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core10path_index19read_filename_index(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.ak = load i64, ptr %i.p, align 8, !range !17, !noundef !6 ; 2 uses
  %switch = icmp ugt i64 %i.ak, -3
  br i1 %switch, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.bj, %bb.au, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit65
  store i64 -1, ptr %0, align 8
  %i.al = icmp eq i64 %i.ak, -2
  br i1 %i.al, label %bb.bk, label %bb.bl

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.an = load i8, ptr %i.am, align 8, !range !11, !noundef !6
  %.not51 = icmp eq i8 %i.an, 2
  br i1 %.not51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core4metaNtB2_9IndexMeta4load(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.u unwind label %bb.t

bb.q:                                             ; preds = %bb.o
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.q
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.bj

.body:                                            ; preds = %.body.i, %bb.t, %bb.z
  %.sroa.041.0 = phi i1 [ %.sroa.041.2, %bb.z ], [ %.sroa.041.1, %bb.t ], [ true, %.body.i ]
  %.pn56 = phi { ptr, i32 } [ %.pn54, %bb.z ], [ %i.ar, %bb.t ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #22
          to label %bb.av unwind label %bb.aw

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.at, %bb.v, %bb.p
  %.sroa.041.1 = phi i1 [ true, %bb.v ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i ], [ false, %bb.at ], [ true, %bb.p ]
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.p
  %i.as = load i64, ptr %i.l, align 8, !range !15, !noundef !6 ; 2 uses
  %i.at = icmp eq i64 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.av = invoke noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.bi unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.545.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.as, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 84 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !range !8, !noundef !6
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 85 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !range !8
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond = select i1 %i.ay, i1 %i.bb, i1 false
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = icmp eq i32 %i.bd, 3
  %or.cond10 = select i1 %or.cond, i1 %i.be, i1 false
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !range !8
  %i.bh = trunc nuw i8 %i.bg to i1
  %or.cond13 = select i1 %or.cond10, i1 %i.bh, i1 false
  br i1 %or.cond13, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 -1, ptr %0, align 8
  br label %bb.ba

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2_11IndexReader4open(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.al, %bb.aa
  %.sroa.041.2 = phi i1 [ %.sroa.041.3, %bb.aa ], [ true, %bb.al ]
  %.pn54 = phi { ptr, i32 } [ %i.bi, %bb.aa ], [ %.pn, %bb.al ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(120) %i.m) #22
end_hunk_3
begin_hunk_4_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search3run:bb.a

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i98, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i90, %bb.au
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.ax:                                            ; preds = %bb.au
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !range !14, !noundef !6
  %.not = icmp eq i64 %i.iw, -1
  br i1 %.not, label %bb.at, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.iv, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.ix = load ptr, ptr %i.er, align 8, !nonnull !6, !noundef !6
  %i.iy = load i64, ptr %i.et, align 8, !noundef !6
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !6, !noundef !6
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.jc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %5, i1 noundef zeroext %.sroa.0.0.i69, ptr noalias nofree noundef align 8 dereferenceable(464) %6)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.bb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsjYKKaZ3qa7A_6anyhow5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, %bb.ay
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search10IndexScopeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bk) #22
          to label %bb.bd unwind label %bb.ah

bb.ba:                                            ; preds = %bb.ay
  %i.je = load i8, ptr %i.bj, align 8, !range !8, !noundef !6
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  invoke void @_RNvXs4_NtCsjYKKaZ3qa7A_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsjYKKaZ3qa7A_6anyhow5ErrorEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !range !8, !noundef !6
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ji, ptr %i.jj, align 1
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search10IndexScopeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bk)
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %bb.be, %bb.az
  %.pn = phi { ptr, i32 } [ %i.jk, %bb.be ], [ %i.jd, %bb.az ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #22
          to label %.body91 unwind label %bb.ah

bb.be:                                            ; preds = %bb.bj, %bb.bc
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i90 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body91 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i90: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit94 unwind label %bb.aw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit94: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.jn = load i32, ptr %i.bo, align 8, !range !23, !alias.scope !1419, !noundef !6
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtCsjYKKaZ3qa7A_6anyhow5ErrorEEB11_.exit96, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit94
  invoke void @_RNvXs4_NtCsjYKKaZ3qa7A_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.il)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtCsjYKKaZ3qa7A_6anyhow5ErrorEEB11_.exit96 unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtCsjYKKaZ3qa7A_6anyhow5ErrorEEB11_.exit96: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit94, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.ai

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsjYKKaZ3qa7A_6anyhow5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @126, ptr noundef nonnull inttoptr (i64 153 to ptr))
          to label %bb.bj unwind label %bb.az

bb.bj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsjYKKaZ3qa7A_6anyhow5ErrorEECsbNLsQi0JuJ4_5tgrep.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search10IndexScopeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bk)
          to label %bb.bk unwind label %bb.be

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i98 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body91 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i98: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit102 unwind label %bb.aw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit102: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.jr = load i32, ptr %i.bo, align 8, !range !23, !alias.scope !1420, !noundef !6
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.sink.split, label %.invoke

.invoke:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit102, %.thread229
  %i.jt = phi ptr [ %i.ju, %.thread229 ], [ %i.il, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit102 ]
  invoke void @_RNvXs4_NtCsjYKKaZ3qa7A_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jt)
          to label %.sink.split unwind label %.loopexit.split-lp

.thread229:                                       ; preds = %bb.as, %bb.at
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  br label %.invoke

.thread:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep11glob_filter10GlobFilterEBF_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep11glob_filter10GlobFilterEBF_.exit79, %bb.p, %bb.q, %bb.ag
  %i.jv = load ptr, ptr %i.er, align 8, !nonnull !6, !noundef !6
  %i.jw = load i64, ptr %i.et, align 8, !noundef !6
  %i.jx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !nonnull !6, !noundef !6
  %i.jz = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !noundef !6
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep6search18warn_missing_index.exit, %.thread
  %i.kb = phi ptr [ %i.jv, %.thread ], [ %i.ly, %_RNvNtCsbNLsQi0JuJ4_5tgrep6search18warn_missing_index.exit ]
  %i.kc = phi i64 [ %i.jw, %.thread ], [ %i.lz, %_RNvNtCsbNLsQi0JuJ4_5tgrep6search18warn_missing_index.exit ]
  %i.kd = phi ptr [ %i.jy, %.thread ], [ %i.ma, %_RNvNtCsbNLsQi0JuJ4_5tgrep6search18warn_missing_index.exit ]
  %i.ke = phi i64 [ %i.ka, %.thread ], [ %i.mb, %_RNvNtCsbNLsQi0JuJ4_5tgrep6search18warn_missing_index.exit ]
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search18brute_force_search(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kb, i64 noundef %i.kc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kd, i64 noundef %i.ke, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %5, i1 noundef zeroext %.sroa.0.0.i69, ptr noalias nofree noundef align 8 dereferenceable(464) %6)
          to label %bb.ai unwind label %.loopexit.split-lp

.sink.split:                                      ; preds = %.invoke, %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18effective_passthru.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !nonnull !6, !noundef !6
  %i.kh = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 4 uses
  %i.ki = load i64, ptr %i.kh, align 8, !noundef !6
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef %i.ki, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 10)
          to label %bb.bo unwind label %.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !6, !noundef !6
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RINvNtCs5Xr050g3D4S_3std2fs8metadataRNtNtB4_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kk, i64 noundef %i.km)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.bo
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #22
          to label %.body unwind label %bb.ah

bb.bq:                                            ; preds = %bb.bo
  %i.ko = load i64, ptr %i.bg, align 8, !range !16, !noundef !6
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val63 = load ptr, ptr %i.kp, align 8          ; 4 uses
  %.not.i107 = icmp eq i64 %i.ko, 2
  br i1 %.not.i107, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val63) ]
  %i.kq = ptrtoint ptr %.val63 to i64             ; 2 uses
  %i.kr = and i64 %i.kq, 3
  switch i64 %i.kr, label %default.unreachable [
    i64 2, label %bb.bu
    i64 3, label %bb.bs
    i64 0, label %bb.bu
    i64 1, label %bb.bt
  ], !prof !18

bb.bs:                                            ; preds = %bb.br
  %i.ks = icmp ult ptr %.val63, inttoptr (i64 188978561024 to ptr)
  %i.kt = and i64 %i.kq, 1095216660480
  %i.ku = icmp ne i64 %i.kt, 1095216660480
  call void @llvm.assume(i1 %i.ks)
  call void @llvm.assume(i1 %i.ku)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.kv = getelementptr i8, ptr %.val63, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kv) ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.kv, ptr %i.kw, align 8, !alias.scope !1421
  store i8 3, ptr %i.bf, align 8, !alias.scope !1421
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kw)
          to label %bb.bu unwind label %bb.bp

bb.bu:                                            ; preds = %bb.br, %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i111 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i111: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit115 unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i117 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i117: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit121 unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit115: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 591
  %i.lc = load i8, ptr %i.lb, align 1, !range !8, !noundef !6
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search18warn_missing_index.exit, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit115
  %i.le = load i64, ptr %i.kh, align 8, !noundef !6
  %i.lf = load ptr, ptr %i.kf, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1423
  store ptr %i.lf, ptr %i.ba, align 8, !noalias !1423
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.le, ptr %i.lg, align 8, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1424
  store i64 0, ptr %i.az, align 8, !noalias !1424
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1424
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1424
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1610612768, ptr %i.lh, align 8, !noalias !1424
  store ptr %i.az, ptr %i.ay, align 8, !noalias !1424
  %i.li = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @128, ptr %i.li, align 8, !noalias !1424
  %i.lj = invoke noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.cc unwind label %bb.cb, !noalias !1425

bb.cb:                                            ; preds = %bb.cd, %bb.ca
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #22
          to label %.body unwind label %bb.ce, !noalias !1425

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.lj, label %bb.cd, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i.i, !prof !10

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #26
          to label %.noexc.i.i.i unwind label %bb.cb, !noalias !1425

.noexc.i.i.i:                                     ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cb
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !1425
  unreachable

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !1426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1424
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1423, !nonnull !6, !noundef !6
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !1423, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search21strip_verbatim_prefix(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ln, i64 noundef %i.lp)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb) #22
          to label %.body unwind label %bb.cj, !noalias !1427

bb.cg:                                            ; preds = %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search12display_path.exit.i unwind label %bb.ch, !noalias !1427

bb.ch:                                            ; preds = %bb.cg
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body unwind label %bb.ci, !noalias !1427

bb.ci:                                            ; preds = %bb.ch
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !1427
  unreachable

bb.cj:                                            ; preds = %bb.cf
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !1427
  unreachable

_RNvNtCsbNLsQi0JuJ4_5tgrep6search12display_path.exit.i: ; preds = %bb.cg
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.noexc126 unwind label %.loopexit.split-lp

.noexc126:                                        ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep6search12display_path.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1422
  store ptr %i.be, ptr %i.bd, align 8, !noalias !1422
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1422
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @111, ptr noundef nonnull %i.bd)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %bb.cm, %.noexc126
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be) #22
          to label %.body unwind label %bb.cs

bb.cl:                                            ; preds = %.noexc126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1422
  br i1 %.not164, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 267 to ptr))
          to label %bb.co unwind label %bb.ck

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1422
  store ptr %i.be, ptr %i.bc, align 8, !noalias !1422
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1422
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @113, ptr noundef nonnull %i.bc)
          to label %bb.cr unwind label %bb.ck

bb.co:                                            ; preds = %bb.cr, %bb.cm
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.cp
end_hunk_4
