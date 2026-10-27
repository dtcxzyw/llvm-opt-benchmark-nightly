Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.10?download=true
inline.NumInlined: 4350
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTxxEEECs1dZk1kIfPhr_19candle_transformers:bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTxxEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTxxEEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecfEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecfEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9stable_lm15RotaryEmbeddingEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !396, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !396
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !400, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !401
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !405, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !406
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9stable_lm15RotaryEmbeddingEBH_.exit

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9stable_lm15RotaryEmbeddingEBH_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9stable_lm15RotaryEmbeddingEBH_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_EEB1j_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !13, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !407, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #28
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_.exit

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !13, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !407, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #28
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_.exit4

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocks10JointBlockEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1dZk1kIfPhr_19candle_transformers12quantized_nn6LinearEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !462, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !466, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !466
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %.invoke.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !469, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !469
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !473, !nonnull !5, !noundef !5
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !473
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %.invoke.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i

.invoke.i:                                        ; preds = %bb.e, %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.invoke.i, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span4SpanECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.m) #27
          to label %.body unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %.invoke.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !range !10, !alias.scope !474, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !range !12, !alias.scope !475, !noundef !5
  %i.r = invoke noundef zeroext i1 @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, i64 noundef %i.q)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs95szcO5cFRN_7tracing4span5InnerEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n) #27
          to label %.body unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !482, !nonnull !5, !noundef !5
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !483
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs2ZSzJGZRtAv_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.s, %bb.h ], [ %i.l, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !484, !noundef !5 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !485
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.s

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit: ; preds = %bb.j, %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QMatMulECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !486, !noundef !5 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit2, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit
  %i.aj = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !487
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit2

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit2: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing7QMatMulEBH_.exit, %bb.q, %bb.r
  ret void

bb.s:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.o, %.body, %bb.p
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1dZk1kIfPhr_19candle_transformers12quantized_nn7RmsNormEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !513, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !513
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB5_5Block3new:bb.a
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit67

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 4)
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %.body130.i, %bb.g, %.body60
  %.pn45 = phi { ptr, i32 } [ %.pn, %.body60 ], [ %i.al, %bb.g ], [ %.pn115.i, %.body130.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #27
          to label %.body65 unwind label %bb.dh

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  %.val = load ptr, ptr %4, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !24612
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 6)
          to label %bb.j unwind label %bb.i, !noalias !24613

.body130.i:                                       ; preds = %bb.ay, %bb.ax, %bb.aw, %.body124.i, %bb.i
  %.pn115.i = phi { ptr, i32 } [ %.pn113.i, %.body124.i ], [ %i.am, %bb.i ], [ %i.dn, %bb.ay ], [ %i.dn, %bb.ax ], [ %i.dn, %bb.aw ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #27
          to label %.body unwind label %bb.an, !noalias !24613

bb.i:                                             ; preds = %bb.ba, %bb.j, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.w, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.v)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit.i unwind label %bb.i, !noalias !24613

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24612
  %i.an = load i64, ptr %i.w, align 8, !range !16, !noalias !24612, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !24612 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !24612 ; 2 uses
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit.i
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.as = load <2 x ptr>, ptr %.sroa.664.0..sroa_idx.i, align 8, !noalias !24614
  %.sroa.33.32..sroa.664.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.33.32.copyload = load ptr, ptr %.sroa.33.32..sroa.664.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.34.32..sroa.664.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.34.32.copyload = load ptr, ptr %.sroa.34.32..sroa.664.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.35.32..sroa.664.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.35.32.copyload = load ptr, ptr %.sroa.35.32..sroa.664.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.36.32..sroa.664.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.36.32.copyload = load i64, ptr %.sroa.36.32..sroa.664.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.37.32..sroa.664.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.sroa.37.32.copyload = load double, ptr %.sroa.37.32..sroa.664.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !24612
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i

bb.l:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !24612
  store ptr %i.ap, ptr %i.x, align 8, !noalias !24612
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 6 uses
  store ptr %i.ar, ptr %i.at, align 8, !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !24612
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 6)
          to label %bb.n unwind label %bb.m, !noalias !24613

.body124.i:                                       ; preds = %bb.ar, %bb.aq, %bb.ap, %.body.i, %bb.m
  %.pn113.i = phi { ptr, i32 } [ %.pn111.i, %.body.i ], [ %i.au, %bb.m ], [ %i.cz, %bb.ar ], [ %i.cz, %bb.aq ], [ %i.cz, %bb.ap ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.x) #27
          to label %.body130.i unwind label %bb.an, !noalias !24613

