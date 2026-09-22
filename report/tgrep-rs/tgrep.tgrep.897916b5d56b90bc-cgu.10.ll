Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.10?download=true
inline.NumInlined: 800
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep:bb.a
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder5error7context12ContextValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder5error7context12ContextValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder5error7context12ContextValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsbNLsQi0JuJ4_5tgrep(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !13, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !13, !invariant.load !6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit4

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEEECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 416
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !133, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 408
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !133, !nonnull !6, !noundef !6
  %i.d = mul nuw nsw i64 %.val2.i.i, 48
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 8) #29, !noalias !133
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5WakerECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 328
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5WakerECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 328
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5WakerECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7counter7CounterINtNtBG_5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7counter7CounterINtNtBG_5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEECsbNLsQi0JuJ4_5tgrep.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 640, i64 noundef 128) #29
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.f, %bb.c ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 640, i64 noundef 128) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !6
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
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
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuarduEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuarduENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjFxWRWgRcyr_5rayon4iter6extend13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2O_11FileVersionEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIBw_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1M_11FileVersionEENtNtNtB16_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionTIBC_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1Z_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB7_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB25_11FileVersionEENtNtNtB1d_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringINtNtB4_6option6OptionTINtNtBG_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2i_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringINtNtB4_6option6OptionTINtNtBG_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2i_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionTIBC_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1Z_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB7_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB25_11FileVersionEENtNtNtB1d_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7counter7CounterINtNtBG_4zero7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5WakerECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4zero7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5WakerECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #31
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable
end_hunk_0
begin_hunk_1_@_RINvXNvXsh_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtBb_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEB2c_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.r, align 8, !alias.scope !358, !noalias !359, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.ag = add i64 %i.z, 1
  store i64 %i.ag, ptr %i.s, align 8, !alias.scope !358, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1c_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB6_9FilterMapINtNtBa_5slice4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00ENtB8_16ParallelIterator15drive_unindexedINtNtNtB8_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB4n_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5T_11FileVersionEEEB22_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.d, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !6, !align !16, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  call void @_RINvXs5_NtCsjFxWRWgRcyr_5rayon5sliceINtB6_4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtB1l_10filter_map17FilterMapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB3w_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB52_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB6e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB6_9FilterMapINtNtBa_5slice4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB22_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !16, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  tail call void @_RINvXs5_NtCsjFxWRWgRcyr_5rayon5sliceINtB6_4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtB1l_10filter_map17FilterMapConsumerNtNtB1l_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB3m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer16deserialize_boolNtNtBW_5impls11BoolVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !384
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noalias !384, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !noalias !384, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !384
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30, !noalias !384
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !384, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !385
  br label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !386, !noalias !387
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !386, !noalias !387
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !386, !noalias !387
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !388
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsbNLsQi0JuJ4_5tgrep.exit

_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, %bb.e
  %i.n = call noundef nonnull align 8 ptr @_RNvNtCs6MoqnCnVQOT_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.n
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error6customReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !398
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !398
  %i.c = load i64, ptr %i.a, align 8, !range !7, !noalias !398, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noalias !398, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !398
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #30, !noalias !398
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !398, !nonnull !6, !noundef !6 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !398
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !399
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCsbNLsQi0JuJ4_5tgrep.exit

_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !400
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !400
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !400
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCs6MoqnCnVQOT_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs6MoqnCnVQOT_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !422, !noalias !423, !noundef !6
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !422, !noalias !423
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !424, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !425
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !423
  %i.i = load i64, ptr %i.c, align 8, !range !10, !noalias !425, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !425 ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !423, !noalias !424
  store i64 -1, ptr %0, align 8, !alias.scope !423, !noalias !424
  br label %_RINvXsh_NtCs6MoqnCnVQOT_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorECsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !425 ; 8 uses
  %i.n = trunc nuw i64 %i.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !426
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !427
  %i.o = load i64, ptr %i.b, align 8, !range !7, !noalias !426, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !8, !noalias !426, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8, !noalias !426
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #30, !noalias !427
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !noalias !426, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = icmp ule i64 %.sroa.4.0.copyload.i.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !426
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !428
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !429
  %i.w = load i64, ptr %i.a, align 8, !range !7, !noalias !428, !noundef !6
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !8, !noalias !428, !noundef !6 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !428
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #30, !noalias !429
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.aa, align 8, !noalias !428, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = icmp ule i64 %.sroa.4.0.copyload.i.i, %i.z
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !428
  %.not.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i

