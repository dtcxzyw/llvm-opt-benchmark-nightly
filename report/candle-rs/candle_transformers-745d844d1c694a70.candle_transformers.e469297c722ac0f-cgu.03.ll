Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.03?download=true
inline.NumInlined: 4097
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma215RotaryEmbeddingEEB1k_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !356, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !357
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma215RotaryEmbeddingEBH_.exit

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma215RotaryEmbeddingEBH_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma215RotaryEmbeddingEBH_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10nvembed_v29embedding15RotaryEmbeddingEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !382, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !382
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !386, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !387
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !391, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !392
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10nvembed_v29embedding15RotaryEmbeddingEBJ_.exit

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10nvembed_v29embedding15RotaryEmbeddingEBJ_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit2.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10nvembed_v29embedding15RotaryEmbeddingEBJ_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl4text15RotaryEmbeddingEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !417, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !417
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !421, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !422
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !426, !nonnull !5, !noundef !5
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !427
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit5.i

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit5.i unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i: ; preds = %bb.f, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #23
          to label %common.resume.i unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit5.i: ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl4text15RotaryEmbeddingEBJ_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit5.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit3.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl4text15RotaryEmbeddingEBJ_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit5.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.c = load i64, ptr %i.b, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !428, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #21
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !428, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #21
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecmEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecmEECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtBK_10LinkedListppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_3vec3VecmENtNtBO_5alloc6GlobalEECs1dZk1kIfPhr_19candle_transformers(ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.c = load ptr, ptr %.0.val, align 8, !noundef !5 ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %_RNvXNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB8_10LinkedListppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBc_3vec3VecmENtNtBc_5alloc6GlobalEB1h_4dropCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecmEERNtNtB12_5alloc6GlobalEEECs1dZk1kIfPhr_19candle_transformers.exit8.i
  %i.d = phi ptr [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecmEERNtNtB12_5alloc6GlobalEEECs1dZk1kIfPhr_19candle_transformers.exit8.i ], [ %i.c, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 3 uses
  store ptr %i.f, ptr %.0.val, align 8
  %.not2.i = icmp eq ptr %i.f, null
  br i1 %.not2.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load i64, ptr %i.b, align 8, !noundef !5
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.b, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i6.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i6.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecmEERNtNtB12_5alloc6GlobalEEECs1dZk1kIfPhr_19candle_transformers.exit8.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i6.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i5.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.j, %bb.e ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 8) #21
  resume { ptr, i32 } %eh.lpad-body.i.i5.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecmEERNtNtB12_5alloc6GlobalEEECs1dZk1kIfPhr_19candle_transformers.exit8.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i6.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 8) #21
  %i.m = load ptr, ptr %.0.val, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_RNvXNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB8_10LinkedListppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBc_3vec3VecmENtNtBc_5alloc6GlobalEB1h_4dropCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i

_RNvXNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB8_10LinkedListppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBc_3vec3VecmENtNtBc_5alloc6GlobalEB1h_4dropCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecmEERNtNtB12_5alloc6GlobalEEECs1dZk1kIfPhr_19candle_transformers.exit8.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !479, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !479
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !484, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !484
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit3

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit3 unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !489, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !489
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit5

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit5 unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit3: ; preds = %bb.c, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #23
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit5: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !490, !noundef !5 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs1dZk1kIfPhr_19candle_transformers.exit5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.r = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !492
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i unwind label %bb.i

end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10nvembed_v29embeddingNtB2_15RotaryEmbedding20apply_rotary_emb_qkv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.t, ptr %0, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.492.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit131

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.v, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn10rotary_emb4rope(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.m unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit124: ; preds = %bb.p, %bb.q, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.ad, %bb.q ], [ %i.ad, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4948)
  call void @llvm.experimental.noalias.scope.decl(metadata !4949)
  call void @llvm.experimental.noalias.scope.decl(metadata !4950)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !4951, !nonnull !5, !noundef !5
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !4951
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit122

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit124
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit122 unwind label %bb.z

bb.l:                                             ; preds = %bb.t, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit124

bb.m:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.b, align 8, !range !7, !noundef !5 ; 2 uses
  %.not116 = icmp eq i64 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 5 uses
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5102.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.599.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.aa, ptr %0, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %.sroa.4101.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ac, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn10rotary_emb4rope(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !4952
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit124

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit124 unwind label %bb.z

bb.r:                                             ; preds = %bb.o
  %i.ag = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %.not117 = icmp eq i64 %i.ag, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %.not117, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5111.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5108.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ag, ptr %0, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.4110.0..sroa_idx, align 8
  %i.aj = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !4953
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126 unwind label %bb.l

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !4954)
  call void @llvm.experimental.noalias.scope.decl(metadata !4955)
  call void @llvm.experimental.noalias.scope.decl(metadata !4956)
  %i.an = load ptr, ptr %i.e, align 8, !alias.scope !4957, !nonnull !5, !noundef !5
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !4957
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit128

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit128 unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit128: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !4958)
  call void @llvm.experimental.noalias.scope.decl(metadata !4959)
  call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  %i.aq = load ptr, ptr %i.g, align 8, !alias.scope !4961, !nonnull !5, !noundef !5
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !4961
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit128
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit128, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit132, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129, %bb.b
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126: ; preds = %bb.s, %bb.t, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !4962)
  call void @llvm.experimental.noalias.scope.decl(metadata !4963)
  call void @llvm.experimental.noalias.scope.decl(metadata !4964)
  %i.at = load ptr, ptr %i.e, align 8, !alias.scope !4965, !nonnull !5, !noundef !5
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !4965
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit131

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit131 unwind label %bb.g

bb.z:                                             ; preds = %bb.q, %bb.k, %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit131: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126, %bb.y, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !4966)
  call void @llvm.experimental.noalias.scope.decl(metadata !4967)
  call void @llvm.experimental.noalias.scope.decl(metadata !4968)
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !4969, !nonnull !5, !noundef !5
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !4969
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit132

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit131
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit132

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit132: ; preds = %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit131, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit122, %bb.f
  resume { ptr, i32 } %.pn119
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl4textNtB2_15RotaryEmbedding20apply_mrope_sections(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
  %i.h = alloca [80 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 15 uses
  %i.o = alloca [24 x i8], align 8                ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 7 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef range(i64 0, 2305843009213693952) %.16.val)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5056, !noundef !5 ; 3 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %.not.i = icmp eq i64 %.16.val, 0               ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.q, align 8, !alias.scope !5056, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = shl nuw nsw i64 %.16.val, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull readonly align 8 %.8.val, i64 %i.w, i1 false)
  %.pre.i = load i64, ptr %i.r, align 8, !alias.scope !5056
  br label %bb.d