bb.m:                                             ; preds = %bb.at, %bb.n, %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body124.i

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear14linear_no_bias(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit117.i unwind label %bb.m, !noalias !24613

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit117.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !24612
  %i.av = load i64, ptr %i.t, align 8, !range !16, !noalias !24612, !noundef !5 ; 2 uses
  %.not107.i = icmp eq i64 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !24612 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !24612 ; 2 uses
  br i1 %.not107.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit117.i
  %.sroa.676.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ba = load <2 x ptr>, ptr %.sroa.676.0..sroa_idx.i, align 8, !noalias !24614
  %.sroa.33.32..sroa.676.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.33.32.copyload80 = load ptr, ptr %.sroa.33.32..sroa.676.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.34.32..sroa.676.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.34.32.copyload84 = load ptr, ptr %.sroa.34.32..sroa.676.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.35.32..sroa.676.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.35.32.copyload88 = load ptr, ptr %.sroa.35.32..sroa.676.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.36.32..sroa.676.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.36.32.copyload92 = load i64, ptr %.sroa.36.32..sroa.676.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.37.32..sroa.676.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.37.32.copyload96 = load double, ptr %.sroa.37.32..sroa.676.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !24612
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i

bb.p:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !24612
  store ptr %i.ax, ptr %i.u, align 8, !noalias !24612
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  store ptr %i.az, ptr %i.bb, align 8, !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24612
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 6)
          to label %bb.r unwind label %bb.q, !noalias !24613

.body.i:                                          ; preds = %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.q
  %.pn111.i = phi { ptr, i32 } [ %.pn.i, %bb.u ], [ %i.bc, %bb.q ], [ %i.bs, %bb.ab ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.z ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u) #27
          to label %.body124.i unwind label %bb.an, !noalias !24613

bb.q:                                             ; preds = %bb.ad, %bb.r, %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.q, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit118.i unwind label %bb.q, !noalias !24613

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit118.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !24612
  %i.bd = load i64, ptr %i.q, align 8, !range !16, !noalias !24612, !noundef !5 ; 2 uses
  %.not108.i = icmp eq i64 %i.bd, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !24612 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !24612 ; 2 uses
  br i1 %.not108.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit118.i
  %.sroa.688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bi = load <2 x ptr>, ptr %.sroa.688.0..sroa_idx.i, align 8, !noalias !24614
  %.sroa.33.32..sroa.688.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.33.32.copyload81 = load ptr, ptr %.sroa.33.32..sroa.688.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.34.32..sroa.688.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.34.32.copyload85 = load ptr, ptr %.sroa.34.32..sroa.688.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.35.32..sroa.688.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.35.32.copyload89 = load ptr, ptr %.sroa.35.32..sroa.688.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.36.32..sroa.688.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.36.32.copyload93 = load i64, ptr %.sroa.36.32..sroa.688.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  %.sroa.37.32..sroa.688.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %.sroa.37.32.copyload97 = load double, ptr %.sroa.37.32..sroa.688.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !24612
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.t:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !24612
  store ptr %i.bf, ptr %i.r, align 16, !noalias !24612
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !24612
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4)
          to label %bb.w unwind label %bb.v, !noalias !24613

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.cq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %i.bk, %bb.v ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r) #27
          to label %.body.i unwind label %bb.an, !noalias !24613

bb.v:                                             ; preds = %bb.w, %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit119.i unwind label %bb.v, !noalias !24613

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit119.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24612
  %i.bl = load i64, ptr %i.n, align 8, !range !16, !noalias !24612, !noundef !5 ; 4 uses
  %.not109.i = icmp eq i64 %i.bl, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %5 = load ptr, ptr %i.bm, align 8, !noalias !24612 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %6 = load ptr, ptr %i.bn, align 8, !noalias !24612 ; 5 uses
  br i1 %.not109.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit119.i
  %.sroa.6100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bo = load <2 x ptr>, ptr %.sroa.6100.0..sroa_idx.i, align 8, !noalias !24614 ; 3 uses
  %.sroa.33.32..sroa.6100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.33.32.copyload82 = load ptr, ptr %.sroa.33.32..sroa.6100.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614 ; 3 uses
  %.sroa.34.32..sroa.6100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.34.32.copyload86 = load ptr, ptr %.sroa.34.32..sroa.6100.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614 ; 3 uses
  %.sroa.35.32..sroa.6100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.35.32.copyload90 = load ptr, ptr %.sroa.35.32..sroa.6100.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614 ; 3 uses
  %.sroa.36.32..sroa.6100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.36.32.copyload94 = load i64, ptr %.sroa.36.32..sroa.6100.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614 ; 3 uses
  %.sroa.37.32..sroa.6100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.37.32.copyload98 = load double, ptr %.sroa.37.32..sroa.6100.0..sroa_idx.i.sroa_idx, align 8, !noalias !24614 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24612
  call void @llvm.experimental.noalias.scope.decl(metadata !24615)
  call void @llvm.experimental.noalias.scope.decl(metadata !24616)
  call void @llvm.experimental.noalias.scope.decl(metadata !24617)
  call void @llvm.experimental.noalias.scope.decl(metadata !24618)
  %i.bp = load ptr, ptr %i.r, align 16, !alias.scope !24619, !noalias !24612, !nonnull !5, !noundef !5
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !24620
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i unwind label %bb.z, !noalias !24613

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24621)
  %i.bt = load ptr, ptr %i.bj, align 8, !alias.scope !24622, !noalias !24612, !noundef !5 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.body.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !24623
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ab, label %.body.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #25
          to label %.body.i unwind label %bb.ae, !noalias !24613

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !24624)
  %i.bx = load ptr, ptr %i.bj, align 8, !alias.scope !24625, !noalias !24612, !noundef !5 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %i.bz = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !24626
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.ad, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.q, !noalias !24613

