Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.14?download=true
inline.NumInlined: 379
inline.NumDeleted: 249
begin_hunk_0_@_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRyNtB6_5Debug3fmtCskVIURZGHVHJ_12tensor_tools:bb.a
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit

_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRjNtB6_7Display3fmtCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools.exit.i.i
  %i.e = icmp eq i64 %i.g, %i.c
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i21 = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %.sroa.0.0.i21 ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i21, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.h, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.k) #15
          to label %.body.i unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.g

bb.e:                                             ; preds = %.body.i.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.f:                                             ; preds = %.lr.ph23
  %i.n = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.c
  br i1 %i.o, label %._crit_edge, label %.lr.ph23

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.q = icmp eq i64 %i.g, %i.c
  br i1 %i.q, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i22 = phi i64 [ %i.n, %bb.f ], [ %i.g, %.body.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(104) %i.r) #15
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %.lr.ph23
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %i.c
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.0.i1
  %i.g = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.c
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.1.i2
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE11into_folderB6d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !619, !noalias !620, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load <2 x ptr>, ptr %1, align 8, !alias.scope !619, !noalias !620
  store <2 x ptr> %i.d, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE4fullB6d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !627, !nonnull !8, !noundef !8
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !noalias !627
  %.not.i.i = icmp ne i8 %i.b, 0
  ret i1 %.not.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE8split_atB6d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !638, !noalias !639, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %2, %i.b
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB47_ppEE13from_par_iter2okB2g_NtNtB2X_5error5ErrorE0EINtNtB7_8plumbing8ConsumerIB47_B2g_B5I_EE8split_atCskVIURZGHVHJ_12tensor_tools.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !640
  unreachable

_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB47_ppEE13from_par_iter2okB2g_NtNtB2X_5error5ErrorE0EINtNtB7_8plumbing8ConsumerIB47_B2g_B5I_EE8split_atCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !638, !noalias !639, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %2
  %i.f = sub nuw i64 %i.b, %2
  %i.g = load ptr, ptr %1, align 8, !alias.scope !638, !noalias !639, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !636, !noalias !641, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.l, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.i, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4c_ppEE13from_par_iter2okB2k_NtNtB32_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB2l_RNtNtB30_9gguf_file10TensorInfoEE11into_folderB6e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !648, !noalias !649, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load <2 x ptr>, ptr %1, align 8, !alias.scope !648, !noalias !649
  store <2 x ptr> %i.d, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4c_ppEE13from_par_iter2okB2k_NtNtB32_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB2l_RNtNtB30_9gguf_file10TensorInfoEE4fullB6e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !656, !nonnull !8, !noundef !8
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !noalias !656
  %.not.i.i = icmp ne i8 %i.b, 0
  ret i1 %.not.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4c_ppEE13from_par_iter2okB2k_NtNtB32_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB2l_RNtNtB30_9gguf_file10TensorInfoEE8split_atB6e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !667, !noalias !668, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %2, %i.b
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB48_ppEE13from_par_iter2okB2g_NtNtB2Y_5error5ErrorE0EINtNtB7_8plumbing8ConsumerIB48_B2g_B5J_EE8split_atCskVIURZGHVHJ_12tensor_tools.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !669
  unreachable

