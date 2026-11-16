Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.06?download=true
inline.NumInlined: 882
inline.NumDeleted: 338
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Q_:bb.a
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18767)
  %i.e = icmp sgt <16 x i8> %.val11.i, splat (i8 -1), !dbg !18874
    #dbg_value(<16 x i1> %i.e, !6025, !DIExpression(), !18768)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18875
    #dbg_value(ptr %i.f, !6026, !DIExpression(), !18768)
  %i.g = bitcast <16 x i1> %i.e to i16, !dbg !18876
    #dbg_value(ptr %i.d, !18818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18857)
    #dbg_value(ptr %i.f, !18818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18857)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !18818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !18857)
    #dbg_value(i16 %i.g, !18818, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18857)
    #dbg_value(i64 %i.b, !18818, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18857)
    #dbg_value(ptr undef, !18821, !DIExpression(), !18826)
  br label %bb.c, !dbg !18877

.loopexit:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit, %bb.a
  ret void, !dbg !18878

bb.c:                                             ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit
  %.sroa.017.032 = phi ptr [ %i.d, %bb.b ], [ %.sroa.017.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit ] ; 2 uses
  %.sroa.6.031 = phi ptr [ %i.f, %bb.b ], [ %.sroa.6.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit ] ; 2 uses
  %.sroa.818.030 = phi i16 [ %i.g, %bb.b ], [ %i.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit ] ; 2 uses
  %.sroa.1019.029 = phi i64 [ %i.b, %bb.b ], [ %i.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit ]
    #dbg_value(ptr %.sroa.017.032, !18818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18857)
    #dbg_value(ptr %.sroa.6.031, !18818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18857)
    #dbg_value(i16 %.sroa.818.030, !18818, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18857)
    #dbg_value(i64 %.sroa.1019.029, !18818, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18857)
    #dbg_value(ptr undef, !5995, !DIExpression(), !18740)
    #dbg_value(i64 16, !5979, !DIExpression(), !18769)
    #dbg_value(i64 16, !6048, !DIExpression(), !18771)
    #dbg_value(i64 16, !6053, !DIExpression(), !18773)
    #dbg_value(ptr undef, !6056, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18775)
  %.not29.i = icmp eq i16 %.sroa.818.030, 0, !dbg !18879
  br i1 %.not29.i, label %.lr.ph.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9next_implKb0_EB1B_.exit, !dbg !18880

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i ], [ %.sroa.6.031, %bb.c ], !dbg !18881 ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.sroa.017.032, %bb.c ]
    #dbg_value(ptr %i.h, !6064, !DIExpression(), !18778)
  %.val27.i = load <16 x i8>, ptr %i.h, align 16, !dbg !18882, !noalias !18858
    #dbg_value(<2 x i64> poison, !6071, !DIExpression(), !18783)
    #dbg_value(ptr poison, !6073, !DIExpression(), !18784)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18786)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18787)
    #dbg_value(!DIArgList(<16 x i8> %.val27.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18788)
  %i.j = icmp sgt <16 x i8> %.val27.i, splat (i8 -1), !dbg !18883
    #dbg_value(ptr undef, !5973, !DIExpression(), !18737)
    #dbg_value(ptr %i.i, !6049, !DIExpression(), !18771)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768, !dbg !18884 ; 2 uses
    #dbg_value(ptr %i.h, !6054, !DIExpression(), !18773)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !18885 ; 2 uses
    #dbg_value(ptr undef, !6056, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18775)
  %.cast.i = bitcast <16 x i1> %i.j to i16, !dbg !18886 ; 2 uses
    #dbg_value(i16 %.cast.i, !6061, !DIExpression(), !18789)
  %.not.i = icmp eq i16 %.cast.i, 0, !dbg !18879
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9next_implKb0_EB1B_.exit, !dbg !18880

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9next_implKb0_EB1B_.exit: ; preds = %.lr.ph.i, %bb.c
  %.sroa.6.1 = phi ptr [ %.sroa.6.031, %bb.c ], [ %i.l, %.lr.ph.i ], !dbg !18887
  %.sroa.017.1 = phi ptr [ %.sroa.017.032, %bb.c ], [ %i.k, %.lr.ph.i ], !dbg !18887 ; 2 uses
  %.lcssa.i = phi i16 [ %.sroa.818.030, %bb.c ], [ %.cast.i, %.lr.ph.i ], !dbg !18886 ; 3 uses
    #dbg_value(ptr %.sroa.017.1, !18818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18857)
    #dbg_value(ptr %.sroa.6.1, !18818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18857)
    #dbg_value(i16 %.lcssa.i, !6062, !DIExpression(), !18790)
    #dbg_value(i16 %.lcssa.i, !6075, !DIExpression(), !18792)
    #dbg_value(i16 %.lcssa.i, !6078, !DIExpression(), !18794)
    #dbg_value(i16 %.lcssa.i, !6080, !DIExpression(), !18796)
  %i.m = add i16 %.lcssa.i, -1, !dbg !18888
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !18889
  %i.o = zext nneg i16 %i.n to i64, !dbg !18890
    #dbg_value(i64 %i.o, !6057, !DIExpression(), !18797)
    #dbg_value(i16 %.lcssa.i, !6083, !DIExpression(), !18799)
  %i.p = and i16 %i.m, %.lcssa.i, !dbg !18891
    #dbg_value(i16 %i.p, !18818, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18857)
    #dbg_value(i64 %i.o, !5996, !DIExpression(), !18800)
    #dbg_value(i64 %i.o, !5977, !DIExpression(), !18801)
    #dbg_value(i64 %i.o, !6050, !DIExpression(), !18803)
    #dbg_value(ptr undef, !5973, !DIExpression(), !18739)
    #dbg_value(ptr %.sroa.017.1, !6049, !DIExpression(), !18803)
  %i.q = sub nsw i64 0, %i.o, !dbg !18892
  %i.r = getelementptr inbounds [48 x i8], ptr %.sroa.017.1, i64 %i.q, !dbg !18893 ; 3 uses
    #dbg_value(ptr %i.r, !18822, !DIExpression(), !18859)
  %i.s = add i64 %.sroa.1019.029, -1, !dbg !18894 ; 2 uses
    #dbg_value(i64 %i.s, !18818, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18857)
    #dbg_value(ptr %i.r, !18819, !DIExpression(), !18860)
    #dbg_value(ptr poison, !18851, !DIExpression(), !18861)
    #dbg_value(ptr poison, !18853, !DIExpression(), !18862)
    #dbg_value(ptr %i.r, !18838, !DIExpression(), !18850)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -48, !dbg !18895 ; 3 uses
    #dbg_value(ptr %i.t, !18863, !DIExpression(), !18866)
    #dbg_value(ptr %i.t, !18867, !DIExpression(), !18870)
    #dbg_value(ptr %i.t, !6088, !DIExpression(), !18807)
    #dbg_value(ptr %i.t, !6093, !DIExpression(), !18809)
    #dbg_value(ptr %i.t, !6098, !DIExpression(), !18811)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.d, !dbg !18896