.body143:                                         ; preds = %bb.bn, %bb.u, %bb.c, %.body
  %.pn131 = phi { ptr, i32 } [ %.pn129, %.body ], [ %i.bt, %bb.u ], [ %i.x, %bb.c ], [ %i.ek, %bb.bn ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %common.resume unwind label %bb.z

bb.c:                                             ; preds = %bb.bo, %bb.v, %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.d:                                             ; preds = %bb.b, %.noexc
  %i.y = phi i64 [ %.pre.i, %bb.b ], [ %i.s, %.noexc ]
  %i.z = add i64 %i.y, %.16.val
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !5056
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef range(i64 0, 2305843009213693952) %.16.val)
          to label %.noexc135 unwind label %bb.c

.noexc135:                                        ; preds = %bb.d
  %i.aa = load i64, ptr %i.r, align 8, !alias.scope !5057, !noundef !5 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976
  call void @llvm.assume(i1 %i.ab)
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc135
  %i.ac = load ptr, ptr %i.q, align 8, !alias.scope !5057, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = shl nuw nsw i64 %.16.val, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull readonly align 8 %.8.val, i64 %i.ae, i1 false)
  %.pre.i134 = load i64, ptr %i.r, align 8, !alias.scope !5057
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc135
  %i.af = phi i64 [ %.pre.i134, %bb.e ], [ %i.aa, %.noexc135 ]
  %i.ag = add i64 %i.af, %.16.val                 ; 3 uses
  store i64 %i.ag, ptr %i.r, align 8, !alias.scope !5057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  store i64 0, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ag, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.an = icmp eq i64 %i.ag, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf, %bb.bg, %.thread8, %bb.bm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit172, %bb.ah, %bb.ai, %bb.k, %bb.l
  %.pn127 = phi { ptr, i32 } [ %i.ds, %bb.bg ], [ %eh.lpad-body164.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit172 ], [ %.pn11, %.thread8 ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ], [ %i.cc, %bb.ai ], [ %i.cc, %bb.ah ], [ %.pn11, %bb.bm ], [ %i.ds, %bb.bf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #23
          to label %.body unwind label %bb.z

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.bl, %bb.al, %bb.o, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.g:                                             ; preds = %.lr.ph, %bb.bi
  %.sroa.0.054 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %bb.bi ] ; 3 uses
  %.sroa.0.0253 = phi ptr [ %i.al, %.lr.ph ], [ %i.as, %bb.bi ] ; 2 uses
  %.sroa.81.052 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.bi ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0253, i64 8 ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.81.052, 1
  %i.au = load i64, ptr %.sroa.0.0253, align 8, !noundef !5 ; 3 uses
  %i.av = urem i64 %.sroa.81.052, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsa_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpjE1iCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.av)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.loopexit:                             ; preds = %bb.bi
  %.pre = load ptr, ptr %i.ah, align 8
  %.pre94 = load i64, ptr %i.ai, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.aw = phi i64 [ %.pre94, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.ax = phi ptr [ %.pre, %._crit_edge.loopexit ], [ inttoptr (i64 8 to ptr), %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catBI_NtNtB5_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.aw, i64 noundef 0, i64 undef)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %._crit_edge
  %i.ay = load i64, ptr %i.d, align 8, !range !7, !noundef !5 ; 2 uses
  %.not120 = icmp eq i64 %i.ay, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  br i1 %.not120, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5106.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ay, ptr %0, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %.sroa.4108.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit139

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ba, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bb = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.ak, align 8, !noundef !5
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catBI_NtNtB5_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bb, i64 noundef %i.bc, i64 noundef 0, i64 undef)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5058)
  call void @llvm.experimental.noalias.scope.decl(metadata !5059)
  call void @llvm.experimental.noalias.scope.decl(metadata !5060)
  %i.be = load ptr, ptr %i.e, align 8, !alias.scope !5061, !nonnull !5, !noundef !5
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !5061
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.z

bb.m:                                             ; preds = %bb.j
  %i.bh = load i64, ptr %i.c, align 8, !range !7, !noundef !5 ; 2 uses
  %.not121 = icmp eq i64 %i.bh, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  br i1 %.not121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5115.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.bh, ptr %0, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %.sroa.4117.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5062)
  call void @llvm.experimental.noalias.scope.decl(metadata !5063)
  call void @llvm.experimental.noalias.scope.decl(metadata !5064)
  %i.bl = load ptr, ptr %i.e, align 8, !alias.scope !5065, !nonnull !5, !noundef !5
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !5065
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit139

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bo = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store ptr %i.bk, ptr %i.bi, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models10nvembed_v29embeddingNtB5_5Model7forward:bb.a
bb.mb:                                            ; preds = %.invoke372, %bb.lz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115.i
  %.pr88 = load i64, ptr %i.bs, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !16928
  %.not58 = icmp eq i64 %.pr88, -1
  %i.aev = load ptr, ptr %.sroa.463.0..sroa_idx.i, align 8 ; 3 uses
  br i1 %.not58, label %bb.md, label %.loopexit90

.loopexit90:                                      ; preds = %bb.mb, %.thread
  %.sroa.450.0.copyload = phi ptr [ %i.hh, %.thread ], [ %i.aev, %bb.mb ]
  %i.aew = phi i64 [ %i.hg, %.thread ], [ %.pr88, %bb.mb ]
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.564.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  store i64 %i.aew, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.450.0.copyload, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !17643)
  call void @llvm.experimental.noalias.scope.decl(metadata !17644)
  call void @llvm.experimental.noalias.scope.decl(metadata !17645)
  %i.aex = load ptr, ptr %i.bu, align 8, !alias.scope !17646, !nonnull !5, !noundef !5
  %i.aey = atomicrmw add ptr %i.aex, i64 -1 release, align 8, !noalias !17646
  %i.aez = icmp eq i64 %i.aey, 1
  br i1 %i.aez, label %bb.mc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit80

bb.mc:                                            ; preds = %.loopexit90
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit80 unwind label %bb.au

bb.md:                                            ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.experimental.noalias.scope.decl(metadata !17647)
  call void @llvm.experimental.noalias.scope.decl(metadata !17648)
  call void @llvm.experimental.noalias.scope.decl(metadata !17649)
  %i.afa = load ptr, ptr %i.bw, align 8, !alias.scope !17650, !nonnull !5, !noundef !5
  %i.afb = atomicrmw add ptr %i.afa, i64 -1 release, align 8, !noalias !17650
  %i.afc = icmp eq i64 %i.afb, 1
  br i1 %i.afc, label %bb.me, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit82

bb.me:                                            ; preds = %bb.md
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit82 unwind label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.afd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aev, ptr %i.bw, align 8
  br label %.body75

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit82: ; preds = %bb.md, %bb.me
  store ptr %i.aev, ptr %i.bw, align 8
  %i.afe = icmp eq ptr %i.he, %i.fs
  br i1 %i.afe, label %._crit_edge, label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit80: ; preds = %.loopexit90, %bb.mc, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !17651)
  call void @llvm.experimental.noalias.scope.decl(metadata !17652)
  call void @llvm.experimental.noalias.scope.decl(metadata !17653)
  %i.aff = load ptr, ptr %i.bw, align 8, !alias.scope !17654, !nonnull !5, !noundef !5
  %i.afg = atomicrmw add ptr %i.aff, i64 -1 release, align 8, !noalias !17654
  %i.afh = icmp eq i64 %i.afg, 1
  br i1 %i.afh, label %bb.mg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83