_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i: ; preds = %bb.i, %bb.f
  %.sink6.i.i = phi ptr [ %i.u, %bb.f ], [ %i.ac, %bb.i ] ; 2 uses
  %.sink5.ph.i.i = phi i64 [ %i.r, %bb.f ], [ %i.z, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink6.i.i, ptr nonnull readonly align 1 %i.l, i64 %.sroa.4.0.copyload.i.i, i1 false), !noalias !423
  br label %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i, %bb.i, %bb.f
  %.sink5.i.i = phi i64 [ %i.z, %bb.i ], [ %i.r, %bb.f ], [ %.sink5.ph.i.i, %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.u, %bb.f ], [ %.sink6.i.i, %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i ]
  store i64 %.sink5.i.i, ptr %0, align 8, !alias.scope !423, !noalias !424
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !423, !noalias !424
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !423, !noalias !424
  br label %_RINvXsh_NtCs6MoqnCnVQOT_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorECsbNLsQi0JuJ4_5tgrep.exit

_RINvXsh_NtCs6MoqnCnVQOT_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b, %_RINvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !425
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_stringNtNtBW_5impls13StringVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !457
  %.promoted16 = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !11
  %i.i = trunc nuw i8 %i.h to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %.promoted19 = load ptr, ptr %i.c, align 8
  %.promoted20 = load i64, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold, %bb.a
  %.lcssa1523 = phi i64 [ %.lcssa1521, %select.unfold ], [ %.promoted20, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.bv, %select.unfold ], [ %.promoted19, %bb.a ] ; 3 uses
  %.pre.i.i.i18 = phi i64 [ %.pre.i.i.i17, %select.unfold ], [ %.promoted16, %bb.a ] ; 4 uses
  %i.k = phi i8 [ %i.bw, %select.unfold ], [ %.promoted, %bb.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.m = icmp eq ptr %i.j, %i.e
  br i1 %i.m, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.l
  %i.n = phi i64 [ %i.bc, %bb.l ], [ %.lcssa1523, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.ay, %bb.l ], [ %i.j, %bb.c ] ; 6 uses
  %i.p = ptrtoint ptr %i.o to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 4 uses
  store ptr %i.q, ptr %i.c, align 8, !alias.scope !465, !noalias !466
  %i.r = load i8, ptr %i.o, align 1, !noalias !467, !noundef !6 ; 5 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.d, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = and i8 %i.r, 31
  %i.u = zext nneg i8 %i.t to i32                 ; 3 uses
  %i.v = icmp ne ptr %i.q, %i.e
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 4 uses
  store ptr %i.w, ptr %i.c, align 8, !alias.scope !468, !noalias !466
  %i.x = load i8, ptr %i.q, align 1, !noalias !467, !noundef !6
  %i.y = shl nuw nsw i32 %i.u, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32                ; 2 uses
  %i.ab = or disjoint i32 %i.y, %i.aa
  %i.ac = icmp samesign ugt i8 %i.r, -33
  br i1 %i.ac, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = zext nneg i8 %i.r to i32
  br label %bb.e

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i.i.i
  %i.ae = icmp ne ptr %i.w, %i.e
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 3 ; 4 uses
  store ptr %i.af, ptr %i.c, align 8, !alias.scope !469, !noalias !466
  %i.ag = load i8, ptr %i.w, align 1, !noalias !467, !noundef !6
  %i.ah = shl nuw nsw i32 %i.aa, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 2 uses
  %i.al = shl nuw nsw i32 %i.u, 12
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = icmp samesign ugt i8 %i.r, -17
  br i1 %i.an, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i.i.i
  %i.ao = icmp ne ptr %i.af, %i.e
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !alias.scope !470, !noalias !466
  %i.aq = load i8, ptr %i.af, align 1, !noalias !467, !noundef !6
  %i.ar = shl nuw nsw i32 %i.u, 18
  %i.as = and i32 %i.ar, 1835008
  %i.at = shl nuw nsw i32 %i.ak, 6
  %i.au = and i8 %i.aq, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = or disjoint i32 %i.aw, %i.as
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.af, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i.i.i ], [ %i.ap, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i.i.i ], [ %i.w, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i.i.i ], [ %i.q, %bb.d ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i.i.i ], [ %i.ax, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i.i.i ], [ %i.ad, %bb.d ] ; 8 uses
  %i.az = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.ba, %i.p
  %i.bc = add i64 %i.bb, %i.n                     ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.f [
    i32 32, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 133
  br i1 %i.bd, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.be, label %bb.l [
    i32 0, label %bb.j
end_hunk_1
begin_hunk_2_@_RINvYINtNtNtCsjFxWRWgRcyr_5rayon4iter10filter_map15FilterMapFolderINtNtB8_6extend13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1B_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB37_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB8_8plumbing6FolderRNtNtCs5Xr050g3D4S_3std4path7PathBufE12consume_iterINtNtNtB2e_5slice4iter4IterB5C_EEB4j_:bb.a
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjFxWRWgRcyr_5rayon4iter6extend13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2O_11FileVersionEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #31
          to label %bb.h unwind label %bb.f, !noalias !480

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !480
  unreachable

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.g:                                             ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = icmp eq ptr %i.i, %3
  br i1 %i.o, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsjFxWRWgRcyr_5rayon4iter10filter_map15FilterMapFolderINtNtNtB8_7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1N_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3j_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB8_8plumbing6FolderRNtNtCs5Xr050g3D4S_3std4path7PathBufE12consume_iterINtNtNtB2q_5slice4iter4IterB5O_EEB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.f = icmp eq ptr %2, %3
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.013 = phi ptr [ %2, %.lr.ph ], [ %i.j, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !489, !noalias !490, !nonnull !6, !align !16, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !491
  %.val.i = load ptr, ptr %i.k, align 8, !noalias !491, !nonnull !6, !align !16, !noundef !6
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val2.i = load ptr, ptr %i.l, align 8, !noalias !491, !nonnull !6, !align !16, !noundef !6
  invoke fastcc void @_RNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00B7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %i.c, ptr nonnull %.val.i, ptr nonnull %.val2.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.013)
          to label %bb.c unwind label %bb.e, !noalias !492

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8, !range !15, !noalias !491, !noundef !6
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.d, label %.noexc

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvXs4_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1h_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2N_11FileVersionEEINtNtB9_8plumbing6FolderB1c_E7consumeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !491
  store ptr %i.k, ptr %i.e, align 8, !alias.scope !488, !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !491
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1h_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2N_11FileVersionEENtNtNtB1U_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.f, !noalias !490

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !490
  unreachable

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.g:                                             ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.p = icmp eq ptr %i.j, %3
  br i1 %i.p, label %._crit_edge, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2), (8, 16)) %0, double noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %1, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i16 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, double noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %1, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i32 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNvXs17_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsyNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(double noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %0, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNvXs1a_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(double noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %0, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [176 x i8], align 8               ; 7 uses
  %i.h = alloca [176 x i8], align 8               ; 7 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [4 x i8], align 4                 ; 9 uses
  %.sroa.15.sroa.5 = alloca [80 x i8], align 8    ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.424 = alloca [32 x i8], align 8          ; 3 uses
  %i.m = alloca [16 x i8], align 1                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.x = load ptr, ptr %.0.val, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !6 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !504
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !504, !nonnull !6, !noundef !6 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !504, !noundef !6 ; 5 uses
  call void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve16open_within_root(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad), !noalias !504
  %i.ae = load i32, ptr %i.j, align 8, !range !20, !noalias !504, !noundef !6
  %i.af = trunc nuw i32 %i.ae to i1
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !504, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !504
  %i.ai = tail call noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.ah), !noalias !504
  br label %_RNCNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_000B9_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !range !505, !noalias !504, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !504
  store i32 %i.ak, ptr %i.k, align 4, !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !504
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k)
          to label %bb.e unwind label %bb.d, !noalias !504