bb.d:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9next_implKb0_EB1B_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.t, !6103, !DIExpression(), !18813)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %.body.i unwind label %bb.e, !dbg !18897

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !18896
  unreachable, !dbg !18896

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9next_implKb0_EB1B_.exit
    #dbg_value(ptr %i.t, !6103, !DIExpression(), !18815)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit unwind label %bb.f, !dbg !18898

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !18899

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 -24, !dbg !18899
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #25
          to label %bb.h unwind label %bb.g, !dbg !18899

bb.g:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !18899
  unreachable, !dbg !18899

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !18899

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -24, !dbg !18899
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z), !dbg !18899
    #dbg_value(ptr %.sroa.017.1, !18818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18857)
    #dbg_value(ptr %.sroa.6.1, !18818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18857)
    #dbg_value(i16 %i.p, !18818, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18857)
    #dbg_value(i64 %i.s, !18818, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18857)
    #dbg_value(ptr undef, !18821, !DIExpression(), !18826)
  %i.aa = icmp eq i64 %i.s, 0, !dbg !18877
  br i1 %i.aa, label %.loopexit, label %bb.c, !dbg !18877
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 16, 689) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 !dbg !18906 {
bb.a:
    #dbg_value(ptr poison, !19041, !DIExpression(), !19052)
    #dbg_value(i64 %1, !19042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19052)
    #dbg_value(i64 16, !19042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19052)
    #dbg_value(i64 %2, !19043, !DIExpression(), !19052)
    #dbg_value(i1 %3, !19044, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19052)
    #dbg_value(i8 -1, !19053, !DIExpression(), !19058)
    #dbg_value(i8 -1, !19061, !DIExpression(), !19066)
    #dbg_value(i8 -1, !19067, !DIExpression(), !19072)
  %i.a = icmp eq i64 %2, 0, !dbg !19201
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !19201

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !dbg !19202
  br label %bb.o, !dbg !19203

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %2, !19073, !DIExpression(), !18922)
    #dbg_value(i64 %2, !19090, !DIExpression(), !18928)
    #dbg_value(i64 %2, !19100, !DIExpression(), !18931)
    #dbg_value(i64 %1, !19076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18922)
    #dbg_value(i64 16, !19076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18922)
    #dbg_value(i64 8, !19094, !DIExpression(), !18928)
    #dbg_value(i64 8, !19102, !DIExpression(), !18931)
    #dbg_value(i64 1, !19105, !DIExpression(), !18941)
  %i.b = icmp ult i64 %2, 15, !dbg !19204
  br i1 %i.b, label %bb.f, label %bb.d, !dbg !19204

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951, !dbg !19205
    #dbg_value(i1 %i.c, !19096, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18942)
    #dbg_value(i1 %i.c, !19117, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18945)
    #dbg_value(i64 poison, !19095, !DIExpression(), !18942)
  br i1 %i.c, label %bb.l, label %bb.e, !dbg !19206, !prof !3824