bb.ae:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !24613
  unreachable

bb.af:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva26linear.exit119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24612
  store ptr %5, ptr %i.o, align 8, !noalias !24612
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %6, ptr %i.cc, align 8, !noalias !24612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24612
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.cd = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !24612
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %.val, ptr %i.l, align 8, !noalias !24612
  %i.cf = icmp eq i64 %3, 0
  br i1 %i.cf, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cg = udiv i64 %2, %3
  %i.ch = uitofp i64 %i.cg to double
  %i.ci = call double @llvm.sqrt.f64(double %i.ch)
  %i.cj = fdiv double 1.000000e+00, %i.ci
  %i.ck = load ptr, ptr %i.x, align 8, !noalias !24612, !nonnull !5, !noundef !5
  %i.cl = load ptr, ptr %i.at, align 8, !noalias !24612, !noundef !5
  %i.cm = load ptr, ptr %i.u, align 8, !noalias !24612, !nonnull !5, !noundef !5
  %i.cn = load ptr, ptr %i.bb, align 8, !noalias !24612, !noundef !5
  %i.co = load <2 x ptr>, ptr %i.r, align 16, !noalias !24612
  %i.cp = ptrtoint ptr %i.cl to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24612
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i

bb.aj:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24
          to label %bb.am unwind label %bb.ak, !noalias !24613

bb.ak:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = atomicrmw add ptr %.val, i64 -1 release, align 8, !noalias !24627
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.an, !noalias !24613