bb.mg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit80
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83

bb.mh:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !17655)
  call void @llvm.experimental.noalias.scope.decl(metadata !17656)
  call void @llvm.experimental.noalias.scope.decl(metadata !17657)
  %i.afi = load ptr, ptr %i.bu, align 8, !alias.scope !17658, !nonnull !5, !noundef !5
  %i.afj = atomicrmw add ptr %i.afi, i64 -1 release, align 8, !noalias !17658
  %i.afk = icmp eq i64 %i.afj, 1
  br i1 %i.afk, label %bb.mi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit85

bb.mi:                                            ; preds = %bb.mh
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit85 unwind label %bb.au

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit85: ; preds = %bb.mh, %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !17659)
  call void @llvm.experimental.noalias.scope.decl(metadata !17660)
  call void @llvm.experimental.noalias.scope.decl(metadata !17661)
  %i.afl = load ptr, ptr %i.bw, align 8, !alias.scope !17662, !nonnull !5, !noundef !5
  %i.afm = atomicrmw add ptr %i.afl, i64 -1 release, align 8, !noalias !17662
  %i.afn = icmp eq i64 %i.afm, 1
  br i1 %i.afn, label %bb.mj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83

bb.mj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit85
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83: ; preds = %bb.mj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit85, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit80, %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  ret void

bb.mk:                                            ; preds = %bb.ma, %bb.at
  %i.afo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.body, %bb.at
  resume { ptr, i32 } %.pn60
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB5_21VisionRotaryEmbedding3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) initializes((0, 16)) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = lshr i64 %1, 1
  %.sroa.05.0.i.i = sub nuw nsw i64 %1, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.05.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.d, ptr %i.b, align 8
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvMs3_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB3k_21VisionRotaryEmbedding3new0EE9from_iterB3q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp ult i64 %i.h, 2305843009213693952
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjEfECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 1, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %2, i1 noundef zeroext false)
  %i.j = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.511.0..sroa_idx, i64 64, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i64 %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models17depth_anything_v2NtB5_7DPTHead3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2576 x i8]) align 8 captures(none) dereferenceable(2576) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 18 uses
  %i.b = alloca [20 x i8], align 1                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 18 uses
  %i.e = alloca [20 x i8], align 1                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [2480 x i8], align 8              ; 7 uses
  %.sroa.653 = alloca [80 x i8], align 8          ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 18 uses
  %i.j = alloca [40 x i8], align 8                ; 23 uses
  %i.k = alloca [40 x i8], align 8                ; 16 uses
  %i.l = alloca [80 x i8], align 8                ; 20 uses
  %i.m = alloca [24 x i8], align 8                ; 22 uses
  %i.n = alloca [24 x i8], align 8                ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 22 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [56 x i8], align 8                ; 2 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.629 = alloca [56 x i8], align 8          ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 2 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.620 = alloca [48 x i8], align 8          ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 2 uses
  %i.ac = alloca [40 x i8], align 8               ; 9 uses
  %i.ad = alloca [40 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.611 = alloca [48 x i8], align 8          ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [56 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 18 uses
  %i.aj = alloca [40 x i8], align 8               ; 23 uses
  %i.ak = alloca [40 x i8], align 8               ; 16 uses
  %i.al = alloca [40 x i8], align 8               ; 20 uses
  %i.am = alloca [80 x i8], align 8               ; 19 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 23 uses
  %i.an = alloca [24 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %bb.c unwind label %bb.b

.body238:                                         ; preds = %bb.ef, %bb.b, %.loopexit.split-lp267
  %.pn165 = phi { ptr, i32 } [ %.pn163, %.loopexit.split-lp267 ], [ %i.ao, %bb.b ], [ %i.gj, %bb.ef ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #23
          to label %bb.gj unwind label %bb.bg

bb.b:                                             ; preds = %bb.eg, %bb.d, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body238

bb.c:                                             ; preds = %bb.a
  %i.ap = load i64, ptr %i.f, align 8, !range !14, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !15, !noundef !5 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.at, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #22
          to label %bb.dm unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.aw = icmp samesign ugt i64 %i.as, 3
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.as, ptr %i.an, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 5 uses
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 9 uses
  store i64 0, ptr %i.ay, align 8
  %.ptr255 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bi = load i64, ptr %.ptr255, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8
  store i64 1, ptr %i.bb, align 8
  store i64 1, ptr %i.bc, align 8
  store i64 1, ptr %i.bd, align 8
  store i8 -1, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8)
          to label %bb.ei unwind label %.loopexit.split-lp267.loopexit.split-lp

.loopexit.split-lp267:                            ; preds = %.loopexit.split-lp267.loopexit.split-lp, %bb.g, %.body240, %bb.dx, %bb.ar
  %.pn163 = phi { ptr, i32 } [ %eh.lpad-body241, %.body240 ], [ %i.bl, %bb.g ], [ %.pn159, %bb.dx ], [ %.pn145, %bb.ar ], [ %lpad.loopexit.split-lp291, %.loopexit.split-lp267.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #23
          to label %.body238 unwind label %bb.bg

.loopexit.split-lp267.loopexit.split-lp:          ; preds = %bb.ew, %bb.e, %bb.ex, %bb.fi, %bb.fj, %bb.fu, %bb.fv, %bb.gg, %bb.f, %bb.er, %bb.ea, %bb.bf
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp267

bb.f:                                             ; preds = %bb.gh
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #22
          to label %.noexc unwind label %.loopexit.split-lp267.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 1, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 13)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %.loopexit.split-lp267

bb.h:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 1)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %bb.dx

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv16conv_transpose2d(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.af, i64 noundef %i.bi, i64 noundef %i.bi, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.bn = load i64, ptr %i.af, align 8, !range !7, !noundef !5 ; 2 uses
  %.not131 = icmp eq i64 %i.bn, -1
  %3 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  br i1 %.not131, label %bb.l, label %bb.ec

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, i64 48, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !17672
  %i.bo = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 48, i64 noundef range(i64 1, 9) 8) #21, !noalias !17672 ; 14 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.m, label %bb.p, !prof !4

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc211 unwind label %bb.n

.noexc211:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv15ConvTranspose2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ab) #23
          to label %.body167 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

.body167:                                         ; preds = %bb.n, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.q ], [ %i.bq, %bb.n ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %bb.dx

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 1, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 13)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.bo, ptr nonnull @157) #23
          to label %.body167 unwind label %bb.bg

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 1)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.bo, ptr nonnull @157) #23
          to label %bb.eb unwind label %bb.bg

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv16conv_transpose2d(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aa, i64 noundef %i.hf, i64 noundef %i.hf, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.y)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.bw = load i64, ptr %i.aa, align 8, !range !7, !noundef !5 ; 2 uses
  %.not133 = icmp eq i64 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i64 48, i1 false)
  br i1 %.not133, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.596.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.593.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.495.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, i64 48, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bw, ptr %i.by, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv15ConvTranspose2dECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull %i.bo)
          to label %bb.dw unwind label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i: ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #21
  br label %.body213

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, i64 48, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !17673
  %i.ca = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 48, i64 noundef range(i64 1, 9) 8) #21, !noalias !17673 ; 9 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.x, label %bb.ab, !prof !4

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc215 unwind label %bb.y