bb.e:                                             ; preds = %bb.d
    #dbg_value(i64 %2, !19095, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !18942)
    #dbg_value(i64 poison, !19085, !DIExpression(), !18946)
    #dbg_value(i64 poison, !19114, !DIExpression(), !18947)
    #dbg_value(i64 poison, !19110, !DIExpression(), !18948)
    #dbg_value(i64 poison, !19106, !DIExpression(), !18941)
    #dbg_value(i64 poison, !19111, !DIExpression(), !18949)
    #dbg_value(i64 poison, !19121, !DIExpression(), !18952)
    #dbg_value(i64 poison, !19125, !DIExpression(), !18955)
  %i.d = shl nuw i64 %2, 3, !dbg !19205
    #dbg_value(i64 %i.d, !19095, !DIExpression(), !18942)
  %i.e = udiv i64 %i.d, 7, !dbg !19207
    #dbg_value(i64 %i.e, !19085, !DIExpression(), !18946)
    #dbg_value(i64 %i.e, !19114, !DIExpression(), !18947)
    #dbg_value(i64 %i.e, !19110, !DIExpression(), !18948)
    #dbg_value(i64 %i.e, !19106, !DIExpression(), !18941)
  %i.f = add nsw i64 %i.e, -1, !dbg !19208
    #dbg_value(i64 %i.f, !19111, !DIExpression(), !18949)
    #dbg_value(i64 %i.f, !19121, !DIExpression(), !18952)
    #dbg_value(i64 %i.f, !19125, !DIExpression(), !18955)
  %i.g = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false), !dbg !19209
  %i.h = sub nuw nsw i64 64, %i.g, !dbg !19210
    #dbg_value(i64 %i.h, !19112, !DIExpression(), !18956)
  %i.i = shl nuw nsw i64 1, %i.h, !dbg !19211
    #dbg_value(i64 %i.i, !19115, !DIExpression(), !18957)
    #dbg_value(i64 %i.i, !19088, !DIExpression(), !18958)
    #dbg_value(i64 %1, !19127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18963)
    #dbg_value(i64 %1, !19134, !DIExpression(), !18968)
    #dbg_value(i64 %1, !19090, !DIExpression(), !18970)
    #dbg_value(i64 %1, !19100, !DIExpression(), !18972)
    #dbg_value(i64 16, !19127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18963)
    #dbg_value(i64 %i.i, !19130, !DIExpression(), !18963)
    #dbg_value(i64 %i.i, !19135, !DIExpression(), !18968)
    #dbg_value(i64 %i.i, !19091, !DIExpression(), !18970)
    #dbg_value(i64 %i.i, !19101, !DIExpression(), !18972)
    #dbg_value(i1 poison, !19098, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18973)
    #dbg_value(i1 poison, !19117, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18975)
    #dbg_value(i64 poison, !19097, !DIExpression(), !18973)
  br label %bb.g, !dbg !19212