bb.am:                                            ; preds = %bb.aj
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i: ; preds = %bb.ba, %bb.az, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i, %bb.ai, %bb.k
  %.sroa.37.0 = phi double [ %i.cj, %bb.ai ], [ %.sroa.37.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.37.1, %bb.ba ], [ %.sroa.37.1, %bb.az ], [ %.sroa.37.32.copyload, %bb.k ] ; 2 uses
  %.sroa.36.0 = phi i64 [ %3, %bb.ai ], [ %.sroa.36.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.36.1, %bb.ba ], [ %.sroa.36.1, %bb.az ], [ %.sroa.36.32.copyload, %bb.k ] ; 2 uses
  %.sroa.35.0 = phi ptr [ %.val, %bb.ai ], [ %.sroa.35.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.35.1, %bb.ba ], [ %.sroa.35.1, %bb.az ], [ %.sroa.35.32.copyload, %bb.k ] ; 2 uses
  %.sroa.34.0 = phi ptr [ %6, %bb.ai ], [ %.sroa.34.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.34.1, %bb.ba ], [ %.sroa.34.1, %bb.az ], [ %.sroa.34.32.copyload, %bb.k ] ; 2 uses
  %.sroa.33.0 = phi ptr [ %5, %bb.ai ], [ %.sroa.33.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.33.1, %bb.ba ], [ %.sroa.33.1, %bb.az ], [ %.sroa.33.32.copyload, %bb.k ] ; 2 uses
  %.sroa.22.0 = phi ptr [ %i.cn, %bb.ai ], [ %.sroa.22.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.22.1, %bb.ba ], [ %.sroa.22.1, %bb.az ], [ %i.ar, %bb.k ] ; 2 uses
  %.sroa.17.0 = phi ptr [ %i.cm, %bb.ai ], [ %.sroa.17.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.17.1, %bb.ba ], [ %.sroa.17.1, %bb.az ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.cp, %bb.ai ], [ %.sroa.10.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %.sroa.10.1, %bb.ba ], [ %.sroa.10.1, %bb.az ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ck, %bb.ai ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %bb.k ] ; 2 uses
  %i.ct = phi <2 x ptr> [ %i.co, %bb.ai ], [ %i.dj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i ], [ %i.dj, %bb.ba ], [ %i.dj, %bb.az ], [ %i.as, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24612
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB2_9Attention3new.exit unwind label %bb.g

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.al, %bb.u, %.body.i, %.body124.i, %.body130.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !24613
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.al, %bb.ak
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.o) #27
          to label %bb.u unwind label %bb.an, !noalias !24613

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.ad, %bb.ac, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i, %bb.s
  %.sroa.37.2 = phi double [ %.sroa.37.32.copyload98, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.37.32.copyload98, %bb.ad ], [ %.sroa.37.32.copyload98, %bb.ac ], [ %.sroa.37.32.copyload97, %bb.s ] ; 3 uses
  %.sroa.36.2 = phi i64 [ %.sroa.36.32.copyload94, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.36.32.copyload94, %bb.ad ], [ %.sroa.36.32.copyload94, %bb.ac ], [ %.sroa.36.32.copyload93, %bb.s ] ; 3 uses
  %.sroa.35.2 = phi ptr [ %.sroa.35.32.copyload90, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.35.32.copyload90, %bb.ad ], [ %.sroa.35.32.copyload90, %bb.ac ], [ %.sroa.35.32.copyload89, %bb.s ] ; 3 uses
  %.sroa.34.2 = phi ptr [ %.sroa.34.32.copyload86, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.34.32.copyload86, %bb.ad ], [ %.sroa.34.32.copyload86, %bb.ac ], [ %.sroa.34.32.copyload85, %bb.s ] ; 3 uses
  %.sroa.33.2 = phi ptr [ %.sroa.33.32.copyload82, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.33.32.copyload82, %bb.ad ], [ %.sroa.33.32.copyload82, %bb.ac ], [ %.sroa.33.32.copyload81, %bb.s ] ; 3 uses
  %.sroa.22.2 = phi ptr [ %6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %6, %bb.ad ], [ %6, %bb.ac ], [ %i.bh, %bb.s ] ; 3 uses
  %.sroa.17.2 = phi ptr [ %5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %5, %bb.ad ], [ %5, %bb.ac ], [ %i.bf, %bb.s ] ; 3 uses
  %.sroa.10.2 = phi i64 [ %i.bl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %i.bl, %bb.ad ], [ %i.bl, %bb.ac ], [ %i.bd, %bb.s ] ; 3 uses
  %i.cv = phi <2 x ptr> [ %i.bo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %i.bo, %bb.ad ], [ %i.bo, %bb.ac ], [ %i.bi, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24612
  call void @llvm.experimental.noalias.scope.decl(metadata !24628)
  call void @llvm.experimental.noalias.scope.decl(metadata !24629)
  call void @llvm.experimental.noalias.scope.decl(metadata !24630)
  call void @llvm.experimental.noalias.scope.decl(metadata !24631)
  %i.cw = load ptr, ptr %i.u, align 8, !alias.scope !24632, !noalias !24612, !nonnull !5, !noundef !5
  %i.cx = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !24633
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i unwind label %bb.ap, !noalias !24613

bb.ap:                                            ; preds = %bb.ao
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24634)
  %i.da = load ptr, ptr %i.bb, align 8, !alias.scope !24635, !noalias !24612, !noundef !5 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.body124.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dc = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !24636
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ar, label %.body124.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #25
          to label %.body124.i unwind label %bb.au, !noalias !24613

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i: ; preds = %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24637)
  %i.de = load ptr, ptr %i.bb, align 8, !alias.scope !24638, !noalias !24612, !noundef !5 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i
  %i.dg = atomicrmw add ptr %i.de, i64 -1 release, align 8, !noalias !24639
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i unwind label %bb.m, !noalias !24613