.noexc215:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv15ConvTranspose2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w) #23
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.y, %bb.aa
  %.pn134.pn = phi { ptr, i32 } [ %i.ci, %bb.aa ], [ %i.cc, %bb.y ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.bo, ptr nonnull @157) #23
          to label %.body213 unwind label %bb.bg

bb.aa:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.ca, ptr nonnull @157) #23
          to label %.body unwind label %bb.bg

bb.ab:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 1, ptr %i.u, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 2, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i8 -1, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 13)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull @158) #23
          to label %bb.aa unwind label %bb.bg

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 1)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull @158) #23
          to label %bb.du unwind label %bb.bg

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv6conv2d(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.v, i64 noundef %i.il, i64 noundef %i.il, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ck = load i64, ptr %i.v, align 8, !range !7, !noundef !5 ; 2 uses
  %.not137 = icmp eq i64 %i.ck, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(56) %i.cl, i64 56, i1 false)
  br i1 %.not137, label %bb.ah, label %bb.dn

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.629, i64 56, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !17674
  %i.cm = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 337) 56, i64 noundef range(i64 1, 9) 8) #21, !noalias !17674 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ai, label %bb.al, !prof !4

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #22
          to label %.noexc222 unwind label %bb.aj

.noexc222:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r) #23
          to label %.body170 unwind label %bb.ak

end_hunk_2
begin_hunk_3_@_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models17depth_anything_v2NtB5_7DPTHead3new:bb.a
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not140.3 = icmp eq i64 %i.fu, 0
  br i1 %.not140.3, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fy, ptr align 1 %i.ft, i64 %i.fu, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  store i64 %i.fx, ptr %i.i, align 8
  store ptr %i.fy, ptr %.sroa.4112.0..sroa_idx, align 8
  store i64 %i.fu, ptr %.sroa.6113.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixNtNtB1a_6string6StringECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, i64 noundef %i.dr, i64 noundef %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ga = load i64, ptr %i.l, align 8, !range !7, !noundef !5 ; 2 uses
  %.not141.3 = icmp eq i64 %i.ga, -1
  br i1 %.not141.3, label %bb.de, label %bb.br

bb.de:                                            ; preds = %bb.dd
  %i.gb = load ptr, ptr %i.du, align 8, !nonnull !5, !noundef !5
  %i.gc = load ptr, ptr %i.dv, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn10sequentialNtB6_10Sequential3addNtNtB8_6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %i.gb, ptr noundef %i.gc)
          to label %bb.df unwind label %.loopexit.split-lp257.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn10sequentialNtB6_10Sequential3addNtNtB8_10activation10ActivationECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, i64 noundef 0, double undef)
          to label %bb.dg unwind label %.loopexit.split-lp257.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EEECs1dZk1kIfPhr_19candle_transformers.exit.i.3 unwind label %bb.bv

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EEECs1dZk1kIfPhr_19candle_transformers.exit.i.3: ; preds = %bb.dg
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10sequential10SequentialECs1dZk1kIfPhr_19candle_transformers.exit.3 unwind label %.loopexit.split-lp257.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10sequential10SequentialECs1dZk1kIfPhr_19candle_transformers.exit.3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EEECs1dZk1kIfPhr_19candle_transformers.exit.i.3
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.dh unwind label %.loopexit.split-lp262.loopexit.split-lp

bb.dh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10sequential10SequentialECs1dZk1kIfPhr_19candle_transformers.exit.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.aw

bb.di:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.dj unwind label %.loopexit.split-lp262.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3NyA1pFSltE_9candle_nn10sequential10SequentialEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %bb.dk unwind label %bb.as

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bf

bb.dl:                                            ; preds = %bb.ed, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ee

bb.dm:                                            ; preds = %bb.el, %bb.bl, %bb.ay, %bb.d
  unreachable

.body219:                                         ; preds = %.body170
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.ca, ptr nonnull @157) #23
          to label %.body229 unwind label %bb.bg

bb.dn:                                            ; preds = %bb.ag
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5102.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4104.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.629, i64 56, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ck, ptr %i.gd, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv15ConvTranspose2dECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull %i.ca)
          to label %bb.do unwind label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i228

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i228: ; preds = %bb.dn
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #21
  br label %.body229

.body229:                                         ; preds = %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i228, %.body219
  %.pn149 = phi { ptr, i32 } [ %i.co, %.body219 ], [ %i.ge, %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i228 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.bo, ptr nonnull @157) #23
          to label %.body234 unwind label %bb.bg

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #21
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv15ConvTranspose2dECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull %i.bo)
          to label %bb.dp unwind label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i233

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i233: ; preds = %bb.do
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #21
  br label %.body234

.body234:                                         ; preds = %.body229, %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i233, %bb.dv
  %.pn153 = phi { ptr, i32 } [ %i.cj, %bb.dv ], [ %.pn149, %.body229 ], [ %i.gf, %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i233 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #23
          to label %bb.dq unwind label %bb.bg

bb.dp:                                            ; preds = %bb.do
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s)
          to label %bb.ds unwind label %bb.dr

bb.dq:                                            ; preds = %bb.eb, %.body213, %bb.dr, %.body234
  %.pn157 = phi { ptr, i32 } [ %i.gg, %bb.dr ], [ %.pn155, %.body213 ], [ %.pn153, %.body234 ], [ %i.bv, %bb.eb ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.x) #23
          to label %bb.dx unwind label %bb.bg

bb.dr:                                            ; preds = %bb.dp
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.x)
          to label %bb.dz unwind label %bb.dy

bb.du:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.ca, ptr nonnull @157) #23
          to label %bb.dv unwind label %bb.bg

bb.dv:                                            ; preds = %bb.du
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EECs1dZk1kIfPhr_19candle_transformers(ptr nonnull %i.bo, ptr nonnull @157) #23
          to label %.body234 unwind label %bb.bg

.body213:                                         ; preds = %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i, %.body
  %.pn155 = phi { ptr, i32 } [ %.pn134.pn, %.body ], [ %i.bz, %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers.exit4.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %bb.dq

bb.dw:                                            ; preds = %bb.v
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %bb.dt

bb.dx:                                            ; preds = %.body167, %bb.i, %bb.dy, %bb.dq
  %.pn159 = phi { ptr, i32 } [ %i.gh, %bb.dy ], [ %.pn157, %bb.dq ], [ %.pn, %.body167 ], [ %i.bm, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ac) #23
          to label %.loopexit.split-lp267 unwind label %bb.bg

bb.dy:                                            ; preds = %bb.dt
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dz:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ec, %bb.dz
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ac)
          to label %bb.ed unwind label %.loopexit.split-lp267.loopexit.split-lp