bb.f:                                             ; preds = %bb.c
    #dbg_value(i64 %1, !19127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18977)
    #dbg_value(i64 %1, !19134, !DIExpression(), !18979)
    #dbg_value(i64 %1, !19090, !DIExpression(), !18981)
    #dbg_value(i64 %1, !19100, !DIExpression(), !18983)
    #dbg_value(i64 3, !19082, !DIExpression(), !18984)
    #dbg_value(i64 poison, !19083, !DIExpression(), !18985)
  %i.j = icmp samesign ult i64 %2, 4, !dbg !19213
  %i.k = and i64 %2, 8, !dbg !19213
  %..i = add nuw nsw i64 %i.k, 8, !dbg !19213
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i, !dbg !19213
    #dbg_value(i64 16, !19127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18977)
    #dbg_value(i64 %.sroa.03.0.i, !19130, !DIExpression(), !18977)
    #dbg_value(i64 %.sroa.03.0.i, !19135, !DIExpression(), !18979)
    #dbg_value(i64 %.sroa.03.0.i, !19091, !DIExpression(), !18981)
    #dbg_value(i64 %.sroa.03.0.i, !19101, !DIExpression(), !18983)
    #dbg_value(i1 false, !19117, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18987)
  br label %bb.g, !dbg !19214

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
    #dbg_value(i64 1, !19144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19168)
    #dbg_value(ptr poison, !19164, !DIExpression(), !19169)
    #dbg_value(ptr poison, !19170, !DIExpression(), !19175)
    #dbg_value(i64 %.sroa.4.0.i.ph, !19144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19168)
    #dbg_value(i64 %.sroa.4.0.i.ph, !19045, !DIExpression(), !19176)
    #dbg_value(i64 %.sroa.4.0.i.ph, !6140, !DIExpression(), !18997)
    #dbg_value(ptr poison, !6142, !DIExpression(), !18997)
    #dbg_value(ptr poison, !6161, !DIExpression(), !18999)
    #dbg_value(i64 %1, !6143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18997)
    #dbg_value(i64 16, !6143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18997)
    #dbg_value(i1 %3, !6144, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18997)
    #dbg_value(i64 %1, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19001)
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19001)
    #dbg_value(i64 %.sroa.4.0.i.ph, !4163, !DIExpression(), !19001)
    #dbg_value(i64 %.sroa.4.0.i.ph, !4175, !DIExpression(), !19003)
    #dbg_value(i64 %.sroa.4.0.i.ph, !4180, !DIExpression(), !19005)
    #dbg_value(i64 %1, !4164, !DIExpression(), !19006)
    #dbg_value(i64 %1, !4176, !DIExpression(), !19003)
    #dbg_value(i64 %1, !4186, !DIExpression(), !19005)
    #dbg_value(i64 16, !4165, !DIExpression(), !19006)
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 16, 689) %1, i64 %.sroa.4.0.i.ph), !dbg !19215 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1, !dbg !19215
    #dbg_value(i1 %i.m, !4178, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19007)
    #dbg_value(i1 %i.m, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19009)
    #dbg_value(i64 poison, !4177, !DIExpression(), !19007)
  br i1 %i.m, label %bb.j, label %bb.h, !dbg !19216, !prof !3824

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0, !dbg !19215 ; 2 uses
    #dbg_value(i64 %i.n, !4177, !DIExpression(), !19007)
    #dbg_value(i64 %i.n, !4190, !DIExpression(), !19011)
    #dbg_value(i64 15, !4191, !DIExpression(), !19011)
  %i.o = icmp ugt i64 %i.n, -16, !dbg !19217
    #dbg_value(i1 %i.o, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19013)
  br i1 %i.o, label %bb.j, label %bb.i, !dbg !19218, !prof !3824

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15, !dbg !19217
  %i.q = and i64 %i.p, -16, !dbg !19219           ; 3 uses
    #dbg_value(i64 %i.q, !4166, !DIExpression(), !19014)
    #dbg_value(i64 %i.q, !4190, !DIExpression(), !19016)
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16, !dbg !19220 ; 2 uses
    #dbg_value(i64 %i.r, !4191, !DIExpression(), !19016)
  %i.s = add i64 %i.r, %i.q, !dbg !19221          ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q, !dbg !19221
    #dbg_value(i1 %i.t, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19018)
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u, !dbg !19222
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !19222, !prof !6181

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
    #dbg_value(i64 16, !6145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19019)
    #dbg_value(i64 16, !6178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18999)
    #dbg_value(i64 %i.s, !6145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19019)
    #dbg_value(i64 %i.s, !6178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18999)
    #dbg_value(i64 %i.q, !6146, !DIExpression(), !19019)
    #dbg_value(i64 %i.q, !6182, !DIExpression(), !19021)
    #dbg_value(ptr poison, !6185, !DIExpression(), !19023)
    #dbg_value(ptr poison, !6201, !DIExpression(), !19025)
    #dbg_value(i64 16, !6199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19023)
    #dbg_value(i64 16, !6205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19025)
    #dbg_value(i64 %i.s, !6199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19023)
    #dbg_value(i64 %i.s, !6205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19025)
    #dbg_value(i8 0, !6206, !DIExpression(), !19025)
    #dbg_value(i64 16, !6208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19027)
    #dbg_value(i64 16, !6228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19029)
    #dbg_value(i64 %i.s, !6208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19027)
    #dbg_value(i64 %i.s, !6228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19029)
    #dbg_value(i1 false, !6212, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19027)
    #dbg_value(i64 %i.s, !6213, !DIExpression(), !19030)
  %i.v = icmp eq i64 %i.s, 0, !dbg !19223
  br i1 %i.v, label %bb.n, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i, !dbg !19223

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !dbg !19224, !noalias !19177
  %i.w = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !dbg !19225, !noalias !19177 ; 2 uses
  %i.x = icmp eq ptr %i.w, null, !dbg !19226
  br i1 %i.x, label %bb.k, label %bb.n, !dbg !19227

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !19228, !noalias !19177
  br label %bb.m, !dbg !19229