bb.d:                                             ; preds = %bb.s, %.invoke.i, %bb.h, %bb.g, %bb.f, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.am = load i64, ptr %i.g, align 8, !range !10, !noalias !504, !noundef !6 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !504 ; 2 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !504
  %i.aq = invoke noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.ap)
          to label %bb.w unwind label %bb.d, !noalias !504

bb.g:                                             ; preds = %bb.e
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.514.0..sroa_idx.i, i64 160, i1 false), !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !504
  store i64 %i.am, ptr %i.h, align 8, !noalias !504
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !504
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.h)
          to label %bb.h unwind label %bb.d, !noalias !504

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !504
  %i.ar = load ptr, ptr %.8.val, align 8, !noalias !504, !nonnull !6, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !7, !noalias !504, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noalias !504
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !504, !noundef !6
  %i.ay = call i64 @llvm.umin.i64(i64 %i.ax, i64 1048576)
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17read_within_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k, i64 noundef %i.at, i64 %i.av, i64 noundef %i.ay)
          to label %bb.i unwind label %bb.d, !noalias !504

bb.i:                                             ; preds = %bb.h
  %i.az = load i64, ptr %i.e, align 8, !range !19, !noalias !504, !noundef !6 ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  %i.bb = add i64 %i.az, -9223372036854775807
  %i.bc = select i1 %i.ba, i64 %i.bb, i64 0
  switch i64 %i.bc, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %.invoke.i
    i64 2, label %bb.l
  ], !prof !506

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !504
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !504, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !504, !noundef !6
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20file_still_has_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bg)
          to label %bb.n unwind label %bb.m, !noalias !504

