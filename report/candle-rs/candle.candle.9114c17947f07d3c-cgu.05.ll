Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle.candle.9114c17947f07d3c-cgu.05?download=true
inline.NumInlined: 256
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle:bb.a
          to label %.body.i.i.i unwind label %bb.f, !noalias !390

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !390
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE9next_implKb0_ECscsgjCEAuSgO_6candle.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i.i unwind label %bb.g, !noalias !390

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #21
          to label %bb.i unwind label %bb.h, !noalias !390

bb.h:                                             ; preds = %.body.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !390
  unreachable

bb.i:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac), !noalias !390
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i.i, %bb.b
  %i.ae = mul i64 %i.b, 56
  %i.af = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = and i64 %i.ae, -16                      ; 2 uses
  %i.ah = add i64 %i.ag, 64                       ; 2 uses
  %i.ai = add nsw i64 %i.b, 17
  %i.aj = add i64 %i.ai, %i.ah                    ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  %i.al = icmp ult i64 %i.aj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i
  %i.an = load ptr, ptr %0, align 8, !alias.scope !388, !nonnull !4, !noundef !4
  %i.ao = sub i64 -64, %i.ag
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !388
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECscsgjCEAuSgO_6candle.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !401, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringjENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !403, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !403, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !404
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECscsgjCEAuSgO_6candle.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !405
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECscsgjCEAuSgO_6candle.exit.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECscsgjCEAuSgO_6candle.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i unwind label %bb.e, !noalias !403

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECscsgjCEAuSgO_6candle.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECscsgjCEAuSgO_6candle.exit.i.i.i.i.i unwind label %bb.f, !noalias !403

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !403
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECscsgjCEAuSgO_6candle.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECscsgjCEAuSgO_6candle.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !403
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringjENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !401, !nonnull !4, !noundef !4
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !401
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringjENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringjENtNtB1h_5alloc6GlobalECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECscsgjCEAuSgO_6candle.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = add i64 %.val1, 1
  %i.d = add i64 %.val1, 16                       ; 2 uses
  %i.e = icmp uge i64 %i.d, %i.c
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 3 uses
  %i.g = add i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nsw i64 0, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #23
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !408
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE15into_allocationB1t_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE15into_allocationB1t_.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE15into_allocationB1t_.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE15into_allocationCscsgjCEAuSgO_6candle.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE15into_allocationCscsgjCEAuSgO_6candle.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE15into_allocationCscsgjCEAuSgO_6candle.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !414
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE15into_allocationCscsgjCEAuSgO_6candle.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 104
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 129
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -112, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE15into_allocationCscsgjCEAuSgO_6candle.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE15into_allocationCscsgjCEAuSgO_6candle.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEE15into_allocationCscsgjCEAuSgO_6candle.exit:
  %2 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i64, ptr %3, align 8, !noundef !4     ; 4 uses
  %.val3.i = load <16 x i8>, ptr %2, align 16, !noalias !417
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i64, ptr %5, align 8, !noundef !4
  %7 = icmp eq i64 %4, 0                          ; 2 uses
  %8 = and i64 %4, -16                            ; 2 uses
  %9 = add i64 %4, 33
  %10 = add i64 %9, %8
  %11 = sub nuw nsw i64 -16, %8
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %.sroa.514.0 = select i1 %7, ptr undef, ptr %12
  %.sink.i = select i1 %7, i64 0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %13 = getelementptr i8, ptr %2, i64 %4
  %i.c = getelementptr i8, ptr %13, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.d, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.b, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %6, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %10, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceB1z_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCscsgjCEAuSgO_6candle(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CscsgjCEAuSgO_6candle.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CscsgjCEAuSgO_6candle.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(80) %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCscsgjCEAuSgO_6candle(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCscsgjCEAuSgO_6candle(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CscsgjCEAuSgO_6candle.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CscsgjCEAuSgO_6candle.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscsgjCEAuSgO_6candle.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscsgjCEAuSgO_6candle(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { inlinehint }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { noinline }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i64 8}
!7 = !{!"branch_weights", i32 1, i32 1999}
!8 = !{!"branch_weights", i32 0, i32 1}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!11 = !{i64 -1, i64 -9223372036854775808}
!12 = !{i8 0, i8 13}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = distinct !{!14, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!15 = distinct !{!15, !14, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!16 = distinct !{!16, !14, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!17 = distinct !{!17, !14, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!18 = distinct !{!18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!19 = distinct !{!19, !18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!20 = distinct !{!20, !18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!21 = distinct !{!21, !18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!22 = distinct !{!22, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle"}
!23 = distinct !{!23, !22, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle: argument 0"}
!24 = distinct !{!24, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle"}
!25 = distinct !{!25, !24, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle: argument 0"}
!26 = distinct !{!26, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1w_"}
!27 = distinct !{!27, !26, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1w_: argument 1"}
!28 = distinct !{!28, !26, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtCscsgjCEAuSgO_6candle8PyTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1w_: argument 0"}
!29 = distinct !{!29, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!30 = distinct !{!30, !29, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!31 = !{!15}
!32 = !{!17, !16}
!33 = !{!15, !17, !16}
!34 = !{!19}
!35 = !{!19, !21, !20, !15, !17, !16}
!36 = !{!20, !16}
!37 = !{!19, !15}
!38 = !{!21, !20, !17, !16}
!39 = !{!23}
!40 = !{!25}
!41 = !{!25, !23}
!42 = !{!25, !23, !20, !16}
!43 = !{!27}
!44 = !{!28, !20, !16}
!45 = !{!28, !27, !20, !16}
!46 = !{!30}
!47 = distinct !{!47, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!48 = distinct !{!48, !47, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!49 = distinct !{!49, !47, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!50 = distinct !{!50, !47, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!51 = distinct !{!51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!52 = distinct !{!52, !51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!53 = distinct !{!53, !51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!54 = distinct !{!54, !51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!55 = distinct !{!55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle"}
!56 = distinct !{!56, !55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle: argument 0"}
!57 = distinct !{!57, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle"}
!58 = distinct !{!58, !57, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle: argument 0"}
!59 = distinct !{!59, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle"}
!60 = distinct !{!60, !59, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 1"}
!61 = distinct !{!61, !59, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 0"}
!62 = distinct !{!62, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!63 = distinct !{!63, !62, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!64 = !{!48}
!65 = !{!50, !49}
!66 = !{!48, !50, !49}
!67 = !{!52}
!68 = !{!52, !54, !53, !48, !50, !49}
!69 = !{!53, !49}
!70 = !{!52, !48}
!71 = !{!54, !53, !50, !49}
!72 = !{!56}
!73 = !{!58}
!74 = !{!58, !56}
!75 = !{!58, !56, !53, !49}
!76 = !{!60}
!77 = !{!61, !53, !49}
!78 = !{!61, !60, !53, !49}
!79 = !{!63}
!80 = distinct !{!80, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!81 = distinct !{!81, !80, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!82 = distinct !{!82, !80, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!83 = distinct !{!83, !80, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!84 = distinct !{!84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!85 = distinct !{!85, !84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!86 = distinct !{!86, !84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!87 = distinct !{!87, !84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!88 = distinct !{!88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle"}
!89 = distinct !{!89, !88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle: argument 0"}
!90 = distinct !{!90, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle"}
!91 = distinct !{!91, !90, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle: argument 0"}
!92 = distinct !{!92, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle"}
!93 = distinct !{!93, !92, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 1"}
!94 = distinct !{!94, !92, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 0"}
!95 = distinct !{!95, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!96 = distinct !{!96, !95, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!97 = !{!81}
!98 = !{!83, !82}
!99 = !{!81, !83, !82}
!100 = !{!85}
!101 = !{!85, !87, !86, !81, !83, !82}
!102 = !{!86, !82}
!103 = !{!85, !81}
!104 = !{!87, !86, !83, !82}
!105 = !{!89}
!106 = !{!91}
!107 = !{!91, !89}
!108 = !{!91, !89, !86, !82}
!109 = !{!93}
!110 = !{!94, !86, !82}
!111 = !{!94, !93, !86, !82}
!112 = !{!96}
!113 = distinct !{!113, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!114 = distinct !{!114, !113, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!115 = distinct !{!115, !113, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!116 = distinct !{!116, !113, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!117 = distinct !{!117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!118 = distinct !{!118, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!119 = distinct !{!119, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!120 = distinct !{!120, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!121 = distinct !{!121, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle"}
!122 = distinct !{!122, !121, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle: argument 0"}
!123 = distinct !{!123, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle"}
!124 = distinct !{!124, !123, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle: argument 0"}
!125 = distinct !{!125, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle"}
!126 = distinct !{!126, !125, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 1"}
!127 = distinct !{!127, !125, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 0"}
!128 = distinct !{!128, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!129 = distinct !{!129, !128, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!130 = !{!114}
!131 = !{!116, !115}
!132 = !{!114, !116, !115}
!133 = !{!118}
!134 = !{!118, !120, !119, !114, !116, !115}
!135 = !{!119, !115}
!136 = !{!118, !114}
!137 = !{!120, !119, !116, !115}
!138 = !{!122}
!139 = !{!124}
!140 = !{!124, !122}
!141 = !{!124, !122, !119, !115}
!142 = !{!126}
!143 = !{!127, !119, !115}
!144 = !{!127, !126, !119, !115}
!145 = !{!129}
!146 = distinct !{!146, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!147 = distinct !{!147, !146, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!148 = distinct !{!148, !146, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!149 = distinct !{!149, !146, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!150 = distinct !{!150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!151 = distinct !{!151, !150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!152 = distinct !{!152, !150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 2"}
!153 = distinct !{!153, !150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 1"}
!154 = distinct !{!154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!155 = distinct !{!155, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!156 = distinct !{!156, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle"}
!157 = distinct !{!157, !156, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECscsgjCEAuSgO_6candle: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECscsgjCEAuSgO_6candle: argument 0"}
!160 = distinct !{!160, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle"}
!161 = distinct !{!161, !160, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle: argument 0"}
!162 = distinct !{!162, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle"}
!163 = distinct !{!163, !162, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 1"}
!164 = distinct !{!164, !162, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CscsgjCEAuSgO_6candle: argument 0"}
!165 = distinct !{!165, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!166 = distinct !{!166, !165, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!167 = !{!147}
!168 = !{!149, !148}
!169 = !{!147, !149, !148}
!170 = !{!151}
!171 = !{!151, !153, !152, !147, !149, !148}
!172 = !{!157, !155}
!173 = !{!155}
!174 = !{!151, !147}
!175 = !{!153, !152, !149, !148}
!176 = !{!152, !148}
!177 = !{!159}
!178 = !{!161}
end_hunk_0