bb.k:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i
  %i.z = tail call { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.s), !dbg !19230, !noalias !19177
  br label %bb.m, !dbg !19231

bb.l:                                             ; preds = %bb.d
    #dbg_value(i64 0, !19144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19168)
    #dbg_value(i64 poison, !19144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19168)
    #dbg_value(ptr poison, !19164, !DIExpression(), !19169)
    #dbg_value(ptr poison, !19170, !DIExpression(), !19175)
  %i.aa = tail call { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !19232 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0, !dbg !19232
  %i.ac = extractvalue { i64, i64 } %i.aa, 1, !dbg !19232
    #dbg_value(i64 %i.ab, !19046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19178)
    #dbg_value(i64 %i.ab, !19179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19190)
    #dbg_value(i64 %i.ac, !19046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19178)
    #dbg_value(i64 %i.ac, !19179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19190)
    #dbg_value(i64 %i.ab, !19183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19191)
    #dbg_value(i64 %i.ac, !19183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19191)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19233
  store i64 %i.ab, ptr %i.ad, align 8, !dbg !19233
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19233
  store i64 %i.ac, ptr %i.ae, align 8, !dbg !19233
  store ptr null, ptr %0, align 8, !dbg !19233
  br label %bb.o, !dbg !19234

bb.m:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { i64, i64 } [ %i.z, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0, !dbg !19235
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1, !dbg !19235
    #dbg_value(i64 %.sroa.7.0.ph, !19049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19193)
    #dbg_value(i64 %.sroa.7.0.ph, !19179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19196)
    #dbg_value(i64 %.sroa.12.0.ph, !19049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19193)
    #dbg_value(i64 %.sroa.12.0.ph, !19179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19196)
    #dbg_value(i64 %.sroa.7.0.ph, !19184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19197)
    #dbg_value(i64 %.sroa.12.0.ph, !19184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19197)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19236
  store i64 %.sroa.7.0.ph, ptr %i.af, align 8, !dbg !19236
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19236
  store i64 %.sroa.12.0.ph, ptr %i.ag, align 8, !dbg !19236
  store ptr null, ptr %0, align 8, !dbg !19236
  br label %bb.o, !dbg !19237

bb.n:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i9.i = phi ptr [ %i.w, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
    #dbg_value(i64 %.sroa.4.0.i.ph, !6140, !DIExpression(), !18997)
    #dbg_value(i64 %i.q, !6182, !DIExpression(), !19021)
    #dbg_value(i64 %i.q, !6146, !DIExpression(), !19019)
    #dbg_value(ptr %.sroa.0.0.i.i9.i, !6147, !DIExpression(), !19036)
    #dbg_value(ptr %.sroa.0.0.i.i9.i, !6183, !DIExpression(), !19021)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i, i64 %i.q, !dbg !19238 ; 2 uses
    #dbg_value(ptr %i.ah, !6153, !DIExpression(), !19037)
  %i.ai = add nsw i64 %.sroa.4.0.i.ph, -1, !dbg !19239 ; 2 uses
    #dbg_value(i64 %i.ai, !6232, !DIExpression(), !19039)
  %i.aj = icmp samesign ult i64 %.sroa.4.0.i.ph, 9, !dbg !19240
  %i.ak = lshr i64 %.sroa.4.0.i.ph, 3, !dbg !19240
  %i.al = mul nuw nsw i64 %i.ak, 7, !dbg !19240
  %.sroa.07.0.i = select i1 %i.aj, i64 %i.ai, i64 %i.al, !dbg !19240
    #dbg_value(i64 %.sroa.07.0.i, !6232, !DIExpression(), !19039)
    #dbg_value(ptr %i.ah, !19048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19199)
    #dbg_value(i64 %i.ai, !19048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19199)
    #dbg_value(i64 %.sroa.07.0.i, !19048, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19199)
    #dbg_value(i64 0, !19048, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19199)
    #dbg_value(i64 %i.r, !19063, !DIExpression(), !19066)
    #dbg_value(i64 %i.r, !19069, !DIExpression(), !19072)
    #dbg_value(ptr %i.ah, !19059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19200)
    #dbg_value(ptr %i.ah, !19054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19058)
    #dbg_value(i64 %i.r, !19059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19200)
    #dbg_value(i64 %i.r, !19054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19058)
    #dbg_value(ptr %i.ah, !19062, !DIExpression(), !19066)
    #dbg_value(ptr %i.ah, !19068, !DIExpression(), !19072)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ah, i8 -1, i64 %i.r, i1 false), !dbg !19241
  store ptr %i.ah, ptr %0, align 8, !dbg !19242
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19242
  store i64 %i.ai, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !19242
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19242
  store i64 %.sroa.07.0.i, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !19242
end_hunk_0