bb.au:                                            ; preds = %bb.ar
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !24613
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i: ; preds = %bb.at, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i, %bb.o
  %.sroa.37.1 = phi double [ %.sroa.37.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.37.2, %bb.at ], [ %.sroa.37.2, %bb.as ], [ %.sroa.37.32.copyload96, %bb.o ] ; 3 uses
  %.sroa.36.1 = phi i64 [ %.sroa.36.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.36.2, %bb.at ], [ %.sroa.36.2, %bb.as ], [ %.sroa.36.32.copyload92, %bb.o ] ; 3 uses
  %.sroa.35.1 = phi ptr [ %.sroa.35.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.35.2, %bb.at ], [ %.sroa.35.2, %bb.as ], [ %.sroa.35.32.copyload88, %bb.o ] ; 3 uses
  %.sroa.34.1 = phi ptr [ %.sroa.34.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.34.2, %bb.at ], [ %.sroa.34.2, %bb.as ], [ %.sroa.34.32.copyload84, %bb.o ] ; 3 uses
  %.sroa.33.1 = phi ptr [ %.sroa.33.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.33.2, %bb.at ], [ %.sroa.33.2, %bb.as ], [ %.sroa.33.32.copyload80, %bb.o ] ; 3 uses
  %.sroa.22.1 = phi ptr [ %.sroa.22.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.22.2, %bb.at ], [ %.sroa.22.2, %bb.as ], [ %i.az, %bb.o ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.17.2, %bb.at ], [ %.sroa.17.2, %bb.as ], [ %i.ax, %bb.o ] ; 3 uses
  %.sroa.10.1 = phi i64 [ %.sroa.10.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %.sroa.10.2, %bb.at ], [ %.sroa.10.2, %bb.as ], [ %i.av, %bb.o ] ; 3 uses
  %i.dj = phi <2 x ptr> [ %i.cv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i121.i ], [ %i.cv, %bb.at ], [ %i.cv, %bb.as ], [ %i.ba, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24612
  call void @llvm.experimental.noalias.scope.decl(metadata !24640)
  call void @llvm.experimental.noalias.scope.decl(metadata !24641)
  call void @llvm.experimental.noalias.scope.decl(metadata !24642)
  call void @llvm.experimental.noalias.scope.decl(metadata !24643)
  %i.dk = load ptr, ptr %i.x, align 8, !alias.scope !24644, !noalias !24612, !nonnull !5, !noundef !5
  %i.dl = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !noalias !24645
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.av, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i unwind label %bb.aw, !noalias !24613

bb.aw:                                            ; preds = %bb.av
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24646)
  %i.do = load ptr, ptr %i.at, align 8, !alias.scope !24647, !noalias !24612, !noundef !5 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.body130.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dq = atomicrmw add ptr %i.do, i64 -1 release, align 8, !noalias !24648
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.ay, label %.body130.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #25
          to label %.body130.i unwind label %bb.bb, !noalias !24613

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i: ; preds = %bb.av, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit126.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24649)
  %i.ds = load ptr, ptr %i.at, align 8, !alias.scope !24650, !noalias !24612, !noundef !5 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i127.i
  %i.du = atomicrmw add ptr %i.ds, i64 -1 release, align 8, !noalias !24651
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.ba, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i unwind label %bb.i, !noalias !24613

bb.bb:                                            ; preds = %bb.ay
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !24613
  unreachable

_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB2_9Attention3new.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.dx = icmp eq ptr %.sroa.0.0, null
  br i1 %i.dx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB2_9Attention3new.exit
  store i64 %.sroa.10.0, ptr %0, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.0, ptr %.sroa.4173.0..sroa_idx, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.22.0, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.ct, ptr %.sroa.6175.0..sroa_idx, align 8
  %.sroa.8177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.33.0, ptr %.sroa.8177.0..sroa_idx, align 8
  %.sroa.9178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.34.0, ptr %.sroa.9178.0..sroa_idx, align 8
  %.sroa.10179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.35.0, ptr %.sroa.10179.0..sroa_idx, align 8
  %.sroa.11180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.36.0, ptr %.sroa.11180.0..sroa_idx, align 8
  %.sroa.12181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %.sroa.37.0, ptr %.sroa.12181.0..sroa_idx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 2, ptr %i.dy, align 8
  br label %bb.di

bb.bd:                                            ; preds = %_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB2_9Attention3new.exit
  store ptr %.sroa.0.0, ptr %i.ad, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.17.0, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.sroa.22.0, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store <2 x ptr> %i.ct, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.8.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %.sroa.33.0, ptr %.sroa.410.sroa.8.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.9.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %.sroa.34.0, ptr %.sroa.410.sroa.9.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.10.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %.sroa.35.0, ptr %.sroa.410.sroa.10.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.11.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 %.sroa.36.0, ptr %.sroa.410.sroa.11.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.12.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store double %.sroa.37.0, ptr %.sroa.410.sroa.12.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 5)
          to label %bb.bf unwind label %bb.be

.body60:                                          ; preds = %bb.da, %bb.db, %bb.dc, %bb.be, %.body57
  %.pn = phi { ptr, i32 } [ %eh.lpad-body58, %.body57 ], [ %i.dz, %bb.be ], [ %i.ha, %bb.dc ], [ %i.ha, %bb.db ], [ %i.ha, %bb.da ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4eva29AttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ad) #27
          to label %.body unwind label %bb.dh

bb.be:                                            ; preds = %bb.de, %bb.bf, %bb.bd
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10layer_norm10layer_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aa, i64 noundef %2, double noundef f0x3EB0C6F7A0B5ED8D, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.z)
          to label %bb.bg unwind label %bb.be

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ea = load i64, ptr %i.aa, align 8, !range !16, !noundef !5 ; 2 uses
  %.not43 = icmp eq i64 %i.ea, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false)
  br i1 %.not43, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
end_hunk_1
begin_hunk_2_@_RNvMsd_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_modelNtB5_26ChineseClipTextTransformer7forward:bb.a

bb.gb:                                            ; preds = %bb.ei
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30598)
  call void @llvm.experimental.noalias.scope.decl(metadata !30599)
  call void @llvm.experimental.noalias.scope.decl(metadata !30600)
  %i.pv = load ptr, ptr %i.bn, align 8, !alias.scope !30601, !noalias !30414, !nonnull !5, !noundef !5
  %i.pw = atomicrmw add ptr %i.pv, i64 -1 release, align 8, !noalias !30602
  %i.px = icmp eq i64 %i.pw, 1
  br i1 %i.px, label %bb.gc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237.i