bb.eb:                                            ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %bb.dq

bb.ec:                                            ; preds = %bb.k
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.587.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.584.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, i64 48, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.gi, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 64, i64 noundef 8) #21
  br label %bb.ea

bb.ed:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  br label %bb.dl

bb.ee:                                            ; preds = %bb.gi, %bb.dl
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.eg unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body238 unwind label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.b

bb.eh:                                            ; preds = %bb.ef
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ei:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gl = invoke { ptr, i64 } @_RNvMsk_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impj4__fmt(i64 noundef 0, ptr noalias nofree noundef nonnull %i.e, i64 noundef 20)
          to label %bb.ej unwind label %.loopexit.split-lp272.loopexit.split-lp ; 2 uses

.loopexit.split-lp272.loopexit.split-lp:          ; preds = %bb.ep, %bb.en, %bb.ej, %bb.ei, %bb.ey, %bb.ez, %bb.fd, %bb.fe, %bb.fk, %bb.fl, %bb.fp, %bb.fq, %bb.fw, %bb.fx, %bb.gb, %bb.gc, %bb.el
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %.body240

.body240:                                         ; preds = %.loopexit.split-lp272.loopexit.split-lp, %bb.eu
  %eh.lpad-body241 = phi { ptr, i32 } [ %i.ha, %bb.eu ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp272.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aj) #23
          to label %.loopexit.split-lp267 unwind label %bb.bg

bb.ej:                                            ; preds = %bb.ei
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.gn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ek unwind label %.loopexit.split-lp272.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ej
  %i.go = load i64, ptr %i.d, align 8, !range !14, !noundef !5
  %i.gp = trunc nuw i64 %i.go to i1
  br i1 %i.gp, label %bb.el, label %bb.em, !prof !12

bb.el:                                            ; preds = %bb.fy, %bb.fm, %bb.fa, %bb.ek
  %i.gq = load i64, ptr %i.bf, align 8, !range !15, !noundef !5
  %i.gr = load i64, ptr %i.bg, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.gq, i64 %i.gr) #22
          to label %bb.dm unwind label %.loopexit.split-lp272.loopexit.split-lp

bb.em:                                            ; preds = %bb.ek
  %i.gs = load i64, ptr %i.bf, align 8, !range !6, !noundef !5 ; 2 uses
  %i.gt = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gu = icmp ule i64 %i.gn, %i.gs
  call void @llvm.assume(i1 %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not161 = icmp eq i64 %i.gn, 0
  br i1 %.not161, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.eo, %bb.em
  store i64 %i.gs, ptr %i.ai, align 8
  store ptr %i.gt, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 %i.gn, ptr %.sroa.669.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixNtNtB1a_6string6StringECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %bb.ep unwind label %.loopexit.split-lp272.loopexit.split-lp

bb.eo:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr align 1 %i.gm, i64 %i.gn, i1 false)
  br label %bb.en

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv6conv2d(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.am, i64 noundef %i.ba, i64 noundef %i.bi, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ak)
          to label %bb.eq unwind label %.loopexit.split-lp272.loopexit.split-lp

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.gv = load i64, ptr %i.am, align 8, !range !7, !noundef !5 ; 2 uses
  %.not162 = icmp eq i64 %i.gv, -1
  br i1 %.not162, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.gd, %bb.fr, %bb.ff, %bb.eq
  %.lcssa300 = phi i64 [ %i.gv, %bb.eq ], [ %i.ho, %bb.ff ], [ %i.ie, %bb.fr ], [ %i.iu, %bb.gd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false)
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.578.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.575.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa300, ptr %i.gw, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aj)
          to label %bb.gi unwind label %.loopexit.split-lp267.loopexit.split-lp

bb.es:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  %i.gx = load i64, ptr %i.ay, align 8, !alias.scope !17675, !noundef !5 ; 3 uses
  %i.gy = load i64, ptr %i.an, align 8, !range !6, !alias.scope !17675, !noundef !5
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dE8grow_oneCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.ew unwind label %bb.eu, !noalias !17676

bb.eu:                                            ; preds = %bb.gf, %bb.ft, %bb.fh, %bb.et
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ah) #23
          to label %.body240 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ew:                                            ; preds = %bb.et, %bb.es
  %i.hc = load ptr, ptr %i.ax, align 8, !alias.scope !17675, !nonnull !5, !noundef !5
  %i.hd = getelementptr inbounds nuw [56 x i8], ptr %i.hc, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hd, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  %i.he = add i64 %i.gx, 1
  store i64 %i.he, ptr %i.ay, align 8, !alias.scope !17675
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aj)
          to label %bb.ex unwind label %.loopexit.split-lp267.loopexit.split-lp

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.hf = load i64, ptr %.sroa.0.0.ptr.1, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8
  store i64 1, ptr %i.bb, align 8
  store i64 1, ptr %i.bc, align 8
  store i64 1, ptr %i.bd, align 8
  store i8 -1, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8)
          to label %bb.ey unwind label %.loopexit.split-lp267.loopexit.split-lp

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hg = invoke { ptr, i64 } @_RNvMsk_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impj4__fmt(i64 noundef 1, ptr noalias nofree noundef nonnull %i.e, i64 noundef 20)
          to label %bb.ez unwind label %.loopexit.split-lp272.loopexit.split-lp ; 2 uses

bb.ez:                                            ; preds = %bb.ey
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.hi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fa unwind label %.loopexit.split-lp272.loopexit.split-lp

bb.fa:                                            ; preds = %bb.ez
  %i.hj = load i64, ptr %i.d, align 8, !range !14, !noundef !5
  %i.hk = trunc nuw i64 %i.hj to i1
  br i1 %i.hk, label %bb.el, label %bb.fb, !prof !12

bb.fb:                                            ; preds = %bb.fa
  %i.hl = load i64, ptr %i.bf, align 8, !range !6, !noundef !5 ; 2 uses
  %i.hm = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hn = icmp ule i64 %i.hi, %i.hl
  call void @llvm.assume(i1 %i.hn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not161.1 = icmp eq i64 %i.hi, 0
  br i1 %.not161.1, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr align 1 %i.hh, i64 %i.hi, i1 false)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  store i64 %i.hl, ptr %i.ai, align 8
  store ptr %i.hm, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 %i.hi, ptr %.sroa.669.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixNtNtB1a_6string6StringECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %bb.fe unwind label %.loopexit.split-lp272.loopexit.split-lp