bb.l:                                             ; preds = %bb.i
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.l, %bb.i
  %i.bh = phi ptr [ @9, %bb.l ], [ @8, %bb.i ]
  %i.bi = phi i64 [ 16, %bb.l ], [ 40, %bb.i ]
  %i.bj = invoke noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bi)
          to label %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit20.i unwind label %bb.d, !noalias !504

bb.m:                                             ; preds = %bb.q, %bb.o, %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #31
          to label %bb.x unwind label %bb.u, !noalias !504

bb.n:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.d, align 8, !range !11, !noalias !504, !noundef !6
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !504, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !504
  %i.bp = invoke noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.bo)
          to label %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit21.i unwind label %bb.m, !noalias !504

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !range !11, !noalias !504, !noundef !6
  %i.bs = trunc nuw i8 %i.br to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !504
  br i1 %i.bs, label %_RNCNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_000B9_.exit, label %bb.q, !prof !18

bb.q:                                             ; preds = %bb.p
  %i.bt = invoke noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 28)
          to label %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit21.i unwind label %bb.m, !noalias !504

_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit21.i: ; preds = %bb.q, %bb.o
  %.sink.i = phi ptr [ %i.bp, %bb.o ], [ %i.bt, %bb.q ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.s unwind label %bb.r, !noalias !504

bb.r:                                             ; preds = %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit21.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.x unwind label %bb.t, !noalias !504

bb.s:                                             ; preds = %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit21.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.d, !noalias !504

bb.t:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !504
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit20.i, %bb.s
  %.sroa.10.0 = phi ptr [ %.sink.i, %bb.s ], [ %i.bj, %_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !504
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !504
  unreachable

_RNvNtCsjYKKaZ3qa7A_6anyhow9___private10format_err.exit20.i: ; preds = %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !504
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i

bb.v:                                             ; preds = %bb.w, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.10.1 = phi ptr [ %i.aq, %bb.w ], [ %.sroa.10.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !504
  %.val.i = load i32, ptr %i.k, align 4, !range !505, !noalias !504, !noundef !6
  %i.bx = call noundef i32 @close(i32 noundef %.val.i) #29, !noalias !504 ; 0 uses
  br label %_RNCNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_000B9_.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !504
  br label %bb.v

common.resume:                                    ; preds = %.body58, %bb.bj, %bb.bg, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.x ], [ %i.el, %bb.bg ], [ %.pn49, %.body58 ], [ %i.en, %bb.bj ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.r, %bb.m, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %i.al, %bb.d ], [ %i.bu, %bb.r ]
  %.val19.i = load i32, ptr %i.k, align 4, !range !505, !noalias !504, !noundef !6
  %i.by = call noundef i32 @close(i32 noundef %.val19.i) #29, !noalias !504 ; 0 uses
  br label %common.resume

_RNCNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_000B9_.exit.thread: ; preds = %bb.b, %bb.v
  %.sroa.10.2.ph = phi ptr [ %.sroa.10.1, %bb.v ], [ %i.ai, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !504
  br label %bb.y

_RNCNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_000B9_.exit: ; preds = %bb.p
  %.sroa.08.0.copyload = load i64, ptr %i.f, align 8, !noalias !504 ; 2 uses
  %.sroa.49.0.copyload = load ptr, ptr %i.bd, align 8, !noalias !504 ; 3 uses
end_hunk_2
begin_hunk_3_@_RNvXNvNtCsf3Ta7LF998c_4core4hint20select_unpredictableINtB2_11DropOnPanicPTTINtNtB6_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1C_4path7PathBufEjEENtNtNtB6_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep:bb.a
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCsf3Ta7LF998c_4core4hint20select_unpredictableINtB2_11DropOnPanicPTjjEENtNtNtB6_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCsf3Ta7LF998c_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1A_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !652, !noalias !651, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !652, !noalias !651 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !652, !noalias !651
  tail call void @_RNvXsc_CsbNLsQi0JuJ4_5tgrepNtB5_16IndexStrategyArgNtNtCs1L7Mk9ubPba_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e), !noalias !652
  %i.g = load i64, ptr %0, align 8, !range !15, !alias.scope !651, !noalias !652, !noundef !6
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2n_12value_parserINtB3D_15EnumValueParserBQ_ENtB3D_16TypedValueParser15possible_values0EBS_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !651, !noalias !652
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2n_12value_parserINtB3D_15EnumValueParserBQ_ENtB3D_16TypedValueParser15possible_values0EBS_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2n_12value_parserINtB3D_15EnumValueParserBQ_ENtB3D_16TypedValueParser15possible_values0EBS_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1A_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1A_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !663, !noalias !662, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !663, !noalias !662, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2n_12value_parserINtB3D_15EnumValueParserBQ_ENtB3D_16TypedValueParser15possible_values0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !663, !noalias !662
  %.val.i = load i8, ptr %i.a, align 1, !range !11, !noalias !664, !noundef !6
  %i.f = trunc nuw i8 %.val.i to i1
  %spec.select.i.i.i.i = select i1 %i.f, ptr @81, ptr @80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !665, !noalias !663
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !665, !noalias !663
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.i, align 8, !alias.scope !665, !noalias !663
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %spec.select.i.i.i.i, ptr %i.j, align 8, !alias.scope !665, !noalias !663
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.k, align 8, !alias.scope !665, !noalias !663
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.l, align 8, !alias.scope !665, !noalias !663
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2n_12value_parserINtB3D_15EnumValueParserBQ_ENtB3D_16TypedValueParser15possible_values0EBU_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2n_12value_parserINtB3D_15EnumValueParserBQ_ENtB3D_16TypedValueParser15possible_values0EBU_.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ 0, %bb.b ], [ -1, %bb.a ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !662, !noalias !663
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1A_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp slt i64 %.0.val, 0
  br i1 %i.e, label %.noexc16, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.b, align 8, !range !7, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15, label %bb.b, !prof !9

.noexc15:                                         ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

.noexc16:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !noundef !6 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17, label %bb.d, !prof !9

.noexc17:                                         ; preds = %.noexc16
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #30
  unreachable

bb.b:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.s = icmp ugt i64 %i.i, 18
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0 = phi i64 [ %i.x, %bb.e ], [ %.0.val, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0, ptr noalias nofree noundef nonnull %i.d, i64 noundef 19)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %.noexc16
  %i.u = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6
  %i.v = icmp ugt i64 %i.o, 19
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.o, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !670, !nonnull !6, !noundef !6
  store i8 45, ptr %i.w, align 1
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !670
  %i.x = sub i64 0, %.0.val
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %1 = extractvalue { ptr, i64 } %i.t, 1          ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %1)
          to label %.noexc20 unwind label %bb.j

.noexc20:                                         ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !671, !noundef !6 ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ab)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !671, !nonnull !6, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.y, i64 %1, i1 false)
  %.pre.i = load i64, ptr %i.z, align 8, !alias.scope !671
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc20
  %i.af = phi i64 [ %.pre.i, %bb.g ], [ %i.aa, %.noexc20 ]
  %i.ag = add i64 %i.af, %1
  store i64 %i.ag, ptr %i.z, align 8, !alias.scope !671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2f_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !11, !noundef !6
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2h_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !11, !noundef !6
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !16, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !16, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %.val = load i8, ptr %i.a, align 1, !range !23, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep.169, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !16, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !675, !noalias !676, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !675, !noalias !676, !noundef !6
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !675
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB5_17FilterMapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1W_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3s_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB7_8plumbing8ConsumerRNtNtCs5Xr050g3D4S_3std4path7PathBufE11into_folderB4E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB5_17FilterMapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1W_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3s_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB7_8plumbing8ConsumerRNtNtCs5Xr050g3D4S_3std4path7PathBufE4fullB4E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB5_17FilterMapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1W_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3s_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB7_8plumbing8ConsumerRNtNtCs5Xr050g3D4S_3std4path7PathBufE8split_atB4E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  call void @_RNvXs3_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1j_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2P_11FileVersionEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %2)
  %i.f = load ptr, ptr %i.a, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %1, align 8, !nonnull !6, !align !16, !noundef !6 ; 2 uses
  store ptr %i.m, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs2_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB5_17FilterMapConsumerNtNtB7_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB7_8plumbing8ConsumerRNtNtCs5Xr050g3D4S_3std4path7PathBufE11into_folderB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #15 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB5_17FilterMapConsumerNtNtB7_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB7_8plumbing8ConsumerRNtNtCs5Xr050g3D4S_3std4path7PathBufE4fullB1M_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs2_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB5_17FilterMapConsumerNtNtB7_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EINtNtB7_8plumbing8ConsumerRNtNtCs5Xr050g3D4S_3std4path7PathBufE8split_atB1M_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %0, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !6 ; 26 uses
  switch i64 %i.a, label %default.unreachable7 [
end_hunk_3
begin_hunk_4_@_RNvXsc_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_14AnyValueParser9parse_refCsbNLsQi0JuJ4_5tgrep:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !759
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx4, align 8
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @68, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @47, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsc_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser10parse_ref_CsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsy_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !762
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 641) 24, i64 noundef range(i64 1, 129) 8) #29, !noalias !762 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !762
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @69, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @48, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser15possible_valuesCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @48, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9clone_anyCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val2.i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !771, !noalias !772, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load i64, ptr %i.a, align 8, !alias.scope !771, !noalias !772
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !771, !noalias !772, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !771, !noalias !772
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !773
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 641) 32, i64 noundef range(i64 1, 129) 8) #29, !noalias !773 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !773
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.f = icmp eq i64 %.val.i.i, 2
  %spec.select.i4.i.i = select i1 %i.f, i64 undef, i64 %.val1.i.i
  %i.g = icmp eq i64 %.val2.i.i, 2
  %spec.select.i.i.i = select i1 %i.g, i64 undef, i64 %.val3.i.i
  store i64 %.val2.i.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %spec.select.i4.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @54, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsc_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9parse_refCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsy_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !776
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 641) 24, i64 noundef range(i64 1, 129) 8) #29, !noalias !776 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !776
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @69, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @48, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_16TypedValueParser9parse_refCsbNLsQi0JuJ4_5tgrep(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.l = load i64, ptr %i.j, align 8, !range !7, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtCs1L7Mk9ubPba_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0)
  call void @_RNvMNtNtCs1L7Mk9ubPba_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMNtCs1L7Mk9ubPba_12clap_builder5errorNtB2_5Error12invalid_utf8CsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !6 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void %.0.val(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r), !inline_history !777
  %i.s = load i8, ptr %i.k, align 8, !range !11, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = load i8, ptr %i.u, align 1, !range !23, !noundef !6
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !785
  store i64 0, ptr %i.d, align 8, !noalias !785
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !785
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !785
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.w, align 8, !noalias !785
  store ptr %i.d, ptr %i.c, align 8, !noalias !785
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @57, ptr %i.x, align 8, !noalias !785
  %i.y = invoke noundef zeroext i1 @_RNvXs9_NtNtCs1L7Mk9ubPba_12clap_builder7builder3argNtB5_3ArgNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f, !noalias !786

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #31
          to label %common.resume.i unwind label %bb.i, !noalias !786