bb.gc:                                            ; preds = %bb.gb
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237.i unwind label %bb.fp, !noalias !30413

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !30414
  call void @llvm.experimental.noalias.scope.decl(metadata !30603)
  call void @llvm.experimental.noalias.scope.decl(metadata !30604)
  call void @llvm.experimental.noalias.scope.decl(metadata !30605)
  %i.py = load ptr, ptr %i.bn, align 8, !alias.scope !30606, !noalias !30414, !nonnull !5, !noundef !5
  %i.pz = atomicrmw add ptr %i.py, i64 -1 release, align 8, !noalias !30607
  %i.qa = icmp eq i64 %i.pz, 1
  br i1 %i.qa, label %bb.gd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit263.i

bb.gd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit263.i unwind label %bb.fn, !noalias !30413

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit263.i: ; preds = %bb.gd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !30414
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit250.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i.sink.split: ; preds = %.invoke, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit203.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !30414
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i.sink.split, %bb.fz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit250.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !30414
  br label %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_model27get_extended_attention_mask.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit209.i: ; preds = %bb.ef, %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !30608)
  call void @llvm.experimental.noalias.scope.decl(metadata !30609)
  call void @llvm.experimental.noalias.scope.decl(metadata !30610)
  %i.qb = load ptr, ptr %i.bn, align 8, !alias.scope !30611, !noalias !30414, !nonnull !5, !noundef !5
  %i.qc = atomicrmw add ptr %i.qb, i64 -1 release, align 8, !noalias !30612
  %i.qd = icmp eq i64 %i.qc, 1
  br i1 %i.qd, label %bb.ge, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237.i

bb.ge:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit209.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237.i unwind label %bb.fp, !noalias !30413

bb.gf:                                            ; preds = %bb.ec
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30613)
  call void @llvm.experimental.noalias.scope.decl(metadata !30614)
  call void @llvm.experimental.noalias.scope.decl(metadata !30615)
  %i.qf = load ptr, ptr %i.bn, align 8, !alias.scope !30616, !noalias !30414, !nonnull !5, !noundef !5
  %i.qg = atomicrmw add ptr %i.qf, i64 -1 release, align 8, !noalias !30617
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.gg, label %.body157

bb.gg:                                            ; preds = %bb.gf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %.body157 unwind label %bb.fp, !noalias !30413

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit207.i: ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !30414
  call void @llvm.experimental.noalias.scope.decl(metadata !30618)
  call void @llvm.experimental.noalias.scope.decl(metadata !30619)
  call void @llvm.experimental.noalias.scope.decl(metadata !30620)
  %i.qi = load ptr, ptr %i.bn, align 8, !alias.scope !30621, !noalias !30414, !nonnull !5, !noundef !5
  %i.qj = atomicrmw add ptr %i.qi, i64 -1 release, align 8, !noalias !30622
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %.invoke, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205.i: ; preds = %bb.gi, %bb.dz, %bb.dy
  %.pn191.i = phi { ptr, i32 } [ %i.qo, %bb.gi ], [ %i.lk, %bb.dz ], [ %i.lk, %bb.dy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30623)
  call void @llvm.experimental.noalias.scope.decl(metadata !30624)
  call void @llvm.experimental.noalias.scope.decl(metadata !30625)
  %i.ql = load ptr, ptr %i.bn, align 8, !alias.scope !30626, !noalias !30414, !nonnull !5, !noundef !5
  %i.qm = atomicrmw add ptr %i.ql, i64 -1 release, align 8, !noalias !30627
  %i.qn = icmp eq i64 %i.qm, 1
  br i1 %i.qn, label %bb.gh, label %.body157

bb.gh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %.body157 unwind label %bb.fp, !noalias !30413

bb.gi:                                            ; preds = %bb.dw
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit203.i: ; preds = %bb.dw, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !30414
  call void @llvm.experimental.noalias.scope.decl(metadata !30628)
  call void @llvm.experimental.noalias.scope.decl(metadata !30629)
  call void @llvm.experimental.noalias.scope.decl(metadata !30630)
  %i.qp = load ptr, ptr %i.bn, align 8, !alias.scope !30631, !noalias !30414, !nonnull !5, !noundef !5
  %i.qq = atomicrmw add ptr %i.qp, i64 -1 release, align 8, !noalias !30632
  %i.qr = icmp eq i64 %i.qq, 1
  br i1 %i.qr, label %.invoke, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i.sink.split