end_hunk_3
begin_hunk_4_@_RNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB5_18Qwen3VLVisionModel7forward:bb.a
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.ud, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.ha unwind label %bb.gz, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread651.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.gz
  %.sroa.0159.14.i = phi i8 [ %.sroa.0159.15.i, %bb.gz ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit.i ] ; 2 uses
  %.pn338.i = phi { ptr, i32 } [ %i.ui, %bb.gz ], [ %.pn336650.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread.i ], [ %lpad.thr_comm.split-lp.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.pn333.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19069)
  call void @llvm.experimental.noalias.scope.decl(metadata !19070)
  call void @llvm.experimental.noalias.scope.decl(metadata !19071)
  %i.uf = load ptr, ptr %i.aa, align 8, !alias.scope !19072, !noalias !18998, !nonnull !5, !noundef !5
  %i.ug = atomicrmw add ptr %i.uf, i64 -1 release, align 8, !noalias !19073
  %i.uh = icmp eq i64 %i.ug, 1
  br i1 %i.uh, label %bb.gy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit512.i

bb.gy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread651.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit512.i unwind label %bb.fe, !noalias !18996

bb.gz:                                            ; preds = %bb.jn, %bb.hb, %bb.gx
  %.sroa.0159.15.i = phi i8 [ 1, %bb.hb ], [ 0, %bb.jn ], [ 1, %bb.gx ]
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread651.i

bb.ha:                                            ; preds = %bb.gx
  %i.uj = load i64, ptr %i.h, align 8, !range !14, !noalias !18998, !noundef !5
  %i.uk = trunc nuw i64 %i.uj to i1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.um = load i64, ptr %i.ul, align 8, !range !15, !noalias !18998, !noundef !5 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.uk, label %bb.hb, label %bb.hc, !prof !12

bb.hb:                                            ; preds = %bb.ha
  %i.uo = load i64, ptr %i.un, align 8, !noalias !18998
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.um, i64 %i.uo) #22
          to label %bb.bu unwind label %bb.gz, !noalias !18996

bb.hc:                                            ; preds = %bb.ha
  %i.up = load ptr, ptr %i.un, align 8, !noalias !18998, !nonnull !5, !noundef !5
  %i.uq = icmp samesign ule i64 %i.ud, %i.um
  call void @llvm.assume(i1 %i.uq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18998
  store i64 %i.um, ptr %i.y, align 8, !noalias !18998
  %i.ur = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.up, ptr %i.ur, align 8, !noalias !18998
  %i.us = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store i64 0, ptr %i.us, align 8, !noalias !18998
  %i.ut = load ptr, ptr %i.ia, align 8, !noalias !18998, !nonnull !5, !noundef !5 ; 4 uses
  %i.uu = load i64, ptr %i.bl, align 8, !range !6, !noalias !18998, !noundef !5
  %i.uv = load i64, ptr %i.ib, align 8, !noalias !18998, !noundef !5 ; 3 uses
  %i.uw = icmp ult i64 %i.uv, 1152921504606846976
  call void @llvm.assume(i1 %i.uw)
  %.idx780.i = shl nuw nsw i64 %i.uv, 3
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 %.idx780.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !18998
  store ptr %i.ut, ptr %i.x, align 8, !noalias !18998
  %.sroa.598.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.ut, ptr %.sroa.598.0..sroa_idx.i, align 8, !noalias !18998
  %.sroa.699.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.uu, ptr %.sroa.699.0..sroa_idx.i, align 8, !noalias !18998
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  store ptr %i.ux, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !18998
  %i.uy = icmp eq i64 %i.uv, 0
  br i1 %i.uy, label %._crit_edge765.i, label %.lr.ph764.i

.lr.ph764.i:                                      ; preds = %bb.hc
  %i.uz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.he

bb.hd:                                            ; preds = %bb.jj, %bb.he
  %i.va = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread.i unwind label %bb.fe, !noalias !18996

bb.he:                                            ; preds = %bb.jk, %.lr.ph764.i
  %i.vb = phi ptr [ %i.ut, %.lr.ph764.i ], [ %i.aar, %bb.jk ] ; 2 uses
  %.sroa.095.0762.i = phi i64 [ 0, %.lr.ph764.i ], [ %i.aap, %bb.jk ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19074)
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store ptr %i.vc, ptr %.sroa.598.0..sroa_idx.i, align 8, !alias.scope !19074, !noalias !18998
  %i.vd = load i64, ptr %i.vb, align 8, !noalias !19075, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18998
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6narrowjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef 0, i64 noundef %.sroa.095.0762.i, i64 noundef %i.vd)
          to label %bb.jh unwind label %bb.hd, !noalias !18996

._crit_edge765.i:                                 ; preds = %bb.jk, %bb.hc
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit515.i unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread654.i, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread654.i: ; preds = %bb.ji, %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit515.i, %._crit_edge765.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit556.i, %bb.hr
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread651.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit515.i: ; preds = %._crit_edge765.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !18998
  %i.ve = load i64, ptr %i.ha, align 8, !noalias !18998, !noundef !5 ; 3 uses
  %i.vf = icmp ult i64 %i.ve, 384307168202282326
  call void @llvm.assume(i1 %i.vf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18998
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.ve, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.hf unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread654.i, !noalias !18996

bb.hf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit515.i
  %i.vg = load i64, ptr %i.g, align 8, !range !14, !noalias !18998, !noundef !5
  %i.vh = trunc nuw i64 %i.vg to i1
  %i.vi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.vj = load i64, ptr %i.vi, align 8, !range !15, !noalias !18998, !noundef !5 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.vh, label %bb.hg, label %bb.hi, !prof !12

bb.hg:                                            ; preds = %bb.hf
  %i.vl = load i64, ptr %i.vk, align 8, !noalias !18998
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.vj, i64 %i.vl) #22
          to label %bb.bu unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread654.i, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530.i, %bb.hh
  %.pn333.i = phi { ptr, i32 } [ %i.vm, %bb.hh ], [ %.pn331.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.thread651.i unwind label %bb.fe, !noalias !18996

bb.hh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit554.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit518.i, %.split767.us.i
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.hi:                                            ; preds = %bb.hf
  %i.vn = load ptr, ptr %i.vk, align 8, !noalias !18998, !nonnull !5, !noundef !5
  %i.vo = icmp samesign ule i64 %i.ve, %i.vj
  call void @llvm.assume(i1 %i.vo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18998
  store i64 %i.vj, ptr %i.v, align 8, !noalias !18998
  %i.vp = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.vn, ptr %i.vp, align 8, !noalias !18998
  %i.vq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %i.vq, align 8, !noalias !18998
  %i.vr = load ptr, ptr %i.ur, align 8, !noalias !18998, !nonnull !5, !noundef !5 ; 3 uses
  %i.vs = load i64, ptr %i.y, align 8, !range !6, !noalias !18998, !noundef !5
  %i.vt = load i64, ptr %i.us, align 8, !noalias !18998, !noundef !5 ; 2 uses
  %i.vu = icmp ult i64 %i.vt, 1152921504606846976
  call void @llvm.assume(i1 %i.vu)
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vt
  %.val370.i = load ptr, ptr %i.ic, align 8, !noalias !18998, !nonnull !5, !noundef !5 ; 2 uses
  %.val371.i = load i64, ptr %i.ha, align 8, !noalias !18998, !noundef !5
  %i.vw = getelementptr inbounds nuw [24 x i8], ptr %.val370.i, i64 %.val371.i
  %.sroa.4626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18998
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4626.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !18998
  store ptr %i.vr, ptr %i.u, align 8, !noalias !18998
  %.sroa.0625.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.vr, ptr %.sroa.0625.sroa.2.0..sroa_idx.i, align 8, !noalias !18998
  %.sroa.0625.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.vs, ptr %.sroa.0625.sroa.3.0..sroa_idx.i, align 8, !noalias !18998
  %.sroa.0625.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.vv, ptr %.sroa.0625.sroa.4.0..sroa_idx.i, align 8, !noalias !18998
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.val370.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !18998
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.vw, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !18998
  %i.vx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.vz = load i64, ptr %i.vy, align 8, !alias.scope !18997
  %.fr781.i = freeze i64 %i.vz                    ; 5 uses
  %i.wa = icmp eq i64 %.fr781.i, 0
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !18997 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.wg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.wi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.wl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.wm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.wn = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.wo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br i1 %i.wa, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.hi
  %i.wq = invoke fastcc { ptr, ptr } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtBb_5slice4iter4IterINtB11_3VecmEEEINtB5_7ZipImplBW_B2u_E4nextCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(64) %i.u)
          to label %bb.hj unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18996 ; 2 uses

bb.hj:                                            ; preds = %.split.us.i
  %i.wr = extractvalue { ptr, ptr } %i.wq, 0      ; 2 uses
  %.not319.us.i = icmp eq ptr %i.wr, null
  br i1 %.not319.us.i, label %.split767.us.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ws = extractvalue { ptr, ptr } %i.wq, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18998
  store ptr %i.wr, ptr %i.t, align 8, !noalias !18998
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ws) ]
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load i64, ptr %i.wt, align 8, !noalias !18996, !noundef !5 ; 3 uses
  %.not320.us.i = icmp eq i64 %i.wu, 0
  br i1 %.not320.us.i, label %.split769.us.invoke.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !noalias !18996, !nonnull !5, !noundef !5
  %i.wx = load i32, ptr %i.ww, align 4, !noalias !18996, !noundef !5
  %i.wy = zext i32 %i.wx to i64
  %.not321.us.i = icmp eq i64 %i.wu, 1
  br i1 %.not321.us.i, label %.split769.us.invoke.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.wz = icmp ugt i64 %i.wu, 2
  br i1 %i.wz, label %bb.hn, label %.split769.us.invoke.i

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !18998
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6repeatTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, i64 noundef %i.wy, i64 noundef 1)
          to label %bb.ho unwind label %.loopexit666.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18996