bb.g:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.h, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i, !prof !9

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #34
          to label %.noexc.i.i unwind label %bb.f, !noalias !786

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !786
  unreachable

common.resume.i:                                  ; preds = %bb.v, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.f ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.g
  %.sroa.020.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !787
  %.sroa.421.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !787
  %.sroa.522.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !785
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !788
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !788
  %i.ab = load i64, ptr %i.b, align 8, !range !7, !noalias !788, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !8, !noalias !788, !noundef !6 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.k, label %_RNCNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1f_3num5error13ParseIntErrorENtB9_16TypedValueParser9parse_refs_0s_0CsbNLsQi0JuJ4_5tgrep.exit.i, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.af, align 8, !noalias !788
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #30, !noalias !788
  unreachable

_RNCNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1f_3num5error13ParseIntErrorENtB9_16TypedValueParser9parse_refs_0s_0CsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.j
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !788, !nonnull !6, !noundef !6 ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ae, 2
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !788
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ah, i8 46, i64 3, i1 false), !noalias !788
  br label %bb.l

bb.l:                                             ; preds = %_RNCNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1f_3num5error13ParseIntErrorENtB9_16TypedValueParser9parse_refs_0s_0CsbNLsQi0JuJ4_5tgrep.exit.i, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.6.023.i = phi i64 [ 3, %_RNCNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1f_3num5error13ParseIntErrorENtB9_16TypedValueParser9parse_refs_0s_0CsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.522.0.copyload.i, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i ]
  %.sroa.5.0.i = phi ptr [ %i.ah, %_RNCNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1f_3num5error13ParseIntErrorENtB9_16TypedValueParser9parse_refs_0s_0CsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.421.0.copyload.i, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.ae, %_RNCNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1f_3num5error13ParseIntErrorENtB9_16TypedValueParser9parse_refs_0s_0CsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.020.0.copyload.i, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsbNLsQi0JuJ4_5tgrep.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !789
  store i64 %.sroa.0.0.i, ptr %i.g, align 8, !noalias !789
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !789
  %.sroa.6.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.6.023.i, ptr %.sroa.6.0..sroa_idx14.i, align 8, !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !789
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.m, !noalias !789

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.e, align 8, !range !7, !noalias !789, !noundef !6
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !8, !noalias !789, !noundef !6 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.al, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !789
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #30
          to label %bb.u unwind label %bb.m, !noalias !789

bb.p:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !789, !nonnull !6, !noundef !6 ; 2 uses
  %i.ar = icmp ule i64 %i.r, %i.an
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !789
  %.not8.i = icmp eq i64 %i.r, 0
  br i1 %.not8.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p
  store i64 %i.an, ptr %i.f, align 8, !noalias !789
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !789
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !789
  %i.as = invoke { ptr, ptr } @_RNvXse_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtB7_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3num5error13ParseIntErrorE4fromCsbNLsQi0JuJ4_5tgrep(i8 noundef range(i8 0, 6) %i.v)
          to label %_RNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1d_3num5error13ParseIntErrorENtB7_16TypedValueParser9parse_refs_0CsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.s, !noalias !789 ; 2 uses

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 1 %i.p, i64 %i.r, i1 false), !noalias !789
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %bb.v unwind label %bb.t, !noalias !789

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !789
  unreachable