.invoke:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit203.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit207.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i.sink.split unwind label %bb.gm

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit199.i: ; preds = %bb.dq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit195.i, %bb.dp, %bb.da, %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !30414
  br label %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_model27get_extended_attention_mask.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit195.i: ; preds = %bb.dj, %bb.di, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !30414
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit199.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196, %bb.pt, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.experimental.noalias.scope.decl(metadata !30633)
  call void @llvm.experimental.noalias.scope.decl(metadata !30634)
  call void @llvm.experimental.noalias.scope.decl(metadata !30635)
  %i.qs = load ptr, ptr %i.ct, align 8, !alias.scope !30636, !nonnull !5, !noundef !5
  %i.qt = atomicrmw add ptr %i.qs, i64 -1 release, align 8, !noalias !30636
  %i.qu = icmp eq i64 %i.qt, 1
  br i1 %i.qu, label %bb.gj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit162

bb.gj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit162 unwind label %bb.cm

bb.gk:                                            ; preds = %bb.cp
  call void @llvm.trap()
  unreachable

.body157:                                         ; preds = %.body171, %bb.ow, %bb.gm, %bb.gh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205.i, %bb.gg, %bb.gf, %bb.fm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237.i, %bb.dm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit201.i, %bb.dg, %bb.df
  %.pn126 = phi { ptr, i32 } [ %.pn191.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205.i ], [ %i.qy, %bb.gm ], [ %i.qe, %bb.gf ], [ %.pn189.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237.i ], [ %.pn.i142, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit201.i ], [ %i.kd, %bb.df ], [ %i.kd, %bb.dg ], [ %.pn.i142, %bb.dm ], [ %.pn189.i, %bb.fm ], [ %i.qe, %bb.gg ], [ %.pn191.i, %bb.gh ], [ %.pn124, %bb.ow ], [ %.pn124, %.body171 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30637)
  call void @llvm.experimental.noalias.scope.decl(metadata !30638)
  call void @llvm.experimental.noalias.scope.decl(metadata !30639)
  %i.qv = load ptr, ptr %i.cs, align 8, !alias.scope !30640, !nonnull !5, !noundef !5
  %i.qw = atomicrmw add ptr %i.qv, i64 -1 release, align 8, !noalias !30640
  %i.qx = icmp eq i64 %i.qw, 1
  br i1 %i.qx, label %bb.gl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit164

bb.gl:                                            ; preds = %.body157
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cs) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit164 unwind label %bb.pr

bb.gm:                                            ; preds = %.invoke, %bb.ps, %bb.pn, %bb.fz, %bb.fo, %bb.dq, %bb.dl, %bb.dj, %bb.cz, %bb.cy, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.cx, %.split171.i
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_model27get_extended_attention_mask.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit199.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit257.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit242.i
  %i.qz = load i64, ptr %i.cp, align 8, !range !16, !noundef !5 ; 2 uses
  %.not118 = icmp eq i64 %i.qz, -1
  %i.ra = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  br i1 %.not118, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_model27get_extended_attention_mask.exit
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.586.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.583.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  store i64 %i.qz, ptr %0, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rb, ptr %.sroa.485.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196

bb.go:                                            ; preds = %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_model27get_extended_attention_mask.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  store ptr %i.rb, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.val134 = load ptr, ptr %i.ct, align 8         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30641)
  %i.rc = load i64, ptr %1, align 8, !range !10, !alias.scope !30641, !noundef !5
  %.not.i165 = icmp eq i64 %i.rc, 2               ; 4 uses
  br i1 %.not.i165, label %.noexc169, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.rd)
          to label %.noexc169 unwind label %bb.ox

.noexc169:                                        ; preds = %bb.gp, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !30642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val134) ]
  %i.re = atomicrmw add ptr %.val134, i64 1 monotonic, align 8, !noalias !30642
  %i.rf = icmp slt i64 %i.re, 0
  br i1 %i.rf, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %.noexc169
  store ptr %.val134, ptr %i.av, align 8, !noalias !30642
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rh = load ptr, ptr %i.rg, align 8, !alias.scope !30641, !nonnull !5, !noundef !5 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rj = load i64, ptr %i.ri, align 8, !alias.scope !30641, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.rj, 488
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.idx.i
  %i.rl = icmp eq i64 %i.rj, 0
  br i1 %i.rl, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gq
  %i.rm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5162.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5171.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.5180.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5189.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5198.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.5207.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5216.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5225.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ru = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5234.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5243.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.rw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5252.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.rx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5261.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5270.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5279.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5288.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5297.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.sc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.531.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 4 uses
  %.sroa.433.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.540.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.549.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.540.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.549.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.gs

bb.gr:                                            ; preds = %.noexc169
  call void @llvm.trap()
  unreachable

bb.gs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit31.i, %.lr.ph.i
  %.sroa.0.0345.i = phi ptr [ %i.rh, %.lr.ph.i ], [ %i.si, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit31.i ] ; 50 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 488 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !30643)
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 448 ; 4 uses
  %i.sk = load i64, ptr %i.sj, align 8, !range !10, !alias.scope !30643, !noalias !30644, !noundef !5
  %.not.i.i166 = icmp eq i64 %i.sk, 2             ; 4 uses
  br i1 %.not.i.i166, label %.noexc.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 472
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sl)
          to label %.noexc.i unwind label %bb.op, !noalias !30644