bb.ho:                                            ; preds = %bb.hn
  %i.xa = load i64, ptr %i.r, align 8, !range !7, !noalias !18998, !noundef !5 ; 2 uses
  %.not322.us.i = icmp eq i64 %i.xa, -1
  br i1 %.not322.us.i, label %.split779.us.i, label %.split776.us.i

.split779.us.i:                                   ; preds = %bb.ho
  %i.xb = load ptr, ptr %i.vx, align 8, !noalias !18998, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18998
  store ptr %i.xb, ptr %i.s, align 8, !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18998
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #22
          to label %bb.bu unwind label %.loopexit.split-lp672.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18996

.split.i:                                         ; preds = %bb.hi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit546.i
  %i.xc = invoke fastcc { ptr, ptr } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtBb_5slice4iter4IterINtB11_3VecmEEEINtB5_7ZipImplBW_B2u_E4nextCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(64) %i.u)
          to label %bb.hp unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18996 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530.i: ; preds = %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.id, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532.i
  %.pn331.i = phi { ptr, i32 } [ %.pn328.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532.i ], [ %.pn328.pn.i, %bb.id ], [ %lpad.loopexit.split-lp968, %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.fe, !noalias !18996

.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ja, %.split.i, %bb.jf, %.split.us.i
  %lpad.loopexit.split-lp968 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530.i

bb.hp:                                            ; preds = %.split.i
  %i.xd = extractvalue { ptr, ptr } %i.xc, 0      ; 2 uses
  %.not319.i = icmp eq ptr %i.xd, null
  br i1 %.not319.i, label %.split767.us.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.xe = extractvalue { ptr, ptr } %i.xc, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18998
  store ptr %i.xd, ptr %i.t, align 8, !noalias !18998
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xe) ]
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !noalias !18996, !nonnull !5, !noundef !5 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.xi = load i64, ptr %i.xh, align 8, !noalias !18996, !noundef !5 ; 3 uses
  %.not320.i = icmp eq i64 %i.xi, 0
  br i1 %.not320.i, label %.split769.us.invoke.i, label %bb.ic

.split767.us.i:                                   ; preds = %bb.hp, %bb.hj
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit518.i unwind label %bb.hh, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit518.i: ; preds = %.split767.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !18998
  %i.xj = load ptr, ptr %i.vp, align 8, !noalias !18998, !nonnull !5, !noundef !5
  %i.xk = load i64, ptr %i.vq, align 8, !noalias !18998, !noundef !5
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catBI_jECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.xj, i64 noundef %i.xk, i64 noundef 0)
          to label %bb.hr unwind label %bb.hh

bb.hr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtNtNtB4_5slice4iter4IterINtB1e_3VecmEEEECs1dZk1kIfPhr_19candle_transformers.exit518.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v)
          to label %bb.hs unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs1dZk1kIfPhr_19candle_transformers.exit.i, !noalias !18996

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !18998
  call void @llvm.experimental.noalias.scope.decl(metadata !19076)
  call void @llvm.experimental.noalias.scope.decl(metadata !19077)
  call void @llvm.experimental.noalias.scope.decl(metadata !19078)
  %i.xl = load ptr, ptr %i.aa, align 8, !alias.scope !19079, !noalias !18998, !nonnull !5, !noundef !5
  %i.xm = atomicrmw add ptr %i.xl, i64 -1 release, align 8, !noalias !19080
  %i.xn = icmp eq i64 %i.xm, 1
  br i1 %i.xn, label %bb.ht, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit520.i

bb.ht:                                            ; preds = %bb.hs
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit520.i unwind label %bb.gu, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit520.i: ; preds = %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !18998
  call void @llvm.experimental.noalias.scope.decl(metadata !19081)
  call void @llvm.experimental.noalias.scope.decl(metadata !19082)
  call void @llvm.experimental.noalias.scope.decl(metadata !19083)
  %i.xo = load ptr, ptr %i.ae, align 8, !alias.scope !19084, !noalias !18998, !nonnull !5, !noundef !5
  %i.xp = atomicrmw add ptr %i.xo, i64 -1 release, align 8, !noalias !19085
  %i.xq = icmp eq i64 %i.xp, 1
  br i1 %i.xq, label %bb.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit522.i