_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB48_ppEE13from_par_iter2okB2g_NtNtB2Y_5error5ErrorE0EINtNtB7_8plumbing8ConsumerIB48_B2g_B5J_EE8split_atCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !667, !noalias !668, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %2
  %i.f = sub nuw i64 %i.b, %2
  %i.g = load ptr, ptr %1, align 8, !alias.scope !667, !noalias !668, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !665, !noalias !670, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.l, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.i, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4K_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB44_NtNtB4K_6tensor6TensorEE11into_folderB5V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4K_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB44_NtNtB4K_6tensor6TensorEE4fullB5V_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !677, !nonnull !8, !noundef !8
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !noalias !677
  %.not.i.i = icmp ne i8 %i.b, 0
  ret i1 %.not.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4K_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB44_NtNtB4K_6tensor6TensorEE8split_atB5V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE11into_folderB5W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE4fullB5W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !684, !nonnull !8, !noundef !8
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !noalias !684
  %.not.i.i = icmp ne i8 %i.b, 0
  ret i1 %.not.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE8split_atB5W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB3S_ppEE13from_par_iter2okB21_NtNtB2I_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing6FolderTB22_NtNtB2I_6tensor6TensorEE8completeB5U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !noalias !692
  call void @_RNvXs0_NtNtCs7fP0opQOXdx_5rayon4iter6extendINtB5_13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEINtNtB7_8plumbing6FolderB10_E8completeCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !691
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB3T_ppEE13from_par_iter2okB21_NtNtB2J_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing6FolderTB22_RNtNtB2H_9gguf_file10TensorInfoEE8completeB5V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !noalias !701
  call void @_RNvXs0_NtNtCs7fP0opQOXdx_5rayon4iter6extendINtB5_13ListVecFolderTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEINtNtB7_8plumbing6FolderB10_E8completeCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !700
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtNtB7_7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB44_ppEE13from_par_iter2okB2d_NtNtB2U_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing6FolderTB2e_NtNtB2U_6tensor6TensorEE8completeB66_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !709
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtNtB7_7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB45_ppEE13from_par_iter2okB2d_NtNtB2V_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing6FolderTB2e_RNtNtB2T_9gguf_file10TensorInfoEE8completeB67_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !716
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEE6reduceCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %2, align 8, !noundef !8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %2)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  %i.l = add i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  store i64 0, ptr %i.m, align 8
  invoke void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit3 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit3
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit3: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = add i64 %i.n, %i.d
  store i64 %i.o, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit

bb.d:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit4: ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit4 unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEE6reduceCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !8   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i8, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !alias.scope !12, !noundef !8 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i18
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i18, 1    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.c, !noalias !719

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i: ; preds = %.lr.ph20
  %i.m = add i64 %.sroa.0.1.i.i.i19, 1            ; 2 uses
  %i.n = icmp eq i64 %i.m, %.val7
  br i1 %i.n, label %.body, label %.lr.ph20

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.k, %.val7
  br i1 %i.p, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i
  %.sroa.0.1.i.i.i19 = phi i64 [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i unwind label %bb.d, !noalias !719

bb.d:                                             ; preds = %.lr.ph20
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16, !noalias !719
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i8: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !8
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  %i.y = add i64 %.sroa.415.0.copyload, %i.c
  store i64 %i.y, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i8
  ret void

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i, %bb.c
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeECskVIURZGHVHJ_12tensor_tools
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCINvNvXs2_NtCs7fP0opQOXdx_5rayon6resultINtNtBa_6result6ResultppEINtNtB10_4iter20FromParallelIteratorIB1s_ppEE13from_par_iter2okTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB3y_5error5ErrorE0INtB6_5FnMutTIB1s_B2R_B4i_EEE8call_mutCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCINvNvXs2_NtCs7fP0opQOXdx_5rayon6resultINtNtBa_6result6ResultppEINtNtB10_4iter20FromParallelIteratorIB1s_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB3z_5error5ErrorE0INtB6_5FnMutTIB1s_B2R_B4j_EEE8call_mutCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0INtB6_5FnMutTTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEE8call_mutBR_(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0INtB6_5FnMutTTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEE8call_mutBR_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt5floatfNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs7fP0opQOXdx_5rayon4iter6extendINtB5_13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEINtNtB7_8plumbing6FolderB10_E8completeCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs7fP0opQOXdx_5rayon4iter6extendINtB5_13ListVecFolderTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEINtNtB7_8plumbing6FolderB10_E8completeCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtB7_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringBV_EE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCsf3Ta7LF998c_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsp_NtNtCsf3Ta7LF998c_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtNtCsf3Ta7LF998c_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsf3Ta7LF998c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsa_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_7IterMutTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10into_sliceCskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsa_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_7IterMutTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE10into_sliceCskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline noreturn }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { noinline }
attributes #19 = { noreturn }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, i1 false, !"_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!1 = distinct !{!1, !0, !"_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{}
!9 = !{i64 8}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!11 = !{i64 -1, i64 -9223372036854775808}
!12 = !{!1}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i64 4}
!17 = !{i64 2}
!18 = distinct !{!18, i1 false, !"_RNvXsa_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!19 = distinct !{!19, !18, !"_RNvXsa_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, i1 false, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!22 = distinct !{!22, !21, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!23 = !{!22}
!24 = distinct !{!24, i1 false, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!25 = distinct !{!25, !24, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!26 = !{!25}
!27 = distinct !{!27, i1 false, !"_RNvXs9_NtNtCs5Xr050g3D4S_3std4sync9once_lockINtB5_8OnceLockINtNtCsf3Ta7LF998c_4core6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEENtNtNtB10_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!28 = distinct !{!28, !27, !"_RNvXs9_NtNtCs5Xr050g3D4S_3std4sync9once_lockINtB5_8OnceLockINtNtCsf3Ta7LF998c_4core6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEENtNtNtB10_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!29 = distinct !{!29, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECskVIURZGHVHJ_12tensor_tools"}
!30 = distinct !{!30, !29, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!31 = !{!28}
!32 = !{!30, !28}
!33 = distinct !{!33, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapIB1o_INtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEERNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0ERNCINvNvXs2_NtB1N_6resultINtNtB4_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5a_ppEE13from_par_iter2okTB2o_NtNtB34_9quantized7QTensorENtNtB34_5error5ErrorE0ENCINvNvXs2_NtB5B_10while_someINtB7D_15WhileSomeFolderpEINtNtB5B_8plumbing6FolderINtNtB4_6option6OptionpEE12consume_iter4someB6z_E0EEB3Q_"}
!34 = distinct !{!34, !33, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapIB1o_INtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEERNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0ERNCINvNvXs2_NtB1N_6resultINtNtB4_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5a_ppEE13from_par_iter2okTB2o_NtNtB34_9quantized7QTensorENtNtB34_5error5ErrorE0ENCINvNvXs2_NtB5B_10while_someINtB7D_15WhileSomeFolderpEINtNtB5B_8plumbing6FolderINtNtB4_6option6OptionpEE12consume_iter4someB6z_E0EEB3Q_: argument 0"}
!35 = distinct !{!35, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEERNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0ERNCINvNvXs2_NtB1i_6resultINtNtB4_6result6ResultppEINtNtB1i_4iter20FromParallelIteratorIB4F_ppEE13from_par_iter2okTB1T_NtNtB2z_9quantized7QTensorENtNtB2z_5error5ErrorE0EEB3l_"}
!36 = distinct !{!36, !35, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEERNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0ERNCINvNvXs2_NtB1i_6resultINtNtB4_6result6ResultppEINtNtB1i_4iter20FromParallelIteratorIB4F_ppEE13from_par_iter2okTB1T_NtNtB2z_9quantized7QTensorENtNtB2z_5error5ErrorE0EEB3l_: argument 0"}
!37 = distinct !{!37, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEERNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEB3h_"}
!38 = distinct !{!38, !37, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEERNCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEB3h_: argument 0"}
!39 = distinct !{!39, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools"}
!40 = distinct !{!40, !39, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!41 = distinct !{!41, i1 false, !"_RNvXsf_NtCs7fP0opQOXdx_5rayon3vecINtB5_10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!42 = distinct !{!42, !41, !"_RNvXsf_NtCs7fP0opQOXdx_5rayon3vecINtB5_10SliceDrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!43 = !{!34}
!44 = !{!36}
!45 = !{!38}
!46 = !{!40}
!47 = !{!42}
!48 = !{!42, !40, !38, !36, !34}
!49 = distinct !{!49, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized8QStorageECskVIURZGHVHJ_12tensor_tools"}
!50 = distinct !{!50, !49, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized8QStorageECskVIURZGHVHJ_12tensor_tools: argument 0"}
!51 = distinct !{!51, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEEECskVIURZGHVHJ_12tensor_tools"}
!52 = distinct !{!52, !51, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!53 = distinct !{!53, i1 false, !"_RNvXs9_NtNtCs5Xr050g3D4S_3std4sync9once_lockINtB5_8OnceLockINtNtCsf3Ta7LF998c_4core6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEENtNtNtB10_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!54 = distinct !{!54, !53, !"_RNvXs9_NtNtCs5Xr050g3D4S_3std4sync9once_lockINtB5_8OnceLockINtNtCsf3Ta7LF998c_4core6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEENtNtNtB10_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!55 = distinct !{!55, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECskVIURZGHVHJ_12tensor_tools"}
!56 = distinct !{!56, !55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!57 = !{!50}
!58 = !{i8 0, i8 3}
!59 = !{i64 1, i64 536870913}
!60 = !{!52}
!61 = !{!54}
!62 = !{!54, !52}
!63 = !{!56, !54, !52}
!64 = !{i8 0, i8 13}
!65 = distinct !{!65, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECskVIURZGHVHJ_12tensor_tools"}
!66 = distinct !{!66, !65, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECskVIURZGHVHJ_12tensor_tools: argument 0"}
!67 = distinct !{!67, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECskVIURZGHVHJ_12tensor_tools"}
!68 = distinct !{!68, !67, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECskVIURZGHVHJ_12tensor_tools: argument 0"}
!69 = distinct !{!69, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!70 = distinct !{!70, !69, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!71 = distinct !{!71, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECskVIURZGHVHJ_12tensor_tools"}
!72 = distinct !{!72, !71, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECskVIURZGHVHJ_12tensor_tools: argument 0"}
!73 = distinct !{!73, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECskVIURZGHVHJ_12tensor_tools"}
!74 = distinct !{!74, !73, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECskVIURZGHVHJ_12tensor_tools: argument 0"}
!75 = distinct !{!75, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!76 = distinct !{!76, !75, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!77 = !{!66}
!78 = !{!68}
!79 = !{!70}
!80 = !{!70, !68, !66}
!81 = !{!72}
!82 = !{!74}
!83 = !{!76}
!84 = !{!76, !74, !72}
!85 = !{i64 0, i64 3}
!86 = distinct !{!86, i1 false, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtBS_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEENtB2_12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools"}
!87 = distinct !{!87, !86, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtBS_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEENtB2_12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 1"}
!88 = distinct !{!88, !86, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtBS_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEENtB2_12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 0"}
!89 = !{!88, !87}
!90 = distinct !{!90, i1 false, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoENCINvMs5_B22_NtB22_10PthTensors3newRNtNtCs5Xr050g3D4S_3std4path7PathBufE0ENtB2_12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools"}
!91 = distinct !{!91, !90, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoENCINvMs5_B22_NtB22_10PthTensors3newRNtNtCs5Xr050g3D4S_3std4path7PathBufE0ENtB2_12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 1"}
!92 = distinct !{!92, !90, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoENCINvMs5_B22_NtB22_10PthTensors3newRNtNtCs5Xr050g3D4S_3std4path7PathBufE0ENtB2_12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 0"}
!93 = !{!92, !91}
!94 = distinct !{!94, i1 false, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools"}
!95 = distinct !{!95, !94, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 1"}
!96 = distinct !{!96, !94, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 0"}
!97 = distinct !{!97, i1 false, !"_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools"}
!98 = distinct !{!98, !97, !"_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 1"}
!99 = distinct !{!99, !97, !"_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools: argument 0"}
!100 = distinct !{!100, i1 false, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB3z_7HashMapBZ_B1B_NtNtNtBc_4hash6random11RandomStateEINtNtB2p_7collect6ExtendTBZ_B1B_EE6extendINtB6_7HashMapBZ_B1B_EE0ECskVIURZGHVHJ_12tensor_tools"}
!101 = distinct !{!101, !100, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB3z_7HashMapBZ_B1B_NtNtNtBc_4hash6random11RandomStateEINtNtB2p_7collect6ExtendTBZ_B1B_EE6extendINtB6_7HashMapBZ_B1B_EE0ECskVIURZGHVHJ_12tensor_tools: argument 0"}
!102 = distinct !{!102, i1 false, !"_RINvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callTB15_B1H_ENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB4b_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB2v_7collect6ExtendB3R_E6extendINtB6_7HashMapB15_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools"}
!103 = distinct !{!103, !102, !"_RINvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callTB15_B1H_ENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB4b_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB2v_7collect6ExtendB3R_E6extendINtB6_7HashMapB15_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools: argument 0"}
!104 = distinct !{!104, i1 false, !"_RINvYINtNtCsbDKHzkXHCUM_9hashbrown3raw11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB2b_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB3O_7HashMapBO_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2f_7collect6ExtendBN_E6extendINtNtNtNtB4p_11collections4hash3map7HashMapBO_B1q_EE0E0ECskVIURZGHVHJ_12tensor_tools"}
!105 = distinct !{!105, !104, !"_RINvYINtNtCsbDKHzkXHCUM_9hashbrown3raw11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB2b_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB3O_7HashMapBO_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2f_7collect6ExtendBN_E6extendINtNtNtNtB4p_11collections4hash3map7HashMapBO_B1q_EE0E0ECskVIURZGHVHJ_12tensor_tools: argument 0"}
!106 = distinct !{!106, i1 false, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB2M_7HashMapB1g_B1S_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtNtB3J_11collections4hash3map7HashMapB1g_B1S_EE0E0CskVIURZGHVHJ_12tensor_tools"}
!107 = distinct !{!107, !106, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB2M_7HashMapB1g_B1S_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtNtB3J_11collections4hash3map7HashMapB1g_B1S_EE0E0CskVIURZGHVHJ_12tensor_tools: argument 0"}
!108 = distinct !{!108, i1 false, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_B1t_EE6extendINtNtNtNtB2i_11collections4hash3map7HashMapBR_B1t_EE0CskVIURZGHVHJ_12tensor_tools"}
!109 = distinct !{!109, !108, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_B1t_EE6extendINtNtNtNtB2i_11collections4hash3map7HashMapBR_B1t_EE0CskVIURZGHVHJ_12tensor_tools: argument 0"}
!110 = distinct !{!110, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools"}
!111 = distinct !{!111, !110, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!112 = distinct !{!112, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECskVIURZGHVHJ_12tensor_tools"}
!113 = distinct !{!113, !112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECskVIURZGHVHJ_12tensor_tools: argument 0"}
!114 = distinct !{!114, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECskVIURZGHVHJ_12tensor_tools"}
!115 = distinct !{!115, !114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECskVIURZGHVHJ_12tensor_tools: argument 0"}
!116 = distinct !{!116, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!117 = distinct !{!117, !116, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!118 = !{!99, !98, !96, !95}
!119 = !{!99, !96}
!120 = !{!95}
!121 = !{!103, !101}
!122 = !{!105, !103, !101}
!123 = !{!109, !107, !105, !103, !101}
!124 = !{!117, !115, !113, !111, !109, !107, !103, !101}
!125 = distinct !{!125, i1 false, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerINtNtNtB28_7collect8consumer15CollectConsumerTBJ_NtNtB1p_9quantized7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB6j_ppEE13from_par_iter2okB5o_NtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB8m_"}
!126 = distinct !{!126, !125, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerINtNtNtB28_7collect8consumer15CollectConsumerTBJ_NtNtB1p_9quantized7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB6j_ppEE13from_par_iter2okB5o_NtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB8m_: argument 2"}
!127 = distinct !{!127, !125, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerINtNtNtB28_7collect8consumer15CollectConsumerTBJ_NtNtB1p_9quantized7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB6j_ppEE13from_par_iter2okB5o_NtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB8m_: argument 1"}
!128 = distinct !{!128, !125, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerINtNtNtB28_7collect8consumer15CollectConsumerTBJ_NtNtB1p_9quantized7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB6j_ppEE13from_par_iter2okB5o_NtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB8m_: argument 0"}
!129 = distinct !{!129, i1 false, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE8from_vecCskVIURZGHVHJ_12tensor_tools"}
!130 = distinct !{!130, !129, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE8from_vecCskVIURZGHVHJ_12tensor_tools: argument 0"}
!131 = distinct !{!131, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools"}
!132 = distinct !{!132, !131, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!133 = distinct !{!133, i1 false, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!134 = distinct !{!134, !133, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!135 = !{!128, !127, !126}
!136 = !{!130}
!137 = !{!128, !126}
!138 = !{!127}
!139 = !{!134, !132, !128, !127, !126}
!140 = distinct !{!140, i1 false, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerNtNtB28_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB5A_ppEE13from_par_iter2okTBJ_NtNtB1p_9quantized7QTensorENtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB84_"}
!141 = distinct !{!141, !140, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerNtNtB28_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB5A_ppEE13from_par_iter2okTBJ_NtNtB1p_9quantized7QTensorENtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB84_: argument 2"}
!142 = distinct !{!142, !140, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerNtNtB28_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB5A_ppEE13from_par_iter2okTBJ_NtNtB1p_9quantized7QTensorENtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB84_: argument 1"}
!143 = distinct !{!143, !140, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB28_8plumbing6bridge8CallbackINtNtB28_3map11MapConsumerIB3x_INtNtB28_10while_some17WhileSomeConsumerNtNtB28_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB28_20FromParallelIteratorIB5A_ppEE13from_par_iter2okTBJ_NtNtB1p_9quantized7QTensorENtNtB1p_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEEB84_: argument 0"}
!144 = distinct !{!144, i1 false, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE8from_vecCskVIURZGHVHJ_12tensor_tools"}
!145 = distinct !{!145, !144, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE8from_vecCskVIURZGHVHJ_12tensor_tools: argument 0"}
!146 = distinct !{!146, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools"}
!147 = distinct !{!147, !146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!148 = distinct !{!148, i1 false, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!149 = distinct !{!149, !148, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!150 = !{!143, !142, !141}
!151 = !{!145}
!152 = !{!143, !141}
!153 = !{!142}
!154 = !{!149, !147, !143, !142, !141}
!155 = distinct !{!155, i1 false, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerINtNtNtB2u_7collect8consumer15CollectConsumerTBJ_NtB1r_7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB6t_ppEE13from_par_iter2okB5K_NtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8w_"}
!156 = distinct !{!156, !155, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerINtNtNtB2u_7collect8consumer15CollectConsumerTBJ_NtB1r_7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB6t_ppEE13from_par_iter2okB5K_NtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8w_: argument 2"}
!157 = distinct !{!157, !155, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerINtNtNtB2u_7collect8consumer15CollectConsumerTBJ_NtB1r_7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB6t_ppEE13from_par_iter2okB5K_NtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8w_: argument 1"}
!158 = distinct !{!158, !155, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerINtNtNtB2u_7collect8consumer15CollectConsumerTBJ_NtB1r_7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB6t_ppEE13from_par_iter2okB5K_NtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8w_: argument 0"}
!159 = distinct !{!159, i1 false, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE8from_vecCskVIURZGHVHJ_12tensor_tools"}
!160 = distinct !{!160, !159, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE8from_vecCskVIURZGHVHJ_12tensor_tools: argument 0"}
!161 = distinct !{!161, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEECskVIURZGHVHJ_12tensor_tools"}
!162 = distinct !{!162, !161, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!163 = distinct !{!163, i1 false, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
!164 = distinct !{!164, !163, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools: argument 0"}
!165 = !{!158, !157, !156}
!166 = !{!160}
!167 = !{!158, !156}
!168 = !{!157}
!169 = !{!164, !162, !158, !157, !156}
!170 = distinct !{!170, i1 false, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerNtNtB2u_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB5W_ppEE13from_par_iter2okTBJ_NtB1r_7QTensorENtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8e_"}
!171 = distinct !{!171, !170, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerNtNtB2u_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB5W_ppEE13from_par_iter2okTBJ_NtB1r_7QTensorENtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8e_: argument 2"}
!172 = distinct !{!172, !170, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerNtNtB2u_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB5W_ppEE13from_par_iter2okTBJ_NtB1r_7QTensorENtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8e_: argument 1"}
!173 = distinct !{!173, !170, !"_RINvXs6_NtCs7fP0opQOXdx_5rayon3vecINtB6_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB2u_8plumbing6bridge8CallbackINtNtB2u_3map11MapConsumerIB3T_INtNtB2u_10while_some17WhileSomeConsumerNtNtB2u_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2u_20FromParallelIteratorIB5W_ppEE13from_par_iter2okTBJ_NtB1r_7QTensorENtNtB1t_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EEEB8e_: argument 0"}
!174 = distinct !{!174, i1 false, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE8from_vecCskVIURZGHVHJ_12tensor_tools"}
!175 = distinct !{!175, !174, !"_RNvMs8_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE8from_vecCskVIURZGHVHJ_12tensor_tools: argument 0"}
!176 = distinct !{!176, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEECskVIURZGHVHJ_12tensor_tools"}
!177 = distinct !{!177, !176, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEECskVIURZGHVHJ_12tensor_tools: argument 0"}
!178 = distinct !{!178, i1 false, !"_RNvXs7_NtCs7fP0opQOXdx_5rayon3vecINtB5_5DrainTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools"}
end_hunk_1