.noexc.i:                                         ; preds = %bb.gt, %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !30645
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !30646)
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 248 ; 4 uses
  %i.sn = load i64, ptr %i.sm, align 8, !range !10, !alias.scope !30647, !noalias !30644, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.sn, 2              ; 4 uses
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.gu

bb.gu:                                            ; preds = %.noexc.i
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 272
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.so)
          to label %.noexc.i.i unwind label %bb.mv, !noalias !30648

.noexc.i.i:                                       ; preds = %bb.gu, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !30649
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !30650)
  %i.sp = load i64, ptr %.sroa.0.0345.i, align 8, !range !10, !alias.scope !30651, !noalias !30644, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.sp, 2            ; 4 uses
  br i1 %.not.i.i.i.i, label %.noexc.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %.noexc.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 24
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.sroa.0.0345.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sq)
          to label %.noexc.i.i.i unwind label %bb.li, !noalias !30652

.noexc.i.i.i:                                     ; preds = %bb.gv, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !30653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !30653
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 80
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn6linearNtB4_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.sr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %bb.gy unwind label %bb.gx, !noalias !30654

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i: ; preds = %bb.hb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit357.i.i.i.i, %bb.gx
  %.pn342.i.i.i.i = phi { ptr, i32 } [ %i.st, %bb.gx ], [ %.pn340.i.i.i.i, %bb.hb ], [ %.pn340.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit357.i.i.i.i ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.body.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 24
  invoke void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.sroa.0.0345.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ss)
          to label %.body.i.i.i unwind label %bb.kt, !noalias !30654

bb.gx:                                            ; preds = %bb.lg, %bb.kr, %.noexc.i.i.i
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i

bb.gy:                                            ; preds = %.noexc.i.i.i
  %i.su = load i64, ptr %i.an, align 8, !range !16, !noalias !30653, !noundef !5 ; 2 uses
  %.not302.i.i.i.i = icmp eq i64 %i.su, -1
  %i.sv = load ptr, ptr %i.rm, align 8, !noalias !30653 ; 2 uses
  br i1 %.not302.i.i.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.41.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5162.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !30655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !30653
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450.i.i.i.i

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !30653
  store ptr %i.sv, ptr %i.ao, align 8, !noalias !30653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !30653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !30653
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 96
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn6linearNtB4_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.sw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %bb.hd unwind label %bb.hc, !noalias !30654

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit357.i.i.i.i: ; preds = %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit359.i.i.i.i, %bb.hc
  %.pn340.i.i.i.i = phi { ptr, i32 } [ %i.ta, %bb.hc ], [ %.pn338.i.i.i.i, %bb.hg ], [ %.pn338.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit359.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30656)
  call void @llvm.experimental.noalias.scope.decl(metadata !30657)
  call void @llvm.experimental.noalias.scope.decl(metadata !30658)
  %i.sx = load ptr, ptr %i.ao, align 8, !alias.scope !30659, !noalias !30653, !nonnull !5, !noundef !5
  %i.sy = atomicrmw add ptr %i.sx, i64 -1 release, align 8, !noalias !30660
  %i.sz = icmp eq i64 %i.sy, 1
  br i1 %i.sz, label %bb.hb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i

bb.hb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit357.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i unwind label %bb.kt, !noalias !30654

bb.hc:                                            ; preds = %bb.lf, %bb.kq, %bb.ha
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit357.i.i.i.i

bb.hd:                                            ; preds = %bb.ha
  %i.tb = load i64, ptr %i.al, align 8, !range !16, !noalias !30653, !noundef !5 ; 2 uses
  %.not303.i.i.i.i = icmp eq i64 %i.tb, -1
  %i.tc = load ptr, ptr %i.rn, align 8, !noalias !30653 ; 2 uses
  br i1 %.not303.i.i.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.41.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5171.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !30655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !30653
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448.i.i.i.i

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !30653
  store ptr %i.tc, ptr %i.am, align 8, !noalias !30653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !30653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !30653
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0.0345.i, i64 112
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn6linearNtB4_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.td, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %bb.hi unwind label %bb.hh, !noalias !30654

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit359.i.i.i.i: ; preds = %bb.hl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit361.i.i.i.i, %bb.hh
  %.pn338.i.i.i.i = phi { ptr, i32 } [ %i.th, %bb.hh ], [ %.pn336.i.i.i.i, %bb.hl ], [ %.pn336.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit361.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30661)
  call void @llvm.experimental.noalias.scope.decl(metadata !30662)
  call void @llvm.experimental.noalias.scope.decl(metadata !30663)
end_hunk_2