bb.u:                                             ; preds = %bb.o
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.m
  %.pn.ph.i = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.aj, %bb.m ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %common.resume.i unwind label %bb.t, !noalias !789

_RNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1d_3num5error13ParseIntErrorENtB7_16TypedValueParser9parse_refs_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.q
  %i.av = extractvalue { ptr, ptr } %i.as, 0
  %i.aw = extractvalue { ptr, ptr } %i.as, 1
  %i.ax = call fastcc noundef nonnull align 8 ptr @_RNvMNtCs1L7Mk9ubPba_12clap_builder5errorNtB2_5Error16value_validationCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aw), !noalias !789 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !789
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMNtCs1L7Mk9ubPba_12clap_builder5errorNtB2_5Error8with_cmdCsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0), !noalias !789 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.w:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1d_3num5error13ParseIntErrorENtB7_16TypedValueParser9parse_refs_0CsbNLsQi0JuJ4_5tgrep.exit, %bb.b
  %.sroa.4.0 = phi ptr [ %i.n, %bb.b ], [ %i.ax, %_RNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1d_3num5error13ParseIntErrorENtB7_16TypedValueParser9parse_refs_0CsbNLsQi0JuJ4_5tgrep.exit ], [ %i.bb, %bb.w ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 1, %_RNCNvXsd_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1d_3num5error13ParseIntErrorENtB7_16TypedValueParser9parse_refs_0CsbNLsQi0JuJ4_5tgrep.exit ], [ 0, %bb.w ]
  %i.bc = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bd = insertvalue { i64, ptr } %i.bc, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.bd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXse_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableINtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFromjEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsf_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableINtNtB7_12value_parser15EnumValueParserNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgEINtB5_14IntoResettableNtBY_11ValueParserE15into_resettableB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_4