bb.hu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit520.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit522.i unwind label %bb.gi, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit522.i: ; preds = %bb.hu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit520.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18998
  call void @llvm.experimental.noalias.scope.decl(metadata !19086)
  call void @llvm.experimental.noalias.scope.decl(metadata !19087)
  call void @llvm.experimental.noalias.scope.decl(metadata !19088)
  %i.xr = load ptr, ptr %i.ag, align 8, !alias.scope !19089, !noalias !18998, !nonnull !5, !noundef !5
  %i.xs = atomicrmw add ptr %i.xr, i64 -1 release, align 8, !noalias !19090
  %i.xt = icmp eq i64 %i.xs, 1
  br i1 %i.xt, label %bb.hv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524.i

bb.hv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit522.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524.i unwind label %bb.gd, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524.i: ; preds = %bb.hv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit522.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18998
  call void @llvm.experimental.noalias.scope.decl(metadata !19091)
  call void @llvm.experimental.noalias.scope.decl(metadata !19092)
  call void @llvm.experimental.noalias.scope.decl(metadata !19093)
  %i.xu = load ptr, ptr %i.ak, align 8, !alias.scope !19094, !noalias !18998, !nonnull !5, !noundef !5
  %i.xv = atomicrmw add ptr %i.xu, i64 -1 release, align 8, !noalias !19095
  %i.xw = icmp eq i64 %i.xv, 1
  br i1 %i.xw, label %bb.hw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526.i

bb.hw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526.i unwind label %bb.fr, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526.i: ; preds = %bb.hw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !18998
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an)
          to label %bb.hx unwind label %bb.fn, !noalias !18996

bb.hx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !18998
  call void @llvm.experimental.noalias.scope.decl(metadata !19096)
  call void @llvm.experimental.noalias.scope.decl(metadata !19097)
  call void @llvm.experimental.noalias.scope.decl(metadata !19098)
  %i.xx = load ptr, ptr %i.ap, align 8, !alias.scope !19099, !noalias !18998, !nonnull !5, !noundef !5
  %i.xy = atomicrmw add ptr %i.xx, i64 -1 release, align 8, !noalias !19100
  %i.xz = icmp eq i64 %i.xy, 1
  br i1 %i.xz, label %bb.hy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528.i

bb.hy:                                            ; preds = %bb.hx
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528.i unwind label %bb.fh, !noalias !18996

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528.i: ; preds = %bb.hy, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !18998
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as)
          to label %bb.hz unwind label %.loopexit.split-lp690.i, !noalias !18996

bb.hz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !18998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !18998
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueAINtNtCsgCecv3eZDcN_5alloc3vec3VecfEj4_ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bm)
          to label %bb.ia unwind label %bb.bb, !noalias !18996

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !18998
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueAINtNtCsgCecv3eZDcN_5alloc3vec3VecxEj4_ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bn)
          to label %bb.ib unwind label %bb.ao, !noalias !18996

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !18998
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_mEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp)
          to label %._crit_edge663 unwind label %bb.aj

._crit_edge663:                                   ; preds = %bb.ib
  %.pr429.pre = load i64, ptr %i.cx, align 8
  br label %bb.kx

bb.ic:                                            ; preds = %bb.hq
  %i.ya = load i32, ptr %i.xg, align 4, !noalias !18996, !noundef !5
  %i.yb = zext i32 %i.ya to i64                   ; 3 uses
  %.not321.i = icmp eq i64 %i.xi, 1
  br i1 %.not321.i, label %.split769.us.invoke.i, label %bb.ie

.split769.us.invoke.i:                            ; preds = %bb.ie, %bb.ic, %bb.hq, %bb.hm, %bb.hl, %bb.hk
  %i.yc = phi i64 [ 2, %bb.hm ], [ 1, %bb.hl ], [ 0, %bb.hk ], [ 0, %bb.hq ], [ 2, %bb.ie ], [ 1, %bb.ic ] ; 2 uses
  %i.yd = phi ptr [ @178, %bb.hm ], [ @177, %bb.hl ], [ @176, %bb.hk ], [ @176, %bb.hq ], [ @178, %bb.ie ], [ @177, %bb.ic ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.yc, i64 noundef %i.yc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yd) #22
          to label %.split769.us.cont.i unwind label %.loopexit666.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18996

.split769.us.cont.i:                              ; preds = %.split769.us.invoke.i
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532.i: ; preds = %.loopexit666.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ii, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit534.i
  %.pn328.pn.i = phi { ptr, i32 } [ %.pn328.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit534.i ], [ %.pn328.i, %bb.ii ], [ %lpad.loopexit.split-lp972, %.loopexit666.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19101)
  call void @llvm.experimental.noalias.scope.decl(metadata !19102)
  call void @llvm.experimental.noalias.scope.decl(metadata !19103)
  %i.ye = load ptr, ptr %i.t, align 8, !alias.scope !19104, !noalias !18998, !nonnull !5, !noundef !5
  %i.yf = atomicrmw add ptr %i.ye, i64 -1 release, align 8, !noalias !19105
  %i.yg = icmp eq i64 %i.yf, 1
  br i1 %i.yg, label %bb.id, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530.i

bb.id:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530.i unwind label %bb.fe, !noalias !18996

.loopexit666.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.iz, %bb.if, %bb.je, %.split769.us.invoke.i, %bb.hn
  %lpad.loopexit.split-lp972 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532.i

bb.ie:                                            ; preds = %bb.ic
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !noalias !18996, !noundef !5
  %i.yj = zext i32 %i.yi to i64                   ; 2 uses
  %i.yk = icmp ugt i64 %i.xi, 2
  br i1 %i.yk, label %bb.if, label %.split769.us.invoke.i

bb.if:                                            ; preds = %bb.ie
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.ym = load i32, ptr %i.yl, align 4, !noalias !18996, !noundef !5
  %i.yn = zext i32 %i.ym to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !18998
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6repeatTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, i64 noundef %i.yb, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit666.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18996

bb.ig:                                            ; preds = %bb.if
  %i.yo = load i64, ptr %i.r, align 8, !range !7, !noalias !18998, !noundef !5 ; 2 uses
  %.not322.i = icmp eq i64 %i.yo, -1
  br i1 %.not322.i, label %bb.ih, label %.split776.us.i

.split776.us.i:                                   ; preds = %bb.ig, %bb.ho
  %.us-phi777.i = phi i64 [ %i.xa, %bb.ho ], [ %i.yo, %bb.ig ] ; 2 uses
  %.sroa.4265.0.copyload.i = load ptr, ptr %i.vx, align 8, !noalias !18998
  %.sroa.5266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5269.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5266.0..sroa_idx.i, i64 64, i1 false), !noalias !18999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18998
  store i64 %.us-phi777.i, ptr %i.cx, align 8, !alias.scope !18996
  %.sroa.4268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.sroa.4265.0.copyload.i, ptr %.sroa.4268.0..sroa_idx.i, align 8, !alias.scope !18996
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit552.i

bb.ih:                                            ; preds = %bb.ig
  %i.yp = load ptr, ptr %i.vx, align 8, !noalias !18998, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18998
  store ptr %i.yp, ptr %i.s, align 8, !noalias !18998
end_hunk_4
