Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.06?download=true
inline.NumInlined: 882
inline.NumDeleted: 338
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9040), !dbg !9068
    #dbg_value(ptr %0, !3727, !DIExpression(), !8786)
    #dbg_value(ptr %0, !3837, !DIExpression(), !8788)
    #dbg_value(ptr %0, !3861, !DIExpression(), !8790)
    #dbg_value(ptr %0, !3867, !DIExpression(), !8792)
    #dbg_value(ptr %0, !3878, !DIExpression(), !8794)
    #dbg_value(ptr %0, !3885, !DIExpression(), !8796)
    #dbg_value(ptr %0, !3891, !DIExpression(), !8798)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !8786)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !8788)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !8786)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !8788)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8786)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8786)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8786)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8788)
    #dbg_value(i64 40, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8786)
    #dbg_value(i64 40, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8788)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8786)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8788)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !8799)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !8801)
    #dbg_value(i64 0, !3875, !DIExpression(), !8792)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9069, !noalias !9041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9070, !noalias !9041
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 40, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !9070
  %i.v = load ptr, ptr %i.a, align 8, !dbg !9071, !noalias !9041, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !9071
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9072
  %i.y = load i64, ptr %i.x, align 8, !dbg !9072, !noalias !9041 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9072
  %i.aa = load i64, ptr %i.z, align 8, !dbg !9072, !noalias !9041 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !9073

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9074, !noalias !9041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9075, !noalias !9041
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !9076

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !9075, !noalias !9042
  resume { ptr, i32 } %i.ab, !dbg !9077

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9078
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !9078, !noalias !9041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9074, !noalias !9041
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8804)
    #dbg_value(i64 40, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8804)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8804)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8804)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8804)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !8804)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !8804)
  store ptr %i.e, ptr %i.b, align 8, !dbg !9079, !noalias !9041
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9079 ; 2 uses
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9079, !noalias !9041
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9079 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9079, !noalias !9041
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9079 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9079, !noalias !9041
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9079 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9079, !noalias !9041
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9079 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9079, !noalias !9041
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9079 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9079, !noalias !9041
    #dbg_value(ptr poison, !3865, !DIExpression(), !8805)
    #dbg_value(ptr poison, !3935, !DIExpression(), !8807)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !8810)
    #dbg_value(ptr poison, !3967, !DIExpression(), !8811)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !8813)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !8814)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !8815)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !9080, !alias.scope !9043, !noalias !9044, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9045)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9045)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !9045)
    #dbg_value(ptr undef, !3804, !DIExpression(), !8768)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !9081
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !9081

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !9082, !alias.scope !9043, !noalias !9044, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !8805)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !8807)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !9083
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !8815)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !9045)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !9084
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9045)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !9085
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9045)
  br label %.preheader, !dbg !9081

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9045)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9045)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9045)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8817)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !8819)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !9086
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !9087

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9045)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !8821)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !9088 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !8823)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !9089
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !8826)
    #dbg_value(ptr poison, !4051, !DIExpression(), !8827)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !8829)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !8830)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !8831)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !9090
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !9091 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9045)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !9092    ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9045)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9045)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8817)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !8819)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !9086
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !9087

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !9093, !alias.scope !9043, !noalias !9044
  br label %._crit_edge31, !dbg !9093

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !9093 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8832)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8832)
  %i.am = sub i64 %i.aa, %i.al, !dbg !9094
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9094, !noalias !9041
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9095, !noalias !9041
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8833)
    #dbg_value(ptr %0, !4054, !DIExpression(), !8835)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !8835)
    #dbg_value(ptr %0, !4060, !DIExpression(), !8837)
    #dbg_value(ptr %0, !4066, !DIExpression(), !8839)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !8837)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !8839)
    #dbg_value(i64 1, !4064, !DIExpression(), !8837)
    #dbg_value(i64 1, !4071, !DIExpression(), !8839)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8840)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8840)
    #dbg_value(i64 32, !4073, !DIExpression(), !8841)
    #dbg_value(i64 32, !4074, !DIExpression(), !8842)
    #dbg_value(ptr %0, !4085, !DIExpression(), !8844)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !8844)
    #dbg_value(i64 32, !4089, !DIExpression(), !8844)
    #dbg_value(i64 32, !4090, !DIExpression(), !8845)
    #dbg_value(i64 0, !4092, !DIExpression(), !8846)
    #dbg_value(i64 4, !4091, !DIExpression(), !8847)
    #dbg_value(i64 4, !4093, !DIExpression(), !8848)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !9096, !noalias !9042

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !9097, !noalias !9042
  unreachable, !dbg !9097

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !9046), !dbg !9075
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !8852)
  call void @llvm.experimental.noalias.scope.decl(metadata !9047), !dbg !9098, !noalias !9042
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !8856)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9099, !alias.scope !9048, !noalias !9042 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9099, !alias.scope !9048, !noalias !9042 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9099, !alias.scope !9048, !noalias !9042, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !8858)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_value(ptr poison, !4112, !DIExpression(), !8858)
    #dbg_value(ptr poison, !4116, !DIExpression(), !8860)
    #dbg_value(ptr poison, !4121, !DIExpression(), !8862)
    #dbg_value(ptr poison, !4130, !DIExpression(), !8864)
    #dbg_value(ptr poison, !4154, !DIExpression(), !8866)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !9100
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !9101

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9099, !alias.scope !9048, !noalias !9042
    #dbg_value(ptr poison, !4125, !DIExpression(), !8862)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8862)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8864)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8862)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8864)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !9102
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8868)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8868)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !8868)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !8870)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !8872)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !8873)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !8870)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !8872)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !8873)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !9103 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8875)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !8877)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !9104
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !8877)
  %i.as = add i64 %i.ar, %i.aq, !dbg !9105        ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !9105
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8879)
  call void @llvm.assume(i1 %i.at), !dbg !9106, !noalias !9042
  %i.au = sub i64 0, %.val1.i.i, !dbg !9107
  %i.av = and i64 %i.as, %i.au, !dbg !9108        ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !8880)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !8882)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !9109
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !8882)
  %i.ax = add i64 %i.aw, %i.av, !dbg !9110        ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !9110
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8884)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !9111, !noalias !9042
  call void @llvm.assume(i1 %i.ba), !dbg !9111, !noalias !9042
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8886)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8887)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8886)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8887)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8886)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8887)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !9112
  call void @llvm.assume(i1 %i.bb), !dbg !9113, !noalias !9042
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8888)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8889)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8888)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8889)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !8889)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !8891)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !9042
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !8891)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8888)
    #dbg_value(ptr poison, !4207, !DIExpression(), !8893)
    #dbg_value(ptr poison, !4214, !DIExpression(), !8895)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8893)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8895)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8897)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8899)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8893)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8895)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8897)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8899)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8893)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8895)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8897)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8899)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !9114
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !9114

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !9115
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8899)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8897)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8895)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8893)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8888)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !9116
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !8888)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !8893)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !8895)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !8897)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !8899)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !9117, !noalias !9049
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !9118

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9075, !noalias !9041
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !9076

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !9119 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !9119 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !9119
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !8900)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !8902)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !8904)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !8906)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !9120
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !9121
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !9122
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !8907)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !8909)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !9123
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9045)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !8910)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !9124 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8832)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8832)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !9125    ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9045)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !8911)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !8794)
  call void @llvm.experimental.noalias.scope.decl(metadata !9050), !dbg !9126
    #dbg_value(ptr poison, !4254, !DIExpression(DW_OP_deref, DW_OP_deref), !8915)
    #dbg_value(ptr %0, !4258, !DIExpression(), !8915)
    #dbg_value(ptr %0, !4261, !DIExpression(), !8917)
    #dbg_value(ptr %0, !4277, !DIExpression(), !8919)
    #dbg_value(i64 %i.bj, !4259, !DIExpression(), !8915)
    #dbg_value(i64 %i.bj, !4270, !DIExpression(), !8917)
    #dbg_value(i64 %i.bj, !4282, !DIExpression(), !8921)
    #dbg_value(i64 %i.bj, !4290, !DIExpression(), !8923)
    #dbg_value(i64 1, !4294, !DIExpression(), !8927)
  %i.bl = load ptr, ptr %0, align 8, !dbg !9127, !alias.scope !9050, !noalias !9051, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !4286, !DIExpression(), !8921)
    #dbg_value(ptr %i.bl, !4293, !DIExpression(), !8923)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !9128
  %i.bn = getelementptr inbounds [40 x i8], ptr %i.bl, i64 %i.bm, !dbg !9129
    #dbg_value(ptr poison, !4306, !DIExpression(), !8929)
    #dbg_value(ptr poison, !4300, !DIExpression(), !8930)
    #dbg_value(ptr %i.bn, !4293, !DIExpression(), !8927)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -40, !dbg !9130
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !9131, !noalias !9052, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !4310, !DIExpression(DW_OP_deref), !8932)
    #dbg_value(ptr %i.bo, !4313, !DIExpression(), !8932)
    #dbg_value(ptr %.val.i, !4318, !DIExpression(), !8934)
    #dbg_value(ptr %i.bo, !4322, !DIExpression(), !8934)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.f, !dbg !9132 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !8935)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !8937)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !8939)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8940)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8942)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8943)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8945)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8947)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8949)
    #dbg_value(ptr poison, !4349, !DIExpression(), !8952)
    #dbg_value(ptr poison, !4362, !DIExpression(), !8953)
    #dbg_value(ptr poison, !4368, !DIExpression(), !8955)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !8953)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8956)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8956)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !9133 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !9134
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !9135, !noalias !9053
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !9136
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !9136 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !9137
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9138, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !9133
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !9136
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !8967)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !8968)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !8970)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !8972)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !9139
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !9140
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8973)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8973)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !9141
  %i.bw = and i64 %i.bv, %i.y, !dbg !9141         ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8974)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8974)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !8976)
    #dbg_value(ptr poison, !4413, !DIExpression(), !8976)
    #dbg_value(ptr poison, !4415, !DIExpression(), !8978)
    #dbg_value(ptr poison, !4421, !DIExpression(), !8980)
    #dbg_value(ptr poison, !4421, !DIExpression(), !8982)
    #dbg_value(i64 0, !4422, !DIExpression(), !8982)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !8978)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !9142
  %i.by = load i8, ptr %i.bx, align 1, !dbg !9143, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !9144
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8986)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9145, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !8988)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !9146
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !8990)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !8992)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !8993)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !8994)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !9147
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !9147 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !8996)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !9148
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !9149
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !9149
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8998)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8998)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !9150
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !8976)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9151

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5tests10StoredTestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8974)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8974)
    #dbg_value(ptr undef, !4349, !DIExpression(), !8952)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !8999)
  %i.cf = add i64 %i.ce, 16, !dbg !9152           ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8956)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !9153
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8956)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !9133 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8956)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !8955)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !9134
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !9000)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !9001)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !9002)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !9003)
    #dbg_value(ptr undef, !4375, !DIExpression(), !9003)
    #dbg_value(i64 16, !4376, !DIExpression(), !9003)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !9135, !noalias !9053
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !9002)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !9004)
    #dbg_value(ptr poison, !4394, !DIExpression(), !9005)
    #dbg_value(ptr poison, !4395, !DIExpression(), !9005)
    #dbg_value(ptr poison, !4396, !DIExpression(), !9005)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !9006)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9007)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9008)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9009)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !9136
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !9136 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !8967)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !9137
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9138, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !8976)
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9485), !dbg !9513
    #dbg_value(ptr %0, !3727, !DIExpression(), !9231)
    #dbg_value(ptr %0, !3837, !DIExpression(), !9233)
    #dbg_value(ptr %0, !3861, !DIExpression(), !9235)
    #dbg_value(ptr %0, !3867, !DIExpression(), !9237)
    #dbg_value(ptr %0, !3878, !DIExpression(), !9239)
    #dbg_value(ptr %0, !3885, !DIExpression(), !9241)
    #dbg_value(ptr %0, !3891, !DIExpression(), !9243)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !9231)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !9233)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !9231)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !9233)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9231)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9231)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9231)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9233)
    #dbg_value(i64 48, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9231)
    #dbg_value(i64 48, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9233)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9231)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9233)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !9244)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !9246)
    #dbg_value(i64 0, !3875, !DIExpression(), !9237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9514, !noalias !9486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9515, !noalias !9486
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 48, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !9515
  %i.v = load ptr, ptr %i.a, align 8, !dbg !9516, !noalias !9486, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !9516
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9517
  %i.y = load i64, ptr %i.x, align 8, !dbg !9517, !noalias !9486 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9517
  %i.aa = load i64, ptr %i.z, align 8, !dbg !9517, !noalias !9486 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !9518

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9519, !noalias !9486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9520, !noalias !9486
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !9521

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !9520, !noalias !9487
  resume { ptr, i32 } %i.ab, !dbg !9522

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9523
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !9523, !noalias !9486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9519, !noalias !9486
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9249)
    #dbg_value(i64 48, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9249)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9249)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9249)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9249)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9249)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !9249)
  store ptr %i.e, ptr %i.b, align 8, !dbg !9524, !noalias !9486
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9524 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9524, !noalias !9486
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9524 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9524, !noalias !9486
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9524 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9524, !noalias !9486
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9524 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9524, !noalias !9486
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9524 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9524, !noalias !9486
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9524 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9524, !noalias !9486
    #dbg_value(ptr poison, !3865, !DIExpression(), !9250)
    #dbg_value(ptr poison, !3935, !DIExpression(), !9252)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !9255)
    #dbg_value(ptr poison, !3967, !DIExpression(), !9256)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9258)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9259)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9260)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !9525, !alias.scope !9488, !noalias !9489, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9490)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !9490)
    #dbg_value(ptr undef, !3804, !DIExpression(), !9213)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !9526
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !9526

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !9527, !alias.scope !9488, !noalias !9489, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !9250)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !9252)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !9528
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9260)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !9490)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !9529
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9490)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !9530
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9490)
  br label %.preheader, !dbg !9526

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9490)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9490)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9262)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !9264)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !9531
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !9532

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !9266)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !9533 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !9268)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !9534
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !9271)
    #dbg_value(ptr poison, !4051, !DIExpression(), !9272)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9274)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9275)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9276)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !9535
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !9536 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9490)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !9537    ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9490)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9262)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !9264)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !9531
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !9532

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !9538, !alias.scope !9488, !noalias !9489
  br label %._crit_edge31, !dbg !9538

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !9538 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9277)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9277)
  %i.am = sub i64 %i.aa, %i.al, !dbg !9539
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9539, !noalias !9486
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9540, !noalias !9486
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9278)
    #dbg_value(ptr %0, !4054, !DIExpression(), !9280)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !9280)
    #dbg_value(ptr %0, !4060, !DIExpression(), !9282)
    #dbg_value(ptr %0, !4066, !DIExpression(), !9284)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !9282)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !9284)
    #dbg_value(i64 1, !4064, !DIExpression(), !9282)
    #dbg_value(i64 1, !4071, !DIExpression(), !9284)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9285)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9285)
    #dbg_value(i64 32, !4073, !DIExpression(), !9286)
    #dbg_value(i64 32, !4074, !DIExpression(), !9287)
    #dbg_value(ptr %0, !4085, !DIExpression(), !9289)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !9289)
    #dbg_value(i64 32, !4089, !DIExpression(), !9289)
    #dbg_value(i64 32, !4090, !DIExpression(), !9290)
    #dbg_value(i64 0, !4092, !DIExpression(), !9291)
    #dbg_value(i64 4, !4091, !DIExpression(), !9292)
    #dbg_value(i64 4, !4093, !DIExpression(), !9293)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !9541, !noalias !9487

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !9542, !noalias !9487
  unreachable, !dbg !9542

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !9491), !dbg !9520
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !9297)
  call void @llvm.experimental.noalias.scope.decl(metadata !9492), !dbg !9543, !noalias !9487
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !9301)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9544, !alias.scope !9493, !noalias !9487 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9544, !alias.scope !9493, !noalias !9487 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9544, !alias.scope !9493, !noalias !9487, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !9303)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !9303)
    #dbg_value(ptr poison, !4112, !DIExpression(), !9303)
    #dbg_value(ptr poison, !4116, !DIExpression(), !9305)
    #dbg_value(ptr poison, !4121, !DIExpression(), !9307)
    #dbg_value(ptr poison, !4130, !DIExpression(), !9309)
    #dbg_value(ptr poison, !4154, !DIExpression(), !9311)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !9545
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !9546

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9544, !alias.scope !9493, !noalias !9487
    #dbg_value(ptr poison, !4125, !DIExpression(), !9307)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9307)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9309)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9307)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9309)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !9547
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9313)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9313)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !9313)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !9315)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !9317)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !9318)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !9315)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !9317)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !9318)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !9548 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9320)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !9322)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !9549
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !9322)
  %i.as = add i64 %i.ar, %i.aq, !dbg !9550        ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !9550
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9324)
  call void @llvm.assume(i1 %i.at), !dbg !9551, !noalias !9487
  %i.au = sub i64 0, %.val1.i.i, !dbg !9552
  %i.av = and i64 %i.as, %i.au, !dbg !9553        ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !9325)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !9327)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !9554
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !9327)
  %i.ax = add i64 %i.aw, %i.av, !dbg !9555        ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !9555
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9329)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !9556, !noalias !9487
  call void @llvm.assume(i1 %i.ba), !dbg !9556, !noalias !9487
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9331)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9332)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9331)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9332)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9331)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9332)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !9557
  call void @llvm.assume(i1 %i.bb), !dbg !9558, !noalias !9487
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9333)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9334)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9333)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9334)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !9334)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !9336)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !9487
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !9336)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9333)
    #dbg_value(ptr poison, !4207, !DIExpression(), !9338)
    #dbg_value(ptr poison, !4214, !DIExpression(), !9340)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9338)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9340)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9342)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9344)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9338)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9340)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9342)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9344)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9338)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9340)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9342)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9344)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !9559
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !9559

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !9560
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9344)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9342)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9340)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9338)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9333)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !9561
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !9333)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !9338)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !9340)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !9342)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !9344)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !9562, !noalias !9494
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !9563

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9520, !noalias !9486
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !9521

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !9564 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !9564 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !9564
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !9345)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !9347)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !9349)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !9351)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !9565
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !9566
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !9567
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !9352)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !9354)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !9568
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9490)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !9355)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !9569 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9277)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9277)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !9570    ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9490)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !9356)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !9239)
  call void @llvm.experimental.noalias.scope.decl(metadata !9495), !dbg !9571
    #dbg_value(ptr poison, !4499, !DIExpression(DW_OP_deref, DW_OP_deref), !9360)
    #dbg_value(ptr %0, !4503, !DIExpression(), !9360)
    #dbg_value(ptr %0, !4506, !DIExpression(), !9362)
    #dbg_value(ptr %0, !4522, !DIExpression(), !9364)
    #dbg_value(i64 %i.bj, !4504, !DIExpression(), !9360)
    #dbg_value(i64 %i.bj, !4515, !DIExpression(), !9362)
    #dbg_value(i64 %i.bj, !4527, !DIExpression(), !9366)
    #dbg_value(i64 %i.bj, !4535, !DIExpression(), !9368)
    #dbg_value(i64 1, !4539, !DIExpression(), !9372)
  %i.bl = load ptr, ptr %0, align 8, !dbg !9572, !alias.scope !9495, !noalias !9496, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !4531, !DIExpression(), !9366)
    #dbg_value(ptr %i.bl, !4538, !DIExpression(), !9368)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !9573
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %i.bm, !dbg !9574
    #dbg_value(ptr poison, !4551, !DIExpression(), !9374)
    #dbg_value(ptr poison, !4545, !DIExpression(), !9375)
    #dbg_value(ptr %i.bn, !4538, !DIExpression(), !9372)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48, !dbg !9575
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !9576, !noalias !9497, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !4553, !DIExpression(DW_OP_deref), !9377)
    #dbg_value(ptr %i.bo, !4556, !DIExpression(), !9377)
    #dbg_value(ptr %.val.i, !4560, !DIExpression(), !9379)
    #dbg_value(ptr %i.bo, !4561, !DIExpression(), !9379)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.f, !dbg !9577 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !9380)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !9382)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !9384)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9385)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9387)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9388)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9390)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9392)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9394)
    #dbg_value(ptr poison, !4349, !DIExpression(), !9397)
    #dbg_value(ptr poison, !4362, !DIExpression(), !9398)
    #dbg_value(ptr poison, !4368, !DIExpression(), !9400)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !9398)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9401)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9401)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !9578 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !9579
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !9580, !noalias !9498
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !9581
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !9581 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !9582
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9583, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !9578
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !9581
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !9412)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !9413)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !9415)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !9417)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !9584
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !9585
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9418)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9418)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !9586
  %i.bw = and i64 %i.bv, %i.y, !dbg !9586         ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9419)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9419)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !9421)
    #dbg_value(ptr poison, !4413, !DIExpression(), !9421)
    #dbg_value(ptr poison, !4415, !DIExpression(), !9423)
    #dbg_value(ptr poison, !4421, !DIExpression(), !9425)
    #dbg_value(ptr poison, !4421, !DIExpression(), !9427)
    #dbg_value(i64 0, !4422, !DIExpression(), !9427)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !9423)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !9587
  %i.by = load i8, ptr %i.bx, align 1, !dbg !9588, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !9589
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9431)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9590, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !9433)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !9591
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !9435)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9437)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9438)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9439)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !9592
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !9592 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !9441)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !9593
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !9594
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !9594
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9443)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9443)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !9595
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !9421)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9596

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera7filters12StoredFilterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9419)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9419)
    #dbg_value(ptr undef, !4349, !DIExpression(), !9397)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !9444)
  %i.cf = add i64 %i.ce, 16, !dbg !9597           ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9401)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !9598
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9401)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !9578 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9401)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !9400)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !9579
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !9445)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !9446)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !9447)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !9448)
    #dbg_value(ptr undef, !4375, !DIExpression(), !9448)
    #dbg_value(i64 16, !4376, !DIExpression(), !9448)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !9580, !noalias !9498
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !9447)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !9449)
    #dbg_value(ptr poison, !4394, !DIExpression(), !9450)
    #dbg_value(ptr poison, !4395, !DIExpression(), !9450)
    #dbg_value(ptr poison, !4396, !DIExpression(), !9450)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !9451)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9452)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9453)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9454)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !9581
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !9581 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !9412)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !9582
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9583, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !9421)
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9930), !dbg !9958
    #dbg_value(ptr %0, !3727, !DIExpression(), !9676)
    #dbg_value(ptr %0, !3837, !DIExpression(), !9678)
    #dbg_value(ptr %0, !3861, !DIExpression(), !9680)
    #dbg_value(ptr %0, !3867, !DIExpression(), !9682)
    #dbg_value(ptr %0, !3878, !DIExpression(), !9684)
    #dbg_value(ptr %0, !3885, !DIExpression(), !9686)
    #dbg_value(ptr %0, !3891, !DIExpression(), !9688)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !9676)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !9678)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !9676)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !9678)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9676)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9676)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9676)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9678)
    #dbg_value(i64 48, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9676)
    #dbg_value(i64 48, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9678)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9676)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9678)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !9689)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !9691)
    #dbg_value(i64 0, !3875, !DIExpression(), !9682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9959, !noalias !9931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9960, !noalias !9931
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 48, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !9960
  %i.v = load ptr, ptr %i.a, align 8, !dbg !9961, !noalias !9931, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !9961
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9962
  %i.y = load i64, ptr %i.x, align 8, !dbg !9962, !noalias !9931 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9962
  %i.aa = load i64, ptr %i.z, align 8, !dbg !9962, !noalias !9931 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !9963

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9964, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9965, !noalias !9931
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !9966

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !9965, !noalias !9932
  resume { ptr, i32 } %i.ab, !dbg !9967

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9968
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !9968, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9964, !noalias !9931
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9694)
    #dbg_value(i64 48, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9694)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9694)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9694)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9694)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9694)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !9694)
  store ptr %i.e, ptr %i.b, align 8, !dbg !9969, !noalias !9931
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9969 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9969, !noalias !9931
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9969 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9969, !noalias !9931
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9969 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9969, !noalias !9931
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9969 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9969, !noalias !9931
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9969 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9969, !noalias !9931
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9969 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9969, !noalias !9931
    #dbg_value(ptr poison, !3865, !DIExpression(), !9695)
    #dbg_value(ptr poison, !3935, !DIExpression(), !9697)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !9700)
    #dbg_value(ptr poison, !3967, !DIExpression(), !9701)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9703)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9704)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9705)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !9970, !alias.scope !9933, !noalias !9934, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9935)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9935)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9935)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !9935)
    #dbg_value(ptr undef, !3804, !DIExpression(), !9658)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !9971
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !9971

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !9972, !alias.scope !9933, !noalias !9934, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !9695)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !9697)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9935)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !9973
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9705)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !9935)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !9974
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9935)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !9975
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9935)
  br label %.preheader, !dbg !9971

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9935)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9935)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9935)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9935)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9707)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !9709)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !9976
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !9977

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9935)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9935)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !9711)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !9978 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9935)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !9713)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !9979
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !9716)
    #dbg_value(ptr poison, !4051, !DIExpression(), !9717)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9719)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9720)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9721)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !9980
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !9981 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9935)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !9982    ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9935)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9935)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9935)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9707)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !9709)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !9976
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !9977

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !9983, !alias.scope !9933, !noalias !9934
  br label %._crit_edge31, !dbg !9983

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !9983 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9722)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9722)
  %i.am = sub i64 %i.aa, %i.al, !dbg !9984
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9984, !noalias !9931
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9985, !noalias !9931
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9723)
    #dbg_value(ptr %0, !4054, !DIExpression(), !9725)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !9725)
    #dbg_value(ptr %0, !4060, !DIExpression(), !9727)
    #dbg_value(ptr %0, !4066, !DIExpression(), !9729)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !9727)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !9729)
    #dbg_value(i64 1, !4064, !DIExpression(), !9727)
    #dbg_value(i64 1, !4071, !DIExpression(), !9729)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9730)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9730)
    #dbg_value(i64 32, !4073, !DIExpression(), !9731)
    #dbg_value(i64 32, !4074, !DIExpression(), !9732)
    #dbg_value(ptr %0, !4085, !DIExpression(), !9734)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !9734)
    #dbg_value(i64 32, !4089, !DIExpression(), !9734)
    #dbg_value(i64 32, !4090, !DIExpression(), !9735)
    #dbg_value(i64 0, !4092, !DIExpression(), !9736)
    #dbg_value(i64 4, !4091, !DIExpression(), !9737)
    #dbg_value(i64 4, !4093, !DIExpression(), !9738)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !9986, !noalias !9932

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !9987, !noalias !9932
  unreachable, !dbg !9987

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !9936), !dbg !9965
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !9742)
  call void @llvm.experimental.noalias.scope.decl(metadata !9937), !dbg !9988, !noalias !9932
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !9746)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9989, !alias.scope !9938, !noalias !9932 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9989, !alias.scope !9938, !noalias !9932 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9989, !alias.scope !9938, !noalias !9932, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !9748)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !9748)
    #dbg_value(ptr poison, !4112, !DIExpression(), !9748)
    #dbg_value(ptr poison, !4116, !DIExpression(), !9750)
    #dbg_value(ptr poison, !4121, !DIExpression(), !9752)
    #dbg_value(ptr poison, !4130, !DIExpression(), !9754)
    #dbg_value(ptr poison, !4154, !DIExpression(), !9756)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !9990
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !9991

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9989, !alias.scope !9938, !noalias !9932
    #dbg_value(ptr poison, !4125, !DIExpression(), !9752)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9752)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9754)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9752)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9754)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !9992
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9758)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9758)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !9758)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !9760)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !9762)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !9763)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !9760)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !9762)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !9763)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !9993 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9765)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !9767)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !9994
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !9767)
  %i.as = add i64 %i.ar, %i.aq, !dbg !9995        ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !9995
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9769)
  call void @llvm.assume(i1 %i.at), !dbg !9996, !noalias !9932
  %i.au = sub i64 0, %.val1.i.i, !dbg !9997
  %i.av = and i64 %i.as, %i.au, !dbg !9998        ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !9770)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !9772)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !9999
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !9772)
  %i.ax = add i64 %i.aw, %i.av, !dbg !10000       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !10000
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9774)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !10001, !noalias !9932
  call void @llvm.assume(i1 %i.ba), !dbg !10001, !noalias !9932
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9776)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9777)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9776)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9777)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9776)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9777)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !10002
  call void @llvm.assume(i1 %i.bb), !dbg !10003, !noalias !9932
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9778)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9779)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9778)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9779)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !9779)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !9781)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !9932
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !9781)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9778)
    #dbg_value(ptr poison, !4207, !DIExpression(), !9783)
    #dbg_value(ptr poison, !4214, !DIExpression(), !9785)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9783)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9785)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9787)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9789)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9783)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9785)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9787)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9789)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9783)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9785)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9787)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9789)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !10004
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !10004

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !10005
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9789)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9787)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9785)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9783)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9778)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !10006
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !9778)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !9783)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !9785)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !9787)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !9789)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !10007, !noalias !9939
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !10008

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9965, !noalias !9931
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !9966

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !10009 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !10009 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !10009
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !9790)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !9792)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !9794)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !9796)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !10010
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !10011
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !10012
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !9797)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !9799)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !10013
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !9935)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !9800)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !10014 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9722)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9722)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !10015   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9935)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !9801)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !9684)
  call void @llvm.experimental.noalias.scope.decl(metadata !9940), !dbg !10016
    #dbg_value(ptr poison, !4599, !DIExpression(DW_OP_deref, DW_OP_deref), !9805)
    #dbg_value(ptr %0, !4603, !DIExpression(), !9805)
    #dbg_value(ptr %0, !4606, !DIExpression(), !9807)
    #dbg_value(ptr %0, !4622, !DIExpression(), !9809)
    #dbg_value(i64 %i.bj, !4604, !DIExpression(), !9805)
    #dbg_value(i64 %i.bj, !4615, !DIExpression(), !9807)
    #dbg_value(i64 %i.bj, !4627, !DIExpression(), !9811)
    #dbg_value(i64 %i.bj, !4635, !DIExpression(), !9813)
    #dbg_value(i64 1, !4639, !DIExpression(), !9817)
  %i.bl = load ptr, ptr %0, align 8, !dbg !10017, !alias.scope !9940, !noalias !9941, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !4631, !DIExpression(), !9811)
    #dbg_value(ptr %i.bl, !4638, !DIExpression(), !9813)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !10018
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %i.bm, !dbg !10019
    #dbg_value(ptr poison, !4651, !DIExpression(), !9819)
    #dbg_value(ptr poison, !4645, !DIExpression(), !9820)
    #dbg_value(ptr %i.bn, !4638, !DIExpression(), !9817)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48, !dbg !10020
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !10021, !noalias !9942, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !4653, !DIExpression(DW_OP_deref), !9822)
    #dbg_value(ptr %i.bo, !4656, !DIExpression(), !9822)
    #dbg_value(ptr %.val.i, !4660, !DIExpression(), !9824)
    #dbg_value(ptr %i.bo, !4661, !DIExpression(), !9824)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.f, !dbg !10022 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !9825)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !9827)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !9829)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9830)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9832)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9833)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9835)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9837)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9839)
    #dbg_value(ptr poison, !4349, !DIExpression(), !9842)
    #dbg_value(ptr poison, !4362, !DIExpression(), !9843)
    #dbg_value(ptr poison, !4368, !DIExpression(), !9845)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !9843)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9846)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9846)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !10023 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !10024
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !10025, !noalias !9943
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !10026
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !10026 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !10027
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !10028, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !10023
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !10026
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !9857)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !9858)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !9860)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !9862)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !10029
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !10030
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !10031
  %i.bw = and i64 %i.bv, %i.y, !dbg !10031        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9864)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9864)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !9866)
    #dbg_value(ptr poison, !4413, !DIExpression(), !9866)
    #dbg_value(ptr poison, !4415, !DIExpression(), !9868)
    #dbg_value(ptr poison, !4421, !DIExpression(), !9870)
    #dbg_value(ptr poison, !4421, !DIExpression(), !9872)
    #dbg_value(i64 0, !4422, !DIExpression(), !9872)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !9868)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !10032
  %i.by = load i8, ptr %i.bx, align 1, !dbg !10033, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !10034
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9876)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !10035, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !9878)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !10036
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !9880)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9882)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9883)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9884)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !10037
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !10037 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !9886)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !10038
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !10039
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !10039
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9888)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9888)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !10040
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !9866)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !10041

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera9functions14StoredFunctionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9864)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9864)
    #dbg_value(ptr undef, !4349, !DIExpression(), !9842)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !9889)
  %i.cf = add i64 %i.ce, 16, !dbg !10042          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9846)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !10043
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9846)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !10023 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9846)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !9845)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !10024
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !9890)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !9891)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !9892)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !9893)
    #dbg_value(ptr undef, !4375, !DIExpression(), !9893)
    #dbg_value(i64 16, !4376, !DIExpression(), !9893)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !10025, !noalias !9943
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !9892)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !9894)
    #dbg_value(ptr poison, !4394, !DIExpression(), !9895)
    #dbg_value(ptr poison, !4395, !DIExpression(), !9895)
    #dbg_value(ptr poison, !4396, !DIExpression(), !9895)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !9896)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !9897)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !9898)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !9899)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !10026
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !10026 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !9857)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !10027
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !10028, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !9866)
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs5yXxDE1DkoT_4tera:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10780), !dbg !10808
    #dbg_value(ptr %0, !3727, !DIExpression(), !10526)
    #dbg_value(ptr %0, !3837, !DIExpression(), !10528)
    #dbg_value(ptr %0, !3861, !DIExpression(), !10530)
    #dbg_value(ptr %0, !3867, !DIExpression(), !10532)
    #dbg_value(ptr %0, !3878, !DIExpression(), !10534)
    #dbg_value(ptr %0, !3885, !DIExpression(), !10536)
    #dbg_value(ptr %0, !3891, !DIExpression(), !10538)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !10526)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !10528)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !10526)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !10528)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10526)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10526)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10526)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10528)
    #dbg_value(i64 48, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10526)
    #dbg_value(i64 48, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10528)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10526)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10528)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !10539)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !10541)
    #dbg_value(i64 0, !3875, !DIExpression(), !10532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10809, !noalias !10781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10810, !noalias !10781
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 48, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !10810
  %i.v = load ptr, ptr %i.a, align 8, !dbg !10811, !noalias !10781, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !10811
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10812
  %i.y = load i64, ptr %i.x, align 8, !dbg !10812, !noalias !10781 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10812
  %i.aa = load i64, ptr %i.z, align 8, !dbg !10812, !noalias !10781 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !10813

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10814, !noalias !10781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10815, !noalias !10781
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !10816

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !10815, !noalias !10782
  resume { ptr, i32 } %i.ab, !dbg !10817

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !10818
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !10818, !noalias !10781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10814, !noalias !10781
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10544)
    #dbg_value(i64 48, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10544)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10544)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !10544)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !10544)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !10544)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !10544)
  store ptr %i.e, ptr %i.b, align 8, !dbg !10819, !noalias !10781
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10819 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !10819, !noalias !10781
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10819 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !10819, !noalias !10781
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10819 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !10819, !noalias !10781
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !10819 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !10819, !noalias !10781
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !10819 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !10819, !noalias !10781
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !10819 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !10819, !noalias !10781
    #dbg_value(ptr poison, !3865, !DIExpression(), !10545)
    #dbg_value(ptr poison, !3935, !DIExpression(), !10547)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !10550)
    #dbg_value(ptr poison, !3967, !DIExpression(), !10551)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !10553)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !10554)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10555)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !10820, !alias.scope !10783, !noalias !10784, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10785)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10785)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10785)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !10785)
    #dbg_value(ptr undef, !3804, !DIExpression(), !10508)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !10821
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !10821

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !10822, !alias.scope !10783, !noalias !10784, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !10545)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !10547)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10785)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !10823
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10555)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !10785)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !10824
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !10785)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !10825
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !10785)
  br label %.preheader, !dbg !10821

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10785)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10785)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10785)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !10785)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10557)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !10559)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !10826
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !10827

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10785)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10785)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !10561)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !10828 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10785)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !10563)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !10829
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !10566)
    #dbg_value(ptr poison, !4051, !DIExpression(), !10567)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !10569)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !10570)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10571)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !10830
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !10831 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !10785)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !10832   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10785)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10785)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !10785)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10557)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !10559)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !10826
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !10827

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !10833, !alias.scope !10783, !noalias !10784
  br label %._crit_edge31, !dbg !10833

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !10833 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10572)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10572)
  %i.am = sub i64 %i.aa, %i.al, !dbg !10834
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !10834, !noalias !10781
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !10835, !noalias !10781
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10573)
    #dbg_value(ptr %0, !4054, !DIExpression(), !10575)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !10575)
    #dbg_value(ptr %0, !4060, !DIExpression(), !10577)
    #dbg_value(ptr %0, !4066, !DIExpression(), !10579)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !10577)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !10579)
    #dbg_value(i64 1, !4064, !DIExpression(), !10577)
    #dbg_value(i64 1, !4071, !DIExpression(), !10579)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10580)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10580)
    #dbg_value(i64 32, !4073, !DIExpression(), !10581)
    #dbg_value(i64 32, !4074, !DIExpression(), !10582)
    #dbg_value(ptr %0, !4085, !DIExpression(), !10584)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !10584)
    #dbg_value(i64 32, !4089, !DIExpression(), !10584)
    #dbg_value(i64 32, !4090, !DIExpression(), !10585)
    #dbg_value(i64 0, !4092, !DIExpression(), !10586)
    #dbg_value(i64 4, !4091, !DIExpression(), !10587)
    #dbg_value(i64 4, !4093, !DIExpression(), !10588)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !10836, !noalias !10782

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !10837, !noalias !10782
  unreachable, !dbg !10837

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !10786), !dbg !10815
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !10592)
  call void @llvm.experimental.noalias.scope.decl(metadata !10787), !dbg !10838, !noalias !10782
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !10596)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !10839, !alias.scope !10788, !noalias !10782 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !10839, !alias.scope !10788, !noalias !10782 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !10839, !alias.scope !10788, !noalias !10782, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !10598)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !10598)
    #dbg_value(ptr poison, !4112, !DIExpression(), !10598)
    #dbg_value(ptr poison, !4116, !DIExpression(), !10600)
    #dbg_value(ptr poison, !4121, !DIExpression(), !10602)
    #dbg_value(ptr poison, !4130, !DIExpression(), !10604)
    #dbg_value(ptr poison, !4154, !DIExpression(), !10606)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !10840
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !10841

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !10839, !alias.scope !10788, !noalias !10782
    #dbg_value(ptr poison, !4125, !DIExpression(), !10602)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10602)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10604)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10602)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10604)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !10842
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10608)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10608)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !10608)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !10610)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !10612)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !10613)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !10610)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !10612)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !10613)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !10843 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10615)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !10617)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !10844
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !10617)
  %i.as = add i64 %i.ar, %i.aq, !dbg !10845       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !10845
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10619)
  call void @llvm.assume(i1 %i.at), !dbg !10846, !noalias !10782
  %i.au = sub i64 0, %.val1.i.i, !dbg !10847
  %i.av = and i64 %i.as, %i.au, !dbg !10848       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !10620)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !10622)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !10849
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !10622)
  %i.ax = add i64 %i.aw, %i.av, !dbg !10850       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !10850
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10624)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !10851, !noalias !10782
  call void @llvm.assume(i1 %i.ba), !dbg !10851, !noalias !10782
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10626)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10627)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10626)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10627)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10626)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10627)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !10852
  call void @llvm.assume(i1 %i.bb), !dbg !10853, !noalias !10782
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10628)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10629)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10628)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10629)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !10629)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !10631)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !10782
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !10631)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10628)
    #dbg_value(ptr poison, !4207, !DIExpression(), !10633)
    #dbg_value(ptr poison, !4214, !DIExpression(), !10635)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10633)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10635)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10637)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10639)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10633)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10635)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10637)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10639)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10633)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10635)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10637)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10639)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !10854
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !10854

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !10855
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10639)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10637)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10635)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10633)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10628)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !10856
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !10628)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !10633)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !10635)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !10637)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !10639)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !10857, !noalias !10789
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !10858

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10815, !noalias !10781
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !10816

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !10859 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !10859 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !10859
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !10640)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !10642)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !10644)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !10646)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !10860
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !10861
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !10862
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !10647)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !10649)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !10863
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !10785)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !10650)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !10864 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10572)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10572)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !10865   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10785)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !10651)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !10534)
  call void @llvm.experimental.noalias.scope.decl(metadata !10790), !dbg !10866
    #dbg_value(ptr poison, !4830, !DIExpression(DW_OP_deref, DW_OP_deref), !10655)
    #dbg_value(ptr %0, !4834, !DIExpression(), !10655)
    #dbg_value(ptr %0, !4837, !DIExpression(), !10657)
    #dbg_value(ptr %0, !4848, !DIExpression(), !10659)
    #dbg_value(i64 %i.bj, !4835, !DIExpression(), !10655)
    #dbg_value(i64 %i.bj, !4841, !DIExpression(), !10657)
    #dbg_value(i64 %i.bj, !4853, !DIExpression(), !10661)
    #dbg_value(i64 %i.bj, !4857, !DIExpression(), !10663)
    #dbg_value(i64 1, !4859, !DIExpression(), !10667)
  %i.bl = load ptr, ptr %0, align 8, !dbg !10867, !alias.scope !10790, !noalias !10791, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !4854, !DIExpression(), !10661)
    #dbg_value(ptr %i.bl, !4858, !DIExpression(), !10663)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !10868
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %i.bm, !dbg !10869
    #dbg_value(ptr poison, !4863, !DIExpression(), !10669)
    #dbg_value(ptr poison, !4861, !DIExpression(), !10670)
    #dbg_value(ptr %i.bn, !4858, !DIExpression(), !10667)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48, !dbg !10870
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !10871, !noalias !10792, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !4865, !DIExpression(DW_OP_deref), !10672)
    #dbg_value(ptr %i.bo, !4868, !DIExpression(), !10672)
    #dbg_value(ptr %.val.i, !4872, !DIExpression(), !10674)
    #dbg_value(ptr %i.bo, !4875, !DIExpression(), !10674)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !10872 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !10675)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !10677)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !10679)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10680)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10682)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10683)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10685)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10687)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10689)
    #dbg_value(ptr poison, !4349, !DIExpression(), !10692)
    #dbg_value(ptr poison, !4362, !DIExpression(), !10693)
    #dbg_value(ptr poison, !4368, !DIExpression(), !10695)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !10693)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10696)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10696)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !10873 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !10874
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !10875, !noalias !10793
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !10876
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !10876 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !10877
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !10878, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !10873
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %i.cj, %.lr.ph.i ], !dbg !10876
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !10707)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !10708)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !10710)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !10712)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !10879
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !10880
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10713)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10713)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !10881
  %i.bw = and i64 %i.bv, %i.y, !dbg !10881        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10714)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10714)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !10716)
    #dbg_value(ptr poison, !4413, !DIExpression(), !10716)
    #dbg_value(ptr poison, !4415, !DIExpression(), !10718)
    #dbg_value(ptr poison, !4421, !DIExpression(), !10720)
    #dbg_value(ptr poison, !4421, !DIExpression(), !10722)
    #dbg_value(i64 0, !4422, !DIExpression(), !10722)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !10718)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !10882
  %i.by = load i8, ptr %i.bx, align 1, !dbg !10883, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !10884
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10726)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !10885, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !10728)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !10886
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !10730)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !10732)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !10733)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10734)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !10887
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !10887 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10736)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !10888
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !10889
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !10889
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10738)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10738)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !10890
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !10716)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !10891

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10714)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10714)
    #dbg_value(ptr undef, !4349, !DIExpression(), !10692)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !10739)
  %i.cf = add i64 %i.ce, 16, !dbg !10892          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10696)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !10893
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10696)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !10873 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10696)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !10695)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !10874
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !10740)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !10741)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !10742)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !10743)
    #dbg_value(ptr undef, !4375, !DIExpression(), !10743)
    #dbg_value(i64 16, !4376, !DIExpression(), !10743)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !10875, !noalias !10793
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !10742)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !10744)
    #dbg_value(ptr poison, !4394, !DIExpression(), !10745)
    #dbg_value(ptr poison, !4395, !DIExpression(), !10745)
    #dbg_value(ptr poison, !4396, !DIExpression(), !10745)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !10746)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !10747)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !10748)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10749)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !10876
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !10876 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10707)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !10877
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !10878, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !10716)
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBU_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1M_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11225), !dbg !11253
    #dbg_value(ptr %0, !3727, !DIExpression(), !10971)
    #dbg_value(ptr %0, !3837, !DIExpression(), !10973)
    #dbg_value(ptr %0, !3861, !DIExpression(), !10975)
    #dbg_value(ptr %0, !3867, !DIExpression(), !10977)
    #dbg_value(ptr %0, !3878, !DIExpression(), !10979)
    #dbg_value(ptr %0, !3885, !DIExpression(), !10981)
    #dbg_value(ptr %0, !3891, !DIExpression(), !10983)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !10971)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !10973)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !10971)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !10973)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10971)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10971)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10971)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10973)
    #dbg_value(i64 48, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10971)
    #dbg_value(i64 48, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10973)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10971)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10973)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !10984)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !10986)
    #dbg_value(i64 0, !3875, !DIExpression(), !10977)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11254, !noalias !11226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11255, !noalias !11226
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 48, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !11255
  %i.v = load ptr, ptr %i.a, align 8, !dbg !11256, !noalias !11226, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !11256
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11257
  %i.y = load i64, ptr %i.x, align 8, !dbg !11257, !noalias !11226 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11257
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11257, !noalias !11226 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !11258

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11259, !noalias !11226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11260, !noalias !11226
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !11261

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !11260, !noalias !11227
  resume { ptr, i32 } %i.ab, !dbg !11262

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11263
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !11263, !noalias !11226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11259, !noalias !11226
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10989)
    #dbg_value(i64 48, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10989)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10989)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !10989)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !10989)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !10989)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !10989)
  store ptr %i.e, ptr %i.b, align 8, !dbg !11264, !noalias !11226
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11264 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11264, !noalias !11226
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11264 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11264, !noalias !11226
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11264 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !11264, !noalias !11226
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11264 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11264, !noalias !11226
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !11264 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11264, !noalias !11226
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11264 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11264, !noalias !11226
    #dbg_value(ptr poison, !3865, !DIExpression(), !10990)
    #dbg_value(ptr poison, !3935, !DIExpression(), !10992)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !10995)
    #dbg_value(ptr poison, !3967, !DIExpression(), !10996)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !10998)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !10999)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11000)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !11265, !alias.scope !11228, !noalias !11229, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11230)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !11230)
    #dbg_value(ptr undef, !3804, !DIExpression(), !10953)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !11266
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !11266

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !11267, !alias.scope !11228, !noalias !11229, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !10990)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !10992)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !11268
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11000)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !11230)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !11269
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11230)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !11270
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11230)
  br label %.preheader, !dbg !11266

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11230)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11230)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11002)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !11004)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !11271
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !11272

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !11006)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !11273 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !11008)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !11274
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !11011)
    #dbg_value(ptr poison, !4051, !DIExpression(), !11012)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11014)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11015)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11016)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !11275
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !11276 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11230)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !11277   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11230)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11002)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !11004)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !11271
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !11272

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !11278, !alias.scope !11228, !noalias !11229
  br label %._crit_edge31, !dbg !11278

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !11278 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11017)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11017)
  %i.am = sub i64 %i.aa, %i.al, !dbg !11279
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11279, !noalias !11226
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11280, !noalias !11226
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11018)
    #dbg_value(ptr %0, !4054, !DIExpression(), !11020)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !11020)
    #dbg_value(ptr %0, !4060, !DIExpression(), !11022)
    #dbg_value(ptr %0, !4066, !DIExpression(), !11024)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !11022)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !11024)
    #dbg_value(i64 1, !4064, !DIExpression(), !11022)
    #dbg_value(i64 1, !4071, !DIExpression(), !11024)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11025)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11025)
    #dbg_value(i64 32, !4073, !DIExpression(), !11026)
    #dbg_value(i64 32, !4074, !DIExpression(), !11027)
    #dbg_value(ptr %0, !4085, !DIExpression(), !11029)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !11029)
    #dbg_value(i64 32, !4089, !DIExpression(), !11029)
    #dbg_value(i64 32, !4090, !DIExpression(), !11030)
    #dbg_value(i64 0, !4092, !DIExpression(), !11031)
    #dbg_value(i64 4, !4091, !DIExpression(), !11032)
    #dbg_value(i64 4, !4093, !DIExpression(), !11033)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !11281, !noalias !11227

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !11282, !noalias !11227
  unreachable, !dbg !11282

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !11231), !dbg !11260
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !11037)
  call void @llvm.experimental.noalias.scope.decl(metadata !11232), !dbg !11283, !noalias !11227
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !11041)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11284, !alias.scope !11233, !noalias !11227 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !11284, !alias.scope !11233, !noalias !11227 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11284, !alias.scope !11233, !noalias !11227, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !11043)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !11043)
    #dbg_value(ptr poison, !4112, !DIExpression(), !11043)
    #dbg_value(ptr poison, !4116, !DIExpression(), !11045)
    #dbg_value(ptr poison, !4121, !DIExpression(), !11047)
    #dbg_value(ptr poison, !4130, !DIExpression(), !11049)
    #dbg_value(ptr poison, !4154, !DIExpression(), !11051)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !11285
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !11286

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11284, !alias.scope !11233, !noalias !11227
    #dbg_value(ptr poison, !4125, !DIExpression(), !11047)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11047)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11049)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11047)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11049)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !11287
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11053)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11053)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !11053)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !11055)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !11057)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !11058)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !11055)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !11057)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !11058)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !11288 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11060)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !11062)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !11289
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !11062)
  %i.as = add i64 %i.ar, %i.aq, !dbg !11290       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !11290
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11064)
  call void @llvm.assume(i1 %i.at), !dbg !11291, !noalias !11227
  %i.au = sub i64 0, %.val1.i.i, !dbg !11292
  %i.av = and i64 %i.as, %i.au, !dbg !11293       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !11065)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !11067)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !11294
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !11067)
  %i.ax = add i64 %i.aw, %i.av, !dbg !11295       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !11295
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11069)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !11296, !noalias !11227
  call void @llvm.assume(i1 %i.ba), !dbg !11296, !noalias !11227
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11071)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11072)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11071)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11072)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11071)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11072)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !11297
  call void @llvm.assume(i1 %i.bb), !dbg !11298, !noalias !11227
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11073)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11074)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11073)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11074)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !11074)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !11076)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !11227
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !11076)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11073)
    #dbg_value(ptr poison, !4207, !DIExpression(), !11078)
    #dbg_value(ptr poison, !4214, !DIExpression(), !11080)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11078)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11080)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11082)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11084)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11078)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11080)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11082)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11084)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11078)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11080)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11082)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11084)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !11299
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !11299

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !11300
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11084)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11082)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11080)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11078)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11073)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !11301
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !11073)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !11078)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !11080)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !11082)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !11084)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !11302, !noalias !11234
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !11303

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11260, !noalias !11226
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !11261

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !11304 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !11304 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !11304
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !11085)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !11087)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !11089)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !11091)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !11305
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !11306
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !11307
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !11092)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !11094)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !11308
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11230)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !11095)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !11309 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11017)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11017)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !11310   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11230)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !11096)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !10979)
  call void @llvm.experimental.noalias.scope.decl(metadata !11235), !dbg !11311
    #dbg_value(ptr poison, !4881, !DIExpression(DW_OP_deref, DW_OP_deref), !11100)
    #dbg_value(ptr %0, !4885, !DIExpression(), !11100)
    #dbg_value(ptr %0, !4888, !DIExpression(), !11102)
    #dbg_value(ptr %0, !4904, !DIExpression(), !11104)
    #dbg_value(i64 %i.bj, !4886, !DIExpression(), !11100)
    #dbg_value(i64 %i.bj, !4897, !DIExpression(), !11102)
    #dbg_value(i64 %i.bj, !4909, !DIExpression(), !11106)
    #dbg_value(i64 %i.bj, !4917, !DIExpression(), !11108)
    #dbg_value(i64 1, !4921, !DIExpression(), !11112)
  %i.bl = load ptr, ptr %0, align 8, !dbg !11312, !alias.scope !11235, !noalias !11236, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !4913, !DIExpression(), !11106)
    #dbg_value(ptr %i.bl, !4920, !DIExpression(), !11108)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !11313
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %i.bm, !dbg !11314
    #dbg_value(ptr poison, !4933, !DIExpression(), !11114)
    #dbg_value(ptr poison, !4927, !DIExpression(), !11115)
    #dbg_value(ptr %i.bn, !4920, !DIExpression(), !11112)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48, !dbg !11315
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !11316, !noalias !11237, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !4935, !DIExpression(DW_OP_deref), !11117)
    #dbg_value(ptr %i.bo, !4938, !DIExpression(), !11117)
    #dbg_value(ptr %.val.i, !4941, !DIExpression(), !11119)
    #dbg_value(ptr %i.bo, !4942, !DIExpression(), !11119)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit unwind label %bb.f, !dbg !11317 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !11120)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !11122)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !11124)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11125)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11127)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11128)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11130)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11132)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11134)
    #dbg_value(ptr poison, !4349, !DIExpression(), !11137)
    #dbg_value(ptr poison, !4362, !DIExpression(), !11138)
    #dbg_value(ptr poison, !4368, !DIExpression(), !11140)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !11138)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11141)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11141)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !11318 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !11319
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !11320, !noalias !11238
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !11321
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !11321 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !11322
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !11323, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !11318
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !11321
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !11152)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !11153)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !11155)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !11157)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !11324
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !11325
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11158)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11158)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !11326
  %i.bw = and i64 %i.bv, %i.y, !dbg !11326        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11159)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11159)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !11161)
    #dbg_value(ptr poison, !4413, !DIExpression(), !11161)
    #dbg_value(ptr poison, !4415, !DIExpression(), !11163)
    #dbg_value(ptr poison, !4421, !DIExpression(), !11165)
    #dbg_value(ptr poison, !4421, !DIExpression(), !11167)
    #dbg_value(i64 0, !4422, !DIExpression(), !11167)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !11163)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !11327
  %i.by = load i8, ptr %i.bx, align 1, !dbg !11328, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !11329
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11171)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !11330, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !11173)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !11331
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !11175)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11177)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11178)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11179)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !11332
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !11332 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !11181)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !11333
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !11334
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !11334
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11183)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11183)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !11335
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !11161)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !11336

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1O_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11159)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11159)
    #dbg_value(ptr undef, !4349, !DIExpression(), !11137)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !11184)
  %i.cf = add i64 %i.ce, 16, !dbg !11337          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11141)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !11338
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11141)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !11318 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11141)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !11140)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !11319
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !11185)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !11186)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !11187)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !11188)
    #dbg_value(ptr undef, !4375, !DIExpression(), !11188)
    #dbg_value(i64 16, !4376, !DIExpression(), !11188)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !11320, !noalias !11238
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !11187)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !11189)
    #dbg_value(ptr poison, !4394, !DIExpression(), !11190)
    #dbg_value(ptr poison, !4395, !DIExpression(), !11190)
    #dbg_value(ptr poison, !4396, !DIExpression(), !11190)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !11191)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11192)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11193)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11194)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !11321
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !11321 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !11152)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !11322
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !11323, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !11161)
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1O_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11670), !dbg !11698
    #dbg_value(ptr %0, !3727, !DIExpression(), !11416)
    #dbg_value(ptr %0, !3837, !DIExpression(), !11418)
    #dbg_value(ptr %0, !3861, !DIExpression(), !11420)
    #dbg_value(ptr %0, !3867, !DIExpression(), !11422)
    #dbg_value(ptr %0, !3878, !DIExpression(), !11424)
    #dbg_value(ptr %0, !3885, !DIExpression(), !11426)
    #dbg_value(ptr %0, !3891, !DIExpression(), !11428)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !11416)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !11418)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !11416)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !11418)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11416)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11416)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11416)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11418)
    #dbg_value(i64 48, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11416)
    #dbg_value(i64 48, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11418)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11416)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11418)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !11429)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !11431)
    #dbg_value(i64 0, !3875, !DIExpression(), !11422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11699, !noalias !11671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11700, !noalias !11671
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 48, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !11700
  %i.v = load ptr, ptr %i.a, align 8, !dbg !11701, !noalias !11671, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !11701
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11702
  %i.y = load i64, ptr %i.x, align 8, !dbg !11702, !noalias !11671 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11702
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11702, !noalias !11671 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !11703

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11704, !noalias !11671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11705, !noalias !11671
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !11706

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !11705, !noalias !11672
  resume { ptr, i32 } %i.ab, !dbg !11707

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11708
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !11708, !noalias !11671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11704, !noalias !11671
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11434)
    #dbg_value(i64 48, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11434)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11434)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11434)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !11434)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !11434)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !11434)
  store ptr %i.e, ptr %i.b, align 8, !dbg !11709, !noalias !11671
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11709 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11709, !noalias !11671
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11709 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11709, !noalias !11671
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11709 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !11709, !noalias !11671
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11709 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11709, !noalias !11671
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !11709 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11709, !noalias !11671
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11709 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11709, !noalias !11671
    #dbg_value(ptr poison, !3865, !DIExpression(), !11435)
    #dbg_value(ptr poison, !3935, !DIExpression(), !11437)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !11440)
    #dbg_value(ptr poison, !3967, !DIExpression(), !11441)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11443)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11444)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11445)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !11710, !alias.scope !11673, !noalias !11674, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11675)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !11675)
    #dbg_value(ptr undef, !3804, !DIExpression(), !11398)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !11711
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !11711

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !11712, !alias.scope !11673, !noalias !11674, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !11435)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !11437)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !11713
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11445)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !11675)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !11714
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11675)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !11715
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11675)
  br label %.preheader, !dbg !11711

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11675)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11675)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11447)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !11449)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !11716
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !11717

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11675)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !11451)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !11718 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !11453)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !11719
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !11456)
    #dbg_value(ptr poison, !4051, !DIExpression(), !11457)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11459)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11460)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11461)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !11720
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !11721 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11675)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !11722   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11675)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11447)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !11449)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !11716
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !11717

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !11723, !alias.scope !11673, !noalias !11674
  br label %._crit_edge31, !dbg !11723

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !11723 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11462)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11462)
  %i.am = sub i64 %i.aa, %i.al, !dbg !11724
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11724, !noalias !11671
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11725, !noalias !11671
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11463)
    #dbg_value(ptr %0, !4054, !DIExpression(), !11465)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !11465)
    #dbg_value(ptr %0, !4060, !DIExpression(), !11467)
    #dbg_value(ptr %0, !4066, !DIExpression(), !11469)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !11467)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !11469)
    #dbg_value(i64 1, !4064, !DIExpression(), !11467)
    #dbg_value(i64 1, !4071, !DIExpression(), !11469)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11470)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11470)
    #dbg_value(i64 32, !4073, !DIExpression(), !11471)
    #dbg_value(i64 32, !4074, !DIExpression(), !11472)
    #dbg_value(ptr %0, !4085, !DIExpression(), !11474)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !11474)
    #dbg_value(i64 32, !4089, !DIExpression(), !11474)
    #dbg_value(i64 32, !4090, !DIExpression(), !11475)
    #dbg_value(i64 0, !4092, !DIExpression(), !11476)
    #dbg_value(i64 4, !4091, !DIExpression(), !11477)
    #dbg_value(i64 4, !4093, !DIExpression(), !11478)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !11726, !noalias !11672

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !11727, !noalias !11672
  unreachable, !dbg !11727

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !11676), !dbg !11705
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !11482)
  call void @llvm.experimental.noalias.scope.decl(metadata !11677), !dbg !11728, !noalias !11672
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !11486)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11729, !alias.scope !11678, !noalias !11672 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !11729, !alias.scope !11678, !noalias !11672 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11729, !alias.scope !11678, !noalias !11672, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !11488)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !11488)
    #dbg_value(ptr poison, !4112, !DIExpression(), !11488)
    #dbg_value(ptr poison, !4116, !DIExpression(), !11490)
    #dbg_value(ptr poison, !4121, !DIExpression(), !11492)
    #dbg_value(ptr poison, !4130, !DIExpression(), !11494)
    #dbg_value(ptr poison, !4154, !DIExpression(), !11496)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !11730
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !11731

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11729, !alias.scope !11678, !noalias !11672
    #dbg_value(ptr poison, !4125, !DIExpression(), !11492)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11492)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11494)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11492)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11494)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !11732
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11498)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11498)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !11498)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !11500)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !11502)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !11503)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !11500)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !11502)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !11503)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !11733 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11505)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !11507)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !11734
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !11507)
  %i.as = add i64 %i.ar, %i.aq, !dbg !11735       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !11735
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11509)
  call void @llvm.assume(i1 %i.at), !dbg !11736, !noalias !11672
  %i.au = sub i64 0, %.val1.i.i, !dbg !11737
  %i.av = and i64 %i.as, %i.au, !dbg !11738       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !11510)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !11512)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !11739
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !11512)
  %i.ax = add i64 %i.aw, %i.av, !dbg !11740       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !11740
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11514)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !11741, !noalias !11672
  call void @llvm.assume(i1 %i.ba), !dbg !11741, !noalias !11672
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11516)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11517)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11516)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11517)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11516)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11517)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !11742
  call void @llvm.assume(i1 %i.bb), !dbg !11743, !noalias !11672
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11518)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11519)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11518)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11519)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !11519)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !11521)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !11672
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !11521)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11518)
    #dbg_value(ptr poison, !4207, !DIExpression(), !11523)
    #dbg_value(ptr poison, !4214, !DIExpression(), !11525)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11523)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11525)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11527)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11529)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11523)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11525)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11527)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11529)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11523)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11525)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11527)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11529)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !11744
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !11744

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !11745
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11529)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11527)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11525)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11523)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11518)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !11746
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !11518)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !11523)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !11525)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !11527)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !11529)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !11747, !noalias !11679
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !11748

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11705, !noalias !11671
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !11706

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !11749 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !11749 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !11749
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !11530)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !11532)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !11534)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !11536)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !11750
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !11751
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !11752
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !11537)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !11539)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !11753
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !11675)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !11540)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !11754 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11462)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11462)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !11755   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11675)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !11541)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !11424)
  call void @llvm.experimental.noalias.scope.decl(metadata !11680), !dbg !11756
    #dbg_value(ptr poison, !4947, !DIExpression(DW_OP_deref, DW_OP_deref), !11545)
    #dbg_value(ptr %0, !4951, !DIExpression(), !11545)
    #dbg_value(ptr %0, !4954, !DIExpression(), !11547)
    #dbg_value(ptr %0, !4970, !DIExpression(), !11549)
    #dbg_value(i64 %i.bj, !4952, !DIExpression(), !11545)
    #dbg_value(i64 %i.bj, !4963, !DIExpression(), !11547)
    #dbg_value(i64 %i.bj, !4975, !DIExpression(), !11551)
    #dbg_value(i64 %i.bj, !4983, !DIExpression(), !11553)
    #dbg_value(i64 1, !4987, !DIExpression(), !11557)
  %i.bl = load ptr, ptr %0, align 8, !dbg !11757, !alias.scope !11680, !noalias !11681, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !4979, !DIExpression(), !11551)
    #dbg_value(ptr %i.bl, !4986, !DIExpression(), !11553)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !11758
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %i.bm, !dbg !11759
    #dbg_value(ptr poison, !4999, !DIExpression(), !11559)
    #dbg_value(ptr poison, !4993, !DIExpression(), !11560)
    #dbg_value(ptr %i.bn, !4986, !DIExpression(), !11557)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48, !dbg !11760
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !11761, !noalias !11682, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5001, !DIExpression(DW_OP_deref), !11562)
    #dbg_value(ptr %i.bo, !5004, !DIExpression(), !11562)
    #dbg_value(ptr %.val.i, !5007, !DIExpression(), !11564)
    #dbg_value(ptr %i.bo, !5008, !DIExpression(), !11564)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit unwind label %bb.f, !dbg !11762 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !11565)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !11567)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !11569)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11570)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11572)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11573)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11575)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11577)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11579)
    #dbg_value(ptr poison, !4349, !DIExpression(), !11582)
    #dbg_value(ptr poison, !4362, !DIExpression(), !11583)
    #dbg_value(ptr poison, !4368, !DIExpression(), !11585)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !11583)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11586)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11586)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !11763 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !11764
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !11765, !noalias !11683
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !11766
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !11766 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !11767
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !11768, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !11763
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !11766
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !11597)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !11598)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !11600)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !11602)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !11769
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !11770
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11603)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11603)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !11771
  %i.bw = and i64 %i.bv, %i.y, !dbg !11771        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11604)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11604)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !11606)
    #dbg_value(ptr poison, !4413, !DIExpression(), !11606)
    #dbg_value(ptr poison, !4415, !DIExpression(), !11608)
    #dbg_value(ptr poison, !4421, !DIExpression(), !11610)
    #dbg_value(ptr poison, !4421, !DIExpression(), !11612)
    #dbg_value(i64 0, !4422, !DIExpression(), !11612)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !11608)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !11772
  %i.by = load i8, ptr %i.bx, align 1, !dbg !11773, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !11774
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11616)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !11775, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !11618)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !11776
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !11620)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11622)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11623)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11624)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !11777
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !11777 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !11626)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !11778
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !11779
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !11779
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11628)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11628)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !11780
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !11606)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !11781

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1Q_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11604)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11604)
    #dbg_value(ptr undef, !4349, !DIExpression(), !11582)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !11629)
  %i.cf = add i64 %i.ce, 16, !dbg !11782          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11586)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !11783
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11586)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !11763 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11586)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !11585)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !11764
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !11630)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !11631)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !11632)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !11633)
    #dbg_value(ptr undef, !4375, !DIExpression(), !11633)
    #dbg_value(i64 16, !4376, !DIExpression(), !11633)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !11765, !noalias !11683
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !11632)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !11634)
    #dbg_value(ptr poison, !4394, !DIExpression(), !11635)
    #dbg_value(ptr poison, !4395, !DIExpression(), !11635)
    #dbg_value(ptr poison, !4396, !DIExpression(), !11635)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !11636)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !11637)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !11638)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !11639)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !11766
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !11766 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !11597)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !11767
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !11768, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !11606)
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBQ_INtNtBU_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtB1B_4hash6random11RandomStateE0EB2M_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12520), !dbg !12548
    #dbg_value(ptr %0, !3727, !DIExpression(), !12266)
    #dbg_value(ptr %0, !3837, !DIExpression(), !12268)
    #dbg_value(ptr %0, !3861, !DIExpression(), !12270)
    #dbg_value(ptr %0, !3867, !DIExpression(), !12272)
    #dbg_value(ptr %0, !3878, !DIExpression(), !12274)
    #dbg_value(ptr %0, !3885, !DIExpression(), !12276)
    #dbg_value(ptr %0, !3891, !DIExpression(), !12278)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !12266)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !12268)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !12266)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !12268)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12266)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12266)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12266)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12268)
    #dbg_value(i64 72, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12266)
    #dbg_value(i64 72, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12268)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12266)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12268)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !12279)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !12281)
    #dbg_value(i64 0, !3875, !DIExpression(), !12272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12549, !noalias !12521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12550, !noalias !12521
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 72, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !12550
  %i.v = load ptr, ptr %i.a, align 8, !dbg !12551, !noalias !12521, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !12551
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12552
  %i.y = load i64, ptr %i.x, align 8, !dbg !12552, !noalias !12521 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12552
  %i.aa = load i64, ptr %i.z, align 8, !dbg !12552, !noalias !12521 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !12553

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12554, !noalias !12521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12555, !noalias !12521
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !12556

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !12555, !noalias !12522
  resume { ptr, i32 } %i.ab, !dbg !12557

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !12558
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !12558, !noalias !12521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12554, !noalias !12521
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12284)
    #dbg_value(i64 72, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12284)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12284)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12284)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12284)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !12284)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12284)
  store ptr %i.e, ptr %i.b, align 8, !dbg !12559, !noalias !12521
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12559 ; 2 uses
  store i64 72, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !12559, !noalias !12521
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12559 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !12559, !noalias !12521
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12559 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !12559, !noalias !12521
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12559 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12559, !noalias !12521
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !12559 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12559, !noalias !12521
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !12559 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12559, !noalias !12521
    #dbg_value(ptr poison, !3865, !DIExpression(), !12285)
    #dbg_value(ptr poison, !3935, !DIExpression(), !12287)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !12290)
    #dbg_value(ptr poison, !3967, !DIExpression(), !12291)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12293)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12294)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12295)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !12560, !alias.scope !12523, !noalias !12524, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12525)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !12525)
    #dbg_value(ptr undef, !3804, !DIExpression(), !12248)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12561
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !12561

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !12562, !alias.scope !12523, !noalias !12524, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !12285)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !12287)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !12563
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12295)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !12525)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !12564
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12525)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !12565
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12525)
  br label %.preheader, !dbg !12561

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12525)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12525)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12297)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !12299)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !12566
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !12567

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12525)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !12301)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !12568 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !12303)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !12569
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !12306)
    #dbg_value(ptr poison, !4051, !DIExpression(), !12307)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12309)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12310)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12311)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !12570
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !12571 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12525)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !12572   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12525)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12297)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !12299)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !12566
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !12567

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !12573, !alias.scope !12523, !noalias !12524
  br label %._crit_edge31, !dbg !12573

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !12573 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12312)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12312)
  %i.am = sub i64 %i.aa, %i.al, !dbg !12574
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12574, !noalias !12521
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12575, !noalias !12521
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12313)
    #dbg_value(ptr %0, !4054, !DIExpression(), !12315)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !12315)
    #dbg_value(ptr %0, !4060, !DIExpression(), !12317)
    #dbg_value(ptr %0, !4066, !DIExpression(), !12319)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !12317)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !12319)
    #dbg_value(i64 1, !4064, !DIExpression(), !12317)
    #dbg_value(i64 1, !4071, !DIExpression(), !12319)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12320)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12320)
    #dbg_value(i64 32, !4073, !DIExpression(), !12321)
    #dbg_value(i64 32, !4074, !DIExpression(), !12322)
    #dbg_value(ptr %0, !4085, !DIExpression(), !12324)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !12324)
    #dbg_value(i64 32, !4089, !DIExpression(), !12324)
    #dbg_value(i64 32, !4090, !DIExpression(), !12325)
    #dbg_value(i64 0, !4092, !DIExpression(), !12326)
    #dbg_value(i64 4, !4091, !DIExpression(), !12327)
    #dbg_value(i64 4, !4093, !DIExpression(), !12328)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !12576, !noalias !12522

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !12577, !noalias !12522
  unreachable, !dbg !12577

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !12526), !dbg !12555
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !12332)
  call void @llvm.experimental.noalias.scope.decl(metadata !12527), !dbg !12578, !noalias !12522
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !12336)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !12579, !alias.scope !12528, !noalias !12522 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !12579, !alias.scope !12528, !noalias !12522 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12579, !alias.scope !12528, !noalias !12522, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !12338)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !12338)
    #dbg_value(ptr poison, !4112, !DIExpression(), !12338)
    #dbg_value(ptr poison, !4116, !DIExpression(), !12340)
    #dbg_value(ptr poison, !4121, !DIExpression(), !12342)
    #dbg_value(ptr poison, !4130, !DIExpression(), !12344)
    #dbg_value(ptr poison, !4154, !DIExpression(), !12346)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !12580
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !12581

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !12579, !alias.scope !12528, !noalias !12522
    #dbg_value(ptr poison, !4125, !DIExpression(), !12342)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12342)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12344)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12342)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12344)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !12582
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12348)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12348)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !12348)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !12350)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !12352)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !12353)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !12350)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !12352)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !12353)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !12583 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12355)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !12357)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !12584
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !12357)
  %i.as = add i64 %i.ar, %i.aq, !dbg !12585       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !12585
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12359)
  call void @llvm.assume(i1 %i.at), !dbg !12586, !noalias !12522
  %i.au = sub i64 0, %.val1.i.i, !dbg !12587
  %i.av = and i64 %i.as, %i.au, !dbg !12588       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !12360)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !12362)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !12589
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !12362)
  %i.ax = add i64 %i.aw, %i.av, !dbg !12590       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !12590
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12364)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !12591, !noalias !12522
  call void @llvm.assume(i1 %i.ba), !dbg !12591, !noalias !12522
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12366)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12367)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12366)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12367)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12366)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12367)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !12592
  call void @llvm.assume(i1 %i.bb), !dbg !12593, !noalias !12522
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12368)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12369)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12368)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12369)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !12369)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !12371)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !12522
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !12371)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12368)
    #dbg_value(ptr poison, !4207, !DIExpression(), !12373)
    #dbg_value(ptr poison, !4214, !DIExpression(), !12375)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12373)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12375)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12377)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12379)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12373)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12375)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12377)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12379)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12373)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12375)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12377)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12379)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !12594
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !12594

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !12595
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12379)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12377)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12375)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12373)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12368)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !12596
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !12368)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !12373)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !12375)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !12377)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !12379)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !12597, !noalias !12529
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !12598

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12555, !noalias !12521
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !12556

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !12599 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !12599 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !12599
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !12380)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !12382)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !12384)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !12386)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !12600
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !12601
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !12602
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !12387)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !12389)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !12603
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12525)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !12390)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !12604 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12312)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12312)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !12605   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12525)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !12391)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !12274)
  call void @llvm.experimental.noalias.scope.decl(metadata !12530), !dbg !12606
    #dbg_value(ptr poison, !5042, !DIExpression(DW_OP_deref, DW_OP_deref), !12395)
    #dbg_value(ptr %0, !5046, !DIExpression(), !12395)
    #dbg_value(ptr %0, !5049, !DIExpression(), !12397)
    #dbg_value(ptr %0, !5060, !DIExpression(), !12399)
    #dbg_value(i64 %i.bj, !5047, !DIExpression(), !12395)
    #dbg_value(i64 %i.bj, !5053, !DIExpression(), !12397)
    #dbg_value(i64 %i.bj, !5065, !DIExpression(), !12401)
    #dbg_value(i64 %i.bj, !5069, !DIExpression(), !12403)
    #dbg_value(i64 1, !5071, !DIExpression(), !12407)
  %i.bl = load ptr, ptr %0, align 8, !dbg !12607, !alias.scope !12530, !noalias !12531, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5066, !DIExpression(), !12401)
    #dbg_value(ptr %i.bl, !5070, !DIExpression(), !12403)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !12608
  %i.bn = getelementptr inbounds [72 x i8], ptr %i.bl, i64 %i.bm, !dbg !12609
    #dbg_value(ptr poison, !5075, !DIExpression(), !12409)
    #dbg_value(ptr poison, !5073, !DIExpression(), !12410)
    #dbg_value(ptr %i.bn, !5070, !DIExpression(), !12407)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -72, !dbg !12610
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !12611, !noalias !12532, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5077, !DIExpression(DW_OP_deref), !12412)
    #dbg_value(ptr %i.bo, !5080, !DIExpression(), !12412)
    #dbg_value(ptr %.val.i, !5083, !DIExpression(), !12414)
    #dbg_value(ptr %i.bo, !5084, !DIExpression(), !12414)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit unwind label %bb.f, !dbg !12612 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !12415)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !12417)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !12419)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12420)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12422)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12423)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12425)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12427)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12429)
    #dbg_value(ptr poison, !4349, !DIExpression(), !12432)
    #dbg_value(ptr poison, !4362, !DIExpression(), !12433)
    #dbg_value(ptr poison, !4368, !DIExpression(), !12435)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !12433)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12436)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12436)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !12613 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !12614
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !12615, !noalias !12533
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !12616
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !12616 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !12617
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !12618, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !12613
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !12616
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !12447)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !12448)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !12450)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !12452)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !12619
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !12620
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12453)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12453)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !12621
  %i.bw = and i64 %i.bv, %i.y, !dbg !12621        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12454)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12454)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !12456)
    #dbg_value(ptr poison, !4413, !DIExpression(), !12456)
    #dbg_value(ptr poison, !4415, !DIExpression(), !12458)
    #dbg_value(ptr poison, !4421, !DIExpression(), !12460)
    #dbg_value(ptr poison, !4421, !DIExpression(), !12462)
    #dbg_value(i64 0, !4422, !DIExpression(), !12462)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !12458)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !12622
  %i.by = load i8, ptr %i.bx, align 1, !dbg !12623, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !12624
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12466)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !12625, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !12468)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !12626
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !12470)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12472)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12473)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12474)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !12627
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !12627 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !12476)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !12628
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !12629
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !12629
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12478)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12478)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !12630
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !12456)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !12631

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBS_INtNtBW_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2O_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12454)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12454)
    #dbg_value(ptr undef, !4349, !DIExpression(), !12432)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !12479)
  %i.cf = add i64 %i.ce, 16, !dbg !12632          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12436)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !12633
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12436)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !12613 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12436)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !12435)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !12614
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !12480)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !12481)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !12482)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !12483)
    #dbg_value(ptr undef, !4375, !DIExpression(), !12483)
    #dbg_value(i64 16, !4376, !DIExpression(), !12483)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !12615, !noalias !12533
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !12482)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !12484)
    #dbg_value(ptr poison, !4394, !DIExpression(), !12485)
    #dbg_value(ptr poison, !4395, !DIExpression(), !12485)
    #dbg_value(ptr poison, !4396, !DIExpression(), !12485)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !12486)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12487)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12488)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12489)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !12616
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !12616 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !12447)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !12617
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !12618, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !12456)
end_hunk_6
begin_hunk_7_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12965), !dbg !12993
    #dbg_value(ptr %0, !3727, !DIExpression(), !12711)
    #dbg_value(ptr %0, !3837, !DIExpression(), !12713)
    #dbg_value(ptr %0, !3861, !DIExpression(), !12715)
    #dbg_value(ptr %0, !3867, !DIExpression(), !12717)
    #dbg_value(ptr %0, !3878, !DIExpression(), !12719)
    #dbg_value(ptr %0, !3885, !DIExpression(), !12721)
    #dbg_value(ptr %0, !3891, !DIExpression(), !12723)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !12711)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !12713)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !12711)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !12713)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12711)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12711)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12711)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12713)
    #dbg_value(i64 72, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12711)
    #dbg_value(i64 72, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12713)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12711)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12713)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !12724)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !12726)
    #dbg_value(i64 0, !3875, !DIExpression(), !12717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12994, !noalias !12966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12995, !noalias !12966
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 72, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !12995
  %i.v = load ptr, ptr %i.a, align 8, !dbg !12996, !noalias !12966, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !12996
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12997
  %i.y = load i64, ptr %i.x, align 8, !dbg !12997, !noalias !12966 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12997
  %i.aa = load i64, ptr %i.z, align 8, !dbg !12997, !noalias !12966 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !12998

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12999, !noalias !12966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13000, !noalias !12966
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !13001

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !13000, !noalias !12967
  resume { ptr, i32 } %i.ab, !dbg !13002

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !13003
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !13003, !noalias !12966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12999, !noalias !12966
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12729)
    #dbg_value(i64 72, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12729)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12729)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12729)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12729)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !12729)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12729)
  store ptr %i.e, ptr %i.b, align 8, !dbg !13004, !noalias !12966
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13004 ; 2 uses
  store i64 72, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13004, !noalias !12966
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13004 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13004, !noalias !12966
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13004 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !13004, !noalias !12966
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !13004 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13004, !noalias !12966
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !13004 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13004, !noalias !12966
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !13004 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13004, !noalias !12966
    #dbg_value(ptr poison, !3865, !DIExpression(), !12730)
    #dbg_value(ptr poison, !3935, !DIExpression(), !12732)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !12735)
    #dbg_value(ptr poison, !3967, !DIExpression(), !12736)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12738)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12739)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12740)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !13005, !alias.scope !12968, !noalias !12969, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12970)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12970)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !12970)
    #dbg_value(ptr undef, !3804, !DIExpression(), !12693)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !13006
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !13006

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !13007, !alias.scope !12968, !noalias !12969, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !12730)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !12732)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !13008
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12740)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !12970)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !13009
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12970)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !13010
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12970)
  br label %.preheader, !dbg !13006

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12970)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12970)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12970)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12742)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !12744)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !13011
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !13012

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12970)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !12746)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !13013 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !12748)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !13014
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !12751)
    #dbg_value(ptr poison, !4051, !DIExpression(), !12752)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12754)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12755)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12756)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !13015
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !13016 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12970)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !13017   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12970)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12970)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12742)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !12744)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !13011
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !13012

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !13018, !alias.scope !12968, !noalias !12969
  br label %._crit_edge31, !dbg !13018

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !13018 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12757)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12757)
  %i.am = sub i64 %i.aa, %i.al, !dbg !13019
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13019, !noalias !12966
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13020, !noalias !12966
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12758)
    #dbg_value(ptr %0, !4054, !DIExpression(), !12760)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !12760)
    #dbg_value(ptr %0, !4060, !DIExpression(), !12762)
    #dbg_value(ptr %0, !4066, !DIExpression(), !12764)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !12762)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !12764)
    #dbg_value(i64 1, !4064, !DIExpression(), !12762)
    #dbg_value(i64 1, !4071, !DIExpression(), !12764)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12765)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12765)
    #dbg_value(i64 32, !4073, !DIExpression(), !12766)
    #dbg_value(i64 32, !4074, !DIExpression(), !12767)
    #dbg_value(ptr %0, !4085, !DIExpression(), !12769)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !12769)
    #dbg_value(i64 32, !4089, !DIExpression(), !12769)
    #dbg_value(i64 32, !4090, !DIExpression(), !12770)
    #dbg_value(i64 0, !4092, !DIExpression(), !12771)
    #dbg_value(i64 4, !4091, !DIExpression(), !12772)
    #dbg_value(i64 4, !4093, !DIExpression(), !12773)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !13021, !noalias !12967

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !13022, !noalias !12967
  unreachable, !dbg !13022

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !12971), !dbg !13000
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !12777)
  call void @llvm.experimental.noalias.scope.decl(metadata !12972), !dbg !13023, !noalias !12967
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !12781)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13024, !alias.scope !12973, !noalias !12967 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !13024, !alias.scope !12973, !noalias !12967 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13024, !alias.scope !12973, !noalias !12967, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !12783)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !12783)
    #dbg_value(ptr poison, !4112, !DIExpression(), !12783)
    #dbg_value(ptr poison, !4116, !DIExpression(), !12785)
    #dbg_value(ptr poison, !4121, !DIExpression(), !12787)
    #dbg_value(ptr poison, !4130, !DIExpression(), !12789)
    #dbg_value(ptr poison, !4154, !DIExpression(), !12791)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !13025
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !13026

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13024, !alias.scope !12973, !noalias !12967
    #dbg_value(ptr poison, !4125, !DIExpression(), !12787)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12787)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12789)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12787)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12789)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !13027
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12793)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12793)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !12793)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !12795)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !12797)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !12798)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !12795)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !12797)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !12798)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !13028 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12800)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !12802)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !13029
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !12802)
  %i.as = add i64 %i.ar, %i.aq, !dbg !13030       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !13030
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12804)
  call void @llvm.assume(i1 %i.at), !dbg !13031, !noalias !12967
  %i.au = sub i64 0, %.val1.i.i, !dbg !13032
  %i.av = and i64 %i.as, %i.au, !dbg !13033       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !12805)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !12807)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !13034
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !12807)
  %i.ax = add i64 %i.aw, %i.av, !dbg !13035       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !13035
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12809)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !13036, !noalias !12967
  call void @llvm.assume(i1 %i.ba), !dbg !13036, !noalias !12967
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12811)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12812)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12811)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12812)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12811)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12812)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !13037
  call void @llvm.assume(i1 %i.bb), !dbg !13038, !noalias !12967
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12813)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12814)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12813)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12814)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !12814)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !12816)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !12967
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !12816)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12813)
    #dbg_value(ptr poison, !4207, !DIExpression(), !12818)
    #dbg_value(ptr poison, !4214, !DIExpression(), !12820)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12818)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12820)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12822)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12824)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12818)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12820)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12822)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12824)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12818)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12820)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12822)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12824)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !13039
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !13039

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !13040
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12824)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12822)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12820)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12818)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12813)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !13041
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !12813)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !12818)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !12820)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !12822)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !12824)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !13042, !noalias !12974
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !13043

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13000, !noalias !12966
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !13001

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !13044 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !13044 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !13044
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !12825)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !12827)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !12829)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !12831)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !13045
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !13046
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !13047
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !12832)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !12834)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !13048
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !12970)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !12835)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !13049 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12757)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12757)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !13050   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12970)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !12836)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !12719)
  call void @llvm.experimental.noalias.scope.decl(metadata !12975), !dbg !13051
    #dbg_value(ptr poison, !5089, !DIExpression(DW_OP_deref, DW_OP_deref), !12840)
    #dbg_value(ptr %0, !5093, !DIExpression(), !12840)
    #dbg_value(ptr %0, !5096, !DIExpression(), !12842)
    #dbg_value(ptr %0, !5112, !DIExpression(), !12844)
    #dbg_value(i64 %i.bj, !5094, !DIExpression(), !12840)
    #dbg_value(i64 %i.bj, !5105, !DIExpression(), !12842)
    #dbg_value(i64 %i.bj, !5117, !DIExpression(), !12846)
    #dbg_value(i64 %i.bj, !5125, !DIExpression(), !12848)
    #dbg_value(i64 1, !5129, !DIExpression(), !12852)
  %i.bl = load ptr, ptr %0, align 8, !dbg !13052, !alias.scope !12975, !noalias !12976, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5121, !DIExpression(), !12846)
    #dbg_value(ptr %i.bl, !5128, !DIExpression(), !12848)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !13053
  %i.bn = getelementptr inbounds [72 x i8], ptr %i.bl, i64 %i.bm, !dbg !13054
    #dbg_value(ptr poison, !5141, !DIExpression(), !12854)
    #dbg_value(ptr poison, !5135, !DIExpression(), !12855)
    #dbg_value(ptr %i.bn, !5128, !DIExpression(), !12852)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -72, !dbg !13055
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !13056, !noalias !12977, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5143, !DIExpression(DW_OP_deref), !12857)
    #dbg_value(ptr %i.bo, !5146, !DIExpression(), !12857)
    #dbg_value(ptr %.val.i, !5149, !DIExpression(), !12859)
    #dbg_value(ptr %i.bo, !5150, !DIExpression(), !12859)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.f, !dbg !13057 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !12860)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !12862)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !12864)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12865)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12867)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12868)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12870)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12872)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12874)
    #dbg_value(ptr poison, !4349, !DIExpression(), !12877)
    #dbg_value(ptr poison, !4362, !DIExpression(), !12878)
    #dbg_value(ptr poison, !4368, !DIExpression(), !12880)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !12878)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12881)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12881)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !13058 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !13059
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !13060, !noalias !12978
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !13061
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !13061 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !13062
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !13063, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !13058
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !13061
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !12892)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !12893)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !12895)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !12897)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !13064
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !13065
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12898)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12898)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !13066
  %i.bw = and i64 %i.bv, %i.y, !dbg !13066        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12899)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !12901)
    #dbg_value(ptr poison, !4413, !DIExpression(), !12901)
    #dbg_value(ptr poison, !4415, !DIExpression(), !12903)
    #dbg_value(ptr poison, !4421, !DIExpression(), !12905)
    #dbg_value(ptr poison, !4421, !DIExpression(), !12907)
    #dbg_value(i64 0, !4422, !DIExpression(), !12907)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !12903)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !13067
  %i.by = load i8, ptr %i.bx, align 1, !dbg !13068, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !13069
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12911)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !13070, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !12913)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !13071
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !12915)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12917)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12918)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12919)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !13072
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !13072 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !12921)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !13073
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !13074
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !13074
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12923)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12923)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !13075
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !12901)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !13076

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12899)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(ptr undef, !4349, !DIExpression(), !12877)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !12924)
  %i.cf = add i64 %i.ce, 16, !dbg !13077          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12881)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !13078
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12881)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !13058 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12881)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !12880)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !13059
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !12925)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !12926)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !12927)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !12928)
    #dbg_value(ptr undef, !4375, !DIExpression(), !12928)
    #dbg_value(i64 16, !4376, !DIExpression(), !12928)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !13060, !noalias !12978
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !12927)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !12929)
    #dbg_value(ptr poison, !4394, !DIExpression(), !12930)
    #dbg_value(ptr poison, !4395, !DIExpression(), !12930)
    #dbg_value(ptr poison, !4396, !DIExpression(), !12930)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !12931)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !12932)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !12933)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !12934)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !13061
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !13061 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !12892)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !13062
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !13063, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !12901)
end_hunk_7
begin_hunk_8_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !13410), !dbg !13438
    #dbg_value(ptr %0, !3727, !DIExpression(), !13156)
    #dbg_value(ptr %0, !3837, !DIExpression(), !13158)
    #dbg_value(ptr %0, !3861, !DIExpression(), !13160)
    #dbg_value(ptr %0, !3867, !DIExpression(), !13162)
    #dbg_value(ptr %0, !3878, !DIExpression(), !13164)
    #dbg_value(ptr %0, !3885, !DIExpression(), !13166)
    #dbg_value(ptr %0, !3891, !DIExpression(), !13168)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !13156)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !13158)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !13156)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !13158)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13156)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13156)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13156)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13158)
    #dbg_value(i64 48, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13156)
    #dbg_value(i64 48, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13158)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13156)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13158)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !13169)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !13171)
    #dbg_value(i64 0, !3875, !DIExpression(), !13162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13439, !noalias !13411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13440, !noalias !13411
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 48, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !13440
  %i.v = load ptr, ptr %i.a, align 8, !dbg !13441, !noalias !13411, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !13441
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13442
  %i.y = load i64, ptr %i.x, align 8, !dbg !13442, !noalias !13411 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13442
  %i.aa = load i64, ptr %i.z, align 8, !dbg !13442, !noalias !13411 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !13443

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13444, !noalias !13411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13445, !noalias !13411
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !13446

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !13445, !noalias !13412
  resume { ptr, i32 } %i.ab, !dbg !13447

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !13448
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !13448, !noalias !13411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13444, !noalias !13411
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13174)
    #dbg_value(i64 48, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13174)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13174)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13174)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13174)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13174)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13174)
  store ptr %i.e, ptr %i.b, align 8, !dbg !13449, !noalias !13411
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13449 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13449, !noalias !13411
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13449 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13449, !noalias !13411
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13449 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !13449, !noalias !13411
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !13449 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13449, !noalias !13411
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !13449 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13449, !noalias !13411
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !13449 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13449, !noalias !13411
    #dbg_value(ptr poison, !3865, !DIExpression(), !13175)
    #dbg_value(ptr poison, !3935, !DIExpression(), !13177)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !13180)
    #dbg_value(ptr poison, !3967, !DIExpression(), !13181)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !13183)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !13184)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13185)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !13450, !alias.scope !13413, !noalias !13414, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13415)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13415)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !13415)
    #dbg_value(ptr undef, !3804, !DIExpression(), !13138)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !13451
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !13451

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !13452, !alias.scope !13413, !noalias !13414, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !13175)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !13177)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !13453
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13185)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !13415)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !13454
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13415)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !13455
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13415)
  br label %.preheader, !dbg !13451

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13415)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13415)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13415)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13187)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !13189)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !13456
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !13457

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13415)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !13191)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !13458 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !13193)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !13459
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !13196)
    #dbg_value(ptr poison, !4051, !DIExpression(), !13197)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !13199)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !13200)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13201)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !13460
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !13461 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13415)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !13462   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13415)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13415)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13187)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !13189)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !13456
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !13457

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !13463, !alias.scope !13413, !noalias !13414
  br label %._crit_edge31, !dbg !13463

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !13463 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13202)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13202)
  %i.am = sub i64 %i.aa, %i.al, !dbg !13464
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13464, !noalias !13411
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13465, !noalias !13411
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13203)
    #dbg_value(ptr %0, !4054, !DIExpression(), !13205)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !13205)
    #dbg_value(ptr %0, !4060, !DIExpression(), !13207)
    #dbg_value(ptr %0, !4066, !DIExpression(), !13209)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !13207)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !13209)
    #dbg_value(i64 1, !4064, !DIExpression(), !13207)
    #dbg_value(i64 1, !4071, !DIExpression(), !13209)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13210)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13210)
    #dbg_value(i64 32, !4073, !DIExpression(), !13211)
    #dbg_value(i64 32, !4074, !DIExpression(), !13212)
    #dbg_value(ptr %0, !4085, !DIExpression(), !13214)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !13214)
    #dbg_value(i64 32, !4089, !DIExpression(), !13214)
    #dbg_value(i64 32, !4090, !DIExpression(), !13215)
    #dbg_value(i64 0, !4092, !DIExpression(), !13216)
    #dbg_value(i64 4, !4091, !DIExpression(), !13217)
    #dbg_value(i64 4, !4093, !DIExpression(), !13218)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !13466, !noalias !13412

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !13467, !noalias !13412
  unreachable, !dbg !13467

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !13416), !dbg !13445
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !13222)
  call void @llvm.experimental.noalias.scope.decl(metadata !13417), !dbg !13468, !noalias !13412
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !13226)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13469, !alias.scope !13418, !noalias !13412 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !13469, !alias.scope !13418, !noalias !13412 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !13469, !alias.scope !13418, !noalias !13412, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !13228)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !13228)
    #dbg_value(ptr poison, !4112, !DIExpression(), !13228)
    #dbg_value(ptr poison, !4116, !DIExpression(), !13230)
    #dbg_value(ptr poison, !4121, !DIExpression(), !13232)
    #dbg_value(ptr poison, !4130, !DIExpression(), !13234)
    #dbg_value(ptr poison, !4154, !DIExpression(), !13236)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !13470
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !13471

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13469, !alias.scope !13418, !noalias !13412
    #dbg_value(ptr poison, !4125, !DIExpression(), !13232)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13232)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13234)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13232)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13234)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !13472
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13238)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13238)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !13238)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !13240)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !13242)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !13243)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !13240)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !13242)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !13243)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !13473 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13245)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !13247)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !13474
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !13247)
  %i.as = add i64 %i.ar, %i.aq, !dbg !13475       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !13475
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13249)
  call void @llvm.assume(i1 %i.at), !dbg !13476, !noalias !13412
  %i.au = sub i64 0, %.val1.i.i, !dbg !13477
  %i.av = and i64 %i.as, %i.au, !dbg !13478       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !13250)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !13252)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !13479
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !13252)
  %i.ax = add i64 %i.aw, %i.av, !dbg !13480       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !13480
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13254)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !13481, !noalias !13412
  call void @llvm.assume(i1 %i.ba), !dbg !13481, !noalias !13412
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13256)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13257)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13256)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13257)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13256)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13257)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !13482
  call void @llvm.assume(i1 %i.bb), !dbg !13483, !noalias !13412
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13258)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13259)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13258)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13259)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !13259)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !13261)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !13412
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !13261)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !13258)
    #dbg_value(ptr poison, !4207, !DIExpression(), !13263)
    #dbg_value(ptr poison, !4214, !DIExpression(), !13265)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !13263)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !13265)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !13267)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !13269)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13263)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13265)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13267)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13269)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13263)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13265)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13267)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13269)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !13484
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !13484

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !13485
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13269)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13267)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13265)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13263)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13258)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !13486
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !13258)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !13263)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !13265)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !13267)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !13269)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !13487, !noalias !13419
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !13488

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13445, !noalias !13411
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !13446

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !13489 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !13489 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !13489
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !13270)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !13272)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !13274)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !13276)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !13490
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !13491
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !13492
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !13277)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !13279)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !13493
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13415)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !13280)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !13494 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13202)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13202)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !13495   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13415)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !13281)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !13164)
  call void @llvm.experimental.noalias.scope.decl(metadata !13420), !dbg !13496
    #dbg_value(ptr poison, !5162, !DIExpression(DW_OP_deref, DW_OP_deref), !13285)
    #dbg_value(ptr %0, !5166, !DIExpression(), !13285)
    #dbg_value(ptr %0, !5169, !DIExpression(), !13287)
    #dbg_value(ptr %0, !5185, !DIExpression(), !13289)
    #dbg_value(i64 %i.bj, !5167, !DIExpression(), !13285)
    #dbg_value(i64 %i.bj, !5178, !DIExpression(), !13287)
    #dbg_value(i64 %i.bj, !5190, !DIExpression(), !13291)
    #dbg_value(i64 %i.bj, !5198, !DIExpression(), !13293)
    #dbg_value(i64 1, !5202, !DIExpression(), !13297)
  %i.bl = load ptr, ptr %0, align 8, !dbg !13497, !alias.scope !13420, !noalias !13421, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5194, !DIExpression(), !13291)
    #dbg_value(ptr %i.bl, !5201, !DIExpression(), !13293)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !13498
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %i.bm, !dbg !13499
    #dbg_value(ptr poison, !5214, !DIExpression(), !13299)
    #dbg_value(ptr poison, !5208, !DIExpression(), !13300)
    #dbg_value(ptr %i.bn, !5201, !DIExpression(), !13297)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48, !dbg !13500
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !13501, !noalias !13422, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5216, !DIExpression(DW_OP_deref), !13302)
    #dbg_value(ptr %i.bo, !5219, !DIExpression(), !13302)
    #dbg_value(ptr %.val.i, !5222, !DIExpression(), !13304)
    #dbg_value(ptr %i.bo, !5223, !DIExpression(), !13304)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.f, !dbg !13502 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !13305)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !13307)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !13309)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13310)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13312)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13313)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13315)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13317)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13319)
    #dbg_value(ptr poison, !4349, !DIExpression(), !13322)
    #dbg_value(ptr poison, !4362, !DIExpression(), !13323)
    #dbg_value(ptr poison, !4368, !DIExpression(), !13325)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !13323)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13326)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13326)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !13503 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !13504
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !13505, !noalias !13423
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !13506
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !13506 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !13507
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !13508, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !13503
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !13506
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !13337)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !13338)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !13340)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !13342)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !13509
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !13510
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13343)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13343)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !13511
  %i.bw = and i64 %i.bv, %i.y, !dbg !13511        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13344)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13344)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !13346)
    #dbg_value(ptr poison, !4413, !DIExpression(), !13346)
    #dbg_value(ptr poison, !4415, !DIExpression(), !13348)
    #dbg_value(ptr poison, !4421, !DIExpression(), !13350)
    #dbg_value(ptr poison, !4421, !DIExpression(), !13352)
    #dbg_value(i64 0, !4422, !DIExpression(), !13352)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !13348)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !13512
  %i.by = load i8, ptr %i.bx, align 1, !dbg !13513, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !13514
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13356)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !13515, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !13358)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !13516
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !13360)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !13362)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !13363)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13364)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !13517
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !13517 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !13366)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !13518
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !13519
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !13519
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13368)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13368)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !13520
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !13346)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !13521

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13344)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13344)
    #dbg_value(ptr undef, !4349, !DIExpression(), !13322)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !13369)
  %i.cf = add i64 %i.ce, 16, !dbg !13522          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13326)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !13523
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13326)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !13503 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13326)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !13325)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !13504
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !13370)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !13371)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !13372)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !13373)
    #dbg_value(ptr undef, !4375, !DIExpression(), !13373)
    #dbg_value(i64 16, !4376, !DIExpression(), !13373)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !13505, !noalias !13423
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !13372)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !13374)
    #dbg_value(ptr poison, !4394, !DIExpression(), !13375)
    #dbg_value(ptr poison, !4395, !DIExpression(), !13375)
    #dbg_value(ptr poison, !4396, !DIExpression(), !13375)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !13376)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !13377)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !13378)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13379)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !13506
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !13506 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !13337)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !13507
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !13508, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !13346)
end_hunk_8
begin_hunk_9_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14257), !dbg !14285
    #dbg_value(ptr %0, !3727, !DIExpression(), !14003)
    #dbg_value(ptr %0, !3837, !DIExpression(), !14005)
    #dbg_value(ptr %0, !3861, !DIExpression(), !14007)
    #dbg_value(ptr %0, !3867, !DIExpression(), !14009)
    #dbg_value(ptr %0, !3878, !DIExpression(), !14011)
    #dbg_value(ptr %0, !3885, !DIExpression(), !14013)
    #dbg_value(ptr %0, !3891, !DIExpression(), !14015)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !14003)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !14005)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !14003)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !14005)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14003)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14003)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14003)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14005)
    #dbg_value(i64 688, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14003)
    #dbg_value(i64 688, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14005)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14003)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14005)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !14016)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !14018)
    #dbg_value(i64 0, !3875, !DIExpression(), !14009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14286, !noalias !14258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14287, !noalias !14258
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 688, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !14287
  %i.v = load ptr, ptr %i.a, align 8, !dbg !14288, !noalias !14258, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !14288
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14289
  %i.y = load i64, ptr %i.x, align 8, !dbg !14289, !noalias !14258 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14289
  %i.aa = load i64, ptr %i.z, align 8, !dbg !14289, !noalias !14258 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !14290

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14291, !noalias !14258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14292, !noalias !14258
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !14293

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !14292, !noalias !14259
  resume { ptr, i32 } %i.ab, !dbg !14294

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14295
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !14295, !noalias !14258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14291, !noalias !14258
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14021)
    #dbg_value(i64 688, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14021)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14021)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14021)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14021)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14021)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14021)
  store ptr %i.e, ptr %i.b, align 8, !dbg !14296, !noalias !14258
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14296 ; 2 uses
  store i64 688, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14296, !noalias !14258
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14296 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14296, !noalias !14258
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14296 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !14296, !noalias !14258
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !14296 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14296, !noalias !14258
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !14296 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14296, !noalias !14258
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !14296 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14296, !noalias !14258
    #dbg_value(ptr poison, !3865, !DIExpression(), !14022)
    #dbg_value(ptr poison, !3935, !DIExpression(), !14024)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !14027)
    #dbg_value(ptr poison, !3967, !DIExpression(), !14028)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14030)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14031)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14032)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !14297, !alias.scope !14260, !noalias !14261, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14262)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14262)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !14262)
    #dbg_value(ptr undef, !3804, !DIExpression(), !13985)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !14298
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !14298

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !14299, !alias.scope !14260, !noalias !14261, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !14022)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !14024)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !14300
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14032)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !14262)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !14301
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14262)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !14302
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14262)
  br label %.preheader, !dbg !14298

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14262)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14262)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14262)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14034)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !14036)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !14303
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !14304

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14262)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !14038)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !14305 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !14040)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !14306
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !14043)
    #dbg_value(ptr poison, !4051, !DIExpression(), !14044)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14046)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14047)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14048)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !14307
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !14308 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14262)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !14309   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14262)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14262)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14034)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !14036)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !14303
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !14304

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !14310, !alias.scope !14260, !noalias !14261
  br label %._crit_edge31, !dbg !14310

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !14310 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14049)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14049)
  %i.am = sub i64 %i.aa, %i.al, !dbg !14311
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14311, !noalias !14258
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14312, !noalias !14258
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14050)
    #dbg_value(ptr %0, !4054, !DIExpression(), !14052)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !14052)
    #dbg_value(ptr %0, !4060, !DIExpression(), !14054)
    #dbg_value(ptr %0, !4066, !DIExpression(), !14056)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !14054)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !14056)
    #dbg_value(i64 1, !4064, !DIExpression(), !14054)
    #dbg_value(i64 1, !4071, !DIExpression(), !14056)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14057)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14057)
    #dbg_value(i64 32, !4073, !DIExpression(), !14058)
    #dbg_value(i64 32, !4074, !DIExpression(), !14059)
    #dbg_value(ptr %0, !4085, !DIExpression(), !14061)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !14061)
    #dbg_value(i64 32, !4089, !DIExpression(), !14061)
    #dbg_value(i64 32, !4090, !DIExpression(), !14062)
    #dbg_value(i64 0, !4092, !DIExpression(), !14063)
    #dbg_value(i64 4, !4091, !DIExpression(), !14064)
    #dbg_value(i64 4, !4093, !DIExpression(), !14065)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !14313, !noalias !14259

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !14314, !noalias !14259
  unreachable, !dbg !14314

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !14263), !dbg !14292
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !14069)
  call void @llvm.experimental.noalias.scope.decl(metadata !14264), !dbg !14315, !noalias !14259
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !14073)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14316, !alias.scope !14265, !noalias !14259 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !14316, !alias.scope !14265, !noalias !14259 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14316, !alias.scope !14265, !noalias !14259, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !14075)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !14075)
    #dbg_value(ptr poison, !4112, !DIExpression(), !14075)
    #dbg_value(ptr poison, !4116, !DIExpression(), !14077)
    #dbg_value(ptr poison, !4121, !DIExpression(), !14079)
    #dbg_value(ptr poison, !4130, !DIExpression(), !14081)
    #dbg_value(ptr poison, !4154, !DIExpression(), !14083)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !14317
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !14318

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14316, !alias.scope !14265, !noalias !14259
    #dbg_value(ptr poison, !4125, !DIExpression(), !14079)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14079)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14081)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14079)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14081)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !14319
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14085)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14085)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !14085)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !14087)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !14089)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !14090)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !14087)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !14089)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !14090)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !14320 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14092)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !14094)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !14321
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !14094)
  %i.as = add i64 %i.ar, %i.aq, !dbg !14322       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !14322
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14096)
  call void @llvm.assume(i1 %i.at), !dbg !14323, !noalias !14259
  %i.au = sub i64 0, %.val1.i.i, !dbg !14324
  %i.av = and i64 %i.as, %i.au, !dbg !14325       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !14097)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !14099)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !14326
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !14099)
  %i.ax = add i64 %i.aw, %i.av, !dbg !14327       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !14327
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14101)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !14328, !noalias !14259
  call void @llvm.assume(i1 %i.ba), !dbg !14328, !noalias !14259
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14103)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14104)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14103)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14104)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14103)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14104)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !14329
  call void @llvm.assume(i1 %i.bb), !dbg !14330, !noalias !14259
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14105)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14105)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !14106)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !14108)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !14259
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !14108)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14105)
    #dbg_value(ptr poison, !4207, !DIExpression(), !14110)
    #dbg_value(ptr poison, !4214, !DIExpression(), !14112)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14110)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14112)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14114)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14116)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14110)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14112)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14114)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14116)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14110)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14112)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14114)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14116)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !14331
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !14331

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !14332
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14116)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14114)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14112)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14110)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14105)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !14333
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !14105)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !14110)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !14112)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !14114)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !14116)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !14334, !noalias !14266
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !14335

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14292, !noalias !14258
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !14293

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !14336 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !14336 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !14336
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !14117)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !14119)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !14121)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !14123)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !14337
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !14338
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !14339
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !14124)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !14126)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !14340
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14262)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !14127)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !14341 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14049)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14049)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !14342   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14262)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !14128)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !14011)
  call void @llvm.experimental.noalias.scope.decl(metadata !14267), !dbg !14343
    #dbg_value(ptr poison, !5260, !DIExpression(DW_OP_deref, DW_OP_deref), !14132)
    #dbg_value(ptr %0, !5264, !DIExpression(), !14132)
    #dbg_value(ptr %0, !5267, !DIExpression(), !14134)
    #dbg_value(ptr %0, !5278, !DIExpression(), !14136)
    #dbg_value(i64 %i.bj, !5265, !DIExpression(), !14132)
    #dbg_value(i64 %i.bj, !5271, !DIExpression(), !14134)
    #dbg_value(i64 %i.bj, !5283, !DIExpression(), !14138)
    #dbg_value(i64 %i.bj, !5287, !DIExpression(), !14140)
    #dbg_value(i64 1, !5289, !DIExpression(), !14144)
  %i.bl = load ptr, ptr %0, align 8, !dbg !14344, !alias.scope !14267, !noalias !14268, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5284, !DIExpression(), !14138)
    #dbg_value(ptr %i.bl, !5288, !DIExpression(), !14140)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !14345
  %i.bn = getelementptr inbounds [688 x i8], ptr %i.bl, i64 %i.bm, !dbg !14346
    #dbg_value(ptr poison, !5293, !DIExpression(), !14146)
    #dbg_value(ptr poison, !5291, !DIExpression(), !14147)
    #dbg_value(ptr %i.bn, !5288, !DIExpression(), !14144)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -688, !dbg !14347
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !14348, !noalias !14269, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5295, !DIExpression(DW_OP_deref), !14149)
    #dbg_value(ptr %i.bo, !5298, !DIExpression(), !14149)
    #dbg_value(ptr %.val.i, !5301, !DIExpression(), !14151)
    #dbg_value(ptr %i.bo, !5302, !DIExpression(), !14151)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.f, !dbg !14349 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !14152)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !14154)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !14156)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14157)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14159)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14160)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14162)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14164)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14166)
    #dbg_value(ptr poison, !4349, !DIExpression(), !14169)
    #dbg_value(ptr poison, !4362, !DIExpression(), !14170)
    #dbg_value(ptr poison, !4368, !DIExpression(), !14172)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !14170)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14173)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14173)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !14350 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !14351
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !14352, !noalias !14270
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !14353
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !14353 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !14354
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !14355, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !14350
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !14353
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !14184)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !14185)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !14187)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !14189)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !14356
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !14357
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14190)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14190)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !14358
  %i.bw = and i64 %i.bv, %i.y, !dbg !14358        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14191)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14191)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !14193)
    #dbg_value(ptr poison, !4413, !DIExpression(), !14193)
    #dbg_value(ptr poison, !4415, !DIExpression(), !14195)
    #dbg_value(ptr poison, !4421, !DIExpression(), !14197)
    #dbg_value(ptr poison, !4421, !DIExpression(), !14199)
    #dbg_value(i64 0, !4422, !DIExpression(), !14199)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !14195)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !14359
  %i.by = load i8, ptr %i.bx, align 1, !dbg !14360, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !14361
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14203)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !14362, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !14205)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !14363
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !14207)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14209)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14210)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14211)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !14364
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !14364 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !14213)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !14365
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !14366
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !14366
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14215)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14215)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !14367
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !14193)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !14368

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14191)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14191)
    #dbg_value(ptr undef, !4349, !DIExpression(), !14169)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !14216)
  %i.cf = add i64 %i.ce, 16, !dbg !14369          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14173)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !14370
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14173)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !14350 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14173)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !14172)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !14351
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !14217)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !14218)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !14219)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !14220)
    #dbg_value(ptr undef, !4375, !DIExpression(), !14220)
    #dbg_value(i64 16, !4376, !DIExpression(), !14220)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !14352, !noalias !14270
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !14219)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !14221)
    #dbg_value(ptr poison, !4394, !DIExpression(), !14222)
    #dbg_value(ptr poison, !4395, !DIExpression(), !14222)
    #dbg_value(ptr poison, !4396, !DIExpression(), !14222)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !14223)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14224)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14225)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14226)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !14353
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !14353 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !14184)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !14354
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !14355, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !14193)
end_hunk_9
begin_hunk_10_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1y_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14702), !dbg !14730
    #dbg_value(ptr %0, !3727, !DIExpression(), !14448)
    #dbg_value(ptr %0, !3837, !DIExpression(), !14450)
    #dbg_value(ptr %0, !3861, !DIExpression(), !14452)
    #dbg_value(ptr %0, !3867, !DIExpression(), !14454)
    #dbg_value(ptr %0, !3878, !DIExpression(), !14456)
    #dbg_value(ptr %0, !3885, !DIExpression(), !14458)
    #dbg_value(ptr %0, !3891, !DIExpression(), !14460)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !14448)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !14450)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !14448)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !14450)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14448)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14448)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14448)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14450)
    #dbg_value(i64 72, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14448)
    #dbg_value(i64 72, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14450)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14448)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14450)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !14461)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !14463)
    #dbg_value(i64 0, !3875, !DIExpression(), !14454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14731, !noalias !14703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14732, !noalias !14703
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 72, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !14732
  %i.v = load ptr, ptr %i.a, align 8, !dbg !14733, !noalias !14703, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !14733
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14734
  %i.y = load i64, ptr %i.x, align 8, !dbg !14734, !noalias !14703 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14734
  %i.aa = load i64, ptr %i.z, align 8, !dbg !14734, !noalias !14703 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !14735

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14736, !noalias !14703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14737, !noalias !14703
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !14738

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !14737, !noalias !14704
  resume { ptr, i32 } %i.ab, !dbg !14739

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14740
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !14740, !noalias !14703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14736, !noalias !14703
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14466)
    #dbg_value(i64 72, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14466)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14466)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14466)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14466)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14466)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14466)
  store ptr %i.e, ptr %i.b, align 8, !dbg !14741, !noalias !14703
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14741 ; 2 uses
  store i64 72, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14741, !noalias !14703
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14741 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14741, !noalias !14703
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14741 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !14741, !noalias !14703
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !14741 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14741, !noalias !14703
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !14741 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14741, !noalias !14703
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !14741 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14741, !noalias !14703
    #dbg_value(ptr poison, !3865, !DIExpression(), !14467)
    #dbg_value(ptr poison, !3935, !DIExpression(), !14469)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !14472)
    #dbg_value(ptr poison, !3967, !DIExpression(), !14473)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14475)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14476)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14477)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !14742, !alias.scope !14705, !noalias !14706, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14707)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14707)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14707)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !14707)
    #dbg_value(ptr undef, !3804, !DIExpression(), !14430)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !14743
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !14743

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !14744, !alias.scope !14705, !noalias !14706, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !14467)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !14469)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14707)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !14745
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14477)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !14707)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !14746
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14707)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !14747
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14707)
  br label %.preheader, !dbg !14743

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14707)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14707)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14707)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14707)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14479)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !14481)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !14748
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !14749

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14707)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14707)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !14483)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !14750 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14707)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !14485)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !14751
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !14488)
    #dbg_value(ptr poison, !4051, !DIExpression(), !14489)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14491)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14492)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14493)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !14752
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !14753 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14707)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !14754   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14707)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14707)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14707)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14479)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !14481)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !14748
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !14749

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !14755, !alias.scope !14705, !noalias !14706
  br label %._crit_edge31, !dbg !14755

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !14755 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14494)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14494)
  %i.am = sub i64 %i.aa, %i.al, !dbg !14756
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14756, !noalias !14703
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14757, !noalias !14703
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14495)
    #dbg_value(ptr %0, !4054, !DIExpression(), !14497)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !14497)
    #dbg_value(ptr %0, !4060, !DIExpression(), !14499)
    #dbg_value(ptr %0, !4066, !DIExpression(), !14501)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !14499)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !14501)
    #dbg_value(i64 1, !4064, !DIExpression(), !14499)
    #dbg_value(i64 1, !4071, !DIExpression(), !14501)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14502)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14502)
    #dbg_value(i64 32, !4073, !DIExpression(), !14503)
    #dbg_value(i64 32, !4074, !DIExpression(), !14504)
    #dbg_value(ptr %0, !4085, !DIExpression(), !14506)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !14506)
    #dbg_value(i64 32, !4089, !DIExpression(), !14506)
    #dbg_value(i64 32, !4090, !DIExpression(), !14507)
    #dbg_value(i64 0, !4092, !DIExpression(), !14508)
    #dbg_value(i64 4, !4091, !DIExpression(), !14509)
    #dbg_value(i64 4, !4093, !DIExpression(), !14510)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !14758, !noalias !14704

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !14759, !noalias !14704
  unreachable, !dbg !14759

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !14708), !dbg !14737
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !14514)
  call void @llvm.experimental.noalias.scope.decl(metadata !14709), !dbg !14760, !noalias !14704
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !14518)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14761, !alias.scope !14710, !noalias !14704 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !14761, !alias.scope !14710, !noalias !14704 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !14761, !alias.scope !14710, !noalias !14704, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !14520)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !14520)
    #dbg_value(ptr poison, !4112, !DIExpression(), !14520)
    #dbg_value(ptr poison, !4116, !DIExpression(), !14522)
    #dbg_value(ptr poison, !4121, !DIExpression(), !14524)
    #dbg_value(ptr poison, !4130, !DIExpression(), !14526)
    #dbg_value(ptr poison, !4154, !DIExpression(), !14528)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !14762
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !14763

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14761, !alias.scope !14710, !noalias !14704
    #dbg_value(ptr poison, !4125, !DIExpression(), !14524)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14524)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14526)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14524)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14526)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !14764
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14530)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14530)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !14530)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !14532)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !14534)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !14535)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !14532)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !14534)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !14535)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !14765 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14537)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !14539)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !14766
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !14539)
  %i.as = add i64 %i.ar, %i.aq, !dbg !14767       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !14767
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14541)
  call void @llvm.assume(i1 %i.at), !dbg !14768, !noalias !14704
  %i.au = sub i64 0, %.val1.i.i, !dbg !14769
  %i.av = and i64 %i.as, %i.au, !dbg !14770       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !14542)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !14544)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !14771
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !14544)
  %i.ax = add i64 %i.aw, %i.av, !dbg !14772       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !14772
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14546)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !14773, !noalias !14704
  call void @llvm.assume(i1 %i.ba), !dbg !14773, !noalias !14704
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14548)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14549)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14548)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14549)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14548)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14549)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !14774
  call void @llvm.assume(i1 %i.bb), !dbg !14775, !noalias !14704
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14550)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14551)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14550)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14551)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !14551)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !14553)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !14704
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !14553)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14550)
    #dbg_value(ptr poison, !4207, !DIExpression(), !14555)
    #dbg_value(ptr poison, !4214, !DIExpression(), !14557)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14555)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14557)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14559)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14561)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14555)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14557)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14559)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14561)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14555)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14557)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14559)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14561)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !14776
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !14776

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !14777
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14561)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14559)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14557)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14555)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14550)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !14778
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !14550)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !14555)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !14557)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !14559)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !14561)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !14779, !noalias !14711
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !14780

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14737, !noalias !14703
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !14738

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !14781 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !14781 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !14781
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !14562)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !14564)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !14566)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !14568)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !14782
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !14783
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !14784
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !14569)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !14571)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !14785
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !14707)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !14572)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !14786 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14494)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14494)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !14787   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14707)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !14573)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !14456)
  call void @llvm.experimental.noalias.scope.decl(metadata !14712), !dbg !14788
    #dbg_value(ptr poison, !5307, !DIExpression(DW_OP_deref, DW_OP_deref), !14577)
    #dbg_value(ptr %0, !5311, !DIExpression(), !14577)
    #dbg_value(ptr %0, !5314, !DIExpression(), !14579)
    #dbg_value(ptr %0, !5330, !DIExpression(), !14581)
    #dbg_value(i64 %i.bj, !5312, !DIExpression(), !14577)
    #dbg_value(i64 %i.bj, !5323, !DIExpression(), !14579)
    #dbg_value(i64 %i.bj, !5335, !DIExpression(), !14583)
    #dbg_value(i64 %i.bj, !5343, !DIExpression(), !14585)
    #dbg_value(i64 1, !5347, !DIExpression(), !14589)
  %i.bl = load ptr, ptr %0, align 8, !dbg !14789, !alias.scope !14712, !noalias !14713, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5339, !DIExpression(), !14583)
    #dbg_value(ptr %i.bl, !5346, !DIExpression(), !14585)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !14790
  %i.bn = getelementptr inbounds [72 x i8], ptr %i.bl, i64 %i.bm, !dbg !14791
    #dbg_value(ptr poison, !5359, !DIExpression(), !14591)
    #dbg_value(ptr poison, !5353, !DIExpression(), !14592)
    #dbg_value(ptr %i.bn, !5346, !DIExpression(), !14589)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -72, !dbg !14792
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !14793, !noalias !14714, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5361, !DIExpression(DW_OP_deref), !14594)
    #dbg_value(ptr %i.bo, !5364, !DIExpression(), !14594)
    #dbg_value(ptr %.val.i, !5367, !DIExpression(), !14596)
    #dbg_value(ptr %i.bo, !5368, !DIExpression(), !14596)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit unwind label %bb.f, !dbg !14794 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !14597)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !14599)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !14601)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14602)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14604)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14605)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14607)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14609)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14611)
    #dbg_value(ptr poison, !4349, !DIExpression(), !14614)
    #dbg_value(ptr poison, !4362, !DIExpression(), !14615)
    #dbg_value(ptr poison, !4368, !DIExpression(), !14617)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !14615)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14618)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14618)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !14795 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !14796
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !14797, !noalias !14715
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !14798
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !14798 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !14799
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !14800, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !14795
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !14798
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !14629)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !14630)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !14632)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !14634)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !14801
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !14802
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14635)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14635)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !14803
  %i.bw = and i64 %i.bv, %i.y, !dbg !14803        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14636)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14636)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !14638)
    #dbg_value(ptr poison, !4413, !DIExpression(), !14638)
    #dbg_value(ptr poison, !4415, !DIExpression(), !14640)
    #dbg_value(ptr poison, !4421, !DIExpression(), !14642)
    #dbg_value(ptr poison, !4421, !DIExpression(), !14644)
    #dbg_value(i64 0, !4422, !DIExpression(), !14644)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !14640)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !14804
  %i.by = load i8, ptr %i.bx, align 1, !dbg !14805, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !14806
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14648)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !14807, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !14650)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !14808
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !14652)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14654)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14655)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14656)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !14809
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !14809 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !14658)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !14810
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !14811
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !14811
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14660)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14660)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !14812
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !14638)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !14813

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1A_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14636)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14636)
    #dbg_value(ptr undef, !4349, !DIExpression(), !14614)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !14661)
  %i.cf = add i64 %i.ce, 16, !dbg !14814          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14618)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !14815
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14618)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !14795 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14618)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !14617)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !14796
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !14662)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !14663)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !14664)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !14665)
    #dbg_value(ptr undef, !4375, !DIExpression(), !14665)
    #dbg_value(i64 16, !4376, !DIExpression(), !14665)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !14797, !noalias !14715
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !14664)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !14666)
    #dbg_value(ptr poison, !4394, !DIExpression(), !14667)
    #dbg_value(ptr poison, !4395, !DIExpression(), !14667)
    #dbg_value(ptr poison, !4396, !DIExpression(), !14667)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !14668)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14669)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14670)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14671)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !14798
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !14798 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !14629)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !14799
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !14800, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !14638)
end_hunk_10
begin_hunk_11_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1x_12instructions5ChunkEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1z_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15147), !dbg !15175
    #dbg_value(ptr %0, !3727, !DIExpression(), !14893)
    #dbg_value(ptr %0, !3837, !DIExpression(), !14895)
    #dbg_value(ptr %0, !3861, !DIExpression(), !14897)
    #dbg_value(ptr %0, !3867, !DIExpression(), !14899)
    #dbg_value(ptr %0, !3878, !DIExpression(), !14901)
    #dbg_value(ptr %0, !3885, !DIExpression(), !14903)
    #dbg_value(ptr %0, !3891, !DIExpression(), !14905)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !14893)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !14895)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !14893)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !14895)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14893)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14893)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14893)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14895)
    #dbg_value(i64 192, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14893)
    #dbg_value(i64 192, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14895)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14893)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14895)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !14906)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !14908)
    #dbg_value(i64 0, !3875, !DIExpression(), !14899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15176, !noalias !15148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15177, !noalias !15148
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 192, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !15177
  %i.v = load ptr, ptr %i.a, align 8, !dbg !15178, !noalias !15148, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !15178
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15179
  %i.y = load i64, ptr %i.x, align 8, !dbg !15179, !noalias !15148 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15179
  %i.aa = load i64, ptr %i.z, align 8, !dbg !15179, !noalias !15148 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !15180

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15181, !noalias !15148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15182, !noalias !15148
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !15183

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !15182, !noalias !15149
  resume { ptr, i32 } %i.ab, !dbg !15184

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15185
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !15185, !noalias !15148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15181, !noalias !15148
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14911)
    #dbg_value(i64 192, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14911)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14911)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14911)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14911)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14911)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14911)
  store ptr %i.e, ptr %i.b, align 8, !dbg !15186, !noalias !15148
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15186 ; 2 uses
  store i64 192, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !15186, !noalias !15148
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15186 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !15186, !noalias !15148
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !15186 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !15186, !noalias !15148
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15186 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15186, !noalias !15148
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15186 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15186, !noalias !15148
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15186 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15186, !noalias !15148
    #dbg_value(ptr poison, !3865, !DIExpression(), !14912)
    #dbg_value(ptr poison, !3935, !DIExpression(), !14914)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !14917)
    #dbg_value(ptr poison, !3967, !DIExpression(), !14918)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14920)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14921)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14922)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !15187, !alias.scope !15150, !noalias !15151, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15152)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15152)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !15152)
    #dbg_value(ptr undef, !3804, !DIExpression(), !14875)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !15188
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !15188

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !15189, !alias.scope !15150, !noalias !15151, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !14912)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !14914)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !15190
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14922)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !15152)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !15191
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15152)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !15192
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15152)
  br label %.preheader, !dbg !15188

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15152)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15152)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15152)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14924)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !14926)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !15193
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !15194

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15152)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !14928)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !15195 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !14930)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !15196
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !14933)
    #dbg_value(ptr poison, !4051, !DIExpression(), !14934)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !14936)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !14937)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14938)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !15197
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !15198 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15152)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !15199   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15152)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15152)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14924)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !14926)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !15193
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !15194

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !15200, !alias.scope !15150, !noalias !15151
  br label %._crit_edge31, !dbg !15200

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !15200 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14939)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14939)
  %i.am = sub i64 %i.aa, %i.al, !dbg !15201
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15201, !noalias !15148
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15202, !noalias !15148
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14940)
    #dbg_value(ptr %0, !4054, !DIExpression(), !14942)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !14942)
    #dbg_value(ptr %0, !4060, !DIExpression(), !14944)
    #dbg_value(ptr %0, !4066, !DIExpression(), !14946)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !14944)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !14946)
    #dbg_value(i64 1, !4064, !DIExpression(), !14944)
    #dbg_value(i64 1, !4071, !DIExpression(), !14946)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14947)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14947)
    #dbg_value(i64 32, !4073, !DIExpression(), !14948)
    #dbg_value(i64 32, !4074, !DIExpression(), !14949)
    #dbg_value(ptr %0, !4085, !DIExpression(), !14951)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !14951)
    #dbg_value(i64 32, !4089, !DIExpression(), !14951)
    #dbg_value(i64 32, !4090, !DIExpression(), !14952)
    #dbg_value(i64 0, !4092, !DIExpression(), !14953)
    #dbg_value(i64 4, !4091, !DIExpression(), !14954)
    #dbg_value(i64 4, !4093, !DIExpression(), !14955)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !15203, !noalias !15149

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !15204, !noalias !15149
  unreachable, !dbg !15204

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !15153), !dbg !15182
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !14959)
  call void @llvm.experimental.noalias.scope.decl(metadata !15154), !dbg !15205, !noalias !15149
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !14963)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !15206, !alias.scope !15155, !noalias !15149 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !15206, !alias.scope !15155, !noalias !15149 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15206, !alias.scope !15155, !noalias !15149, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !14965)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !14965)
    #dbg_value(ptr poison, !4112, !DIExpression(), !14965)
    #dbg_value(ptr poison, !4116, !DIExpression(), !14967)
    #dbg_value(ptr poison, !4121, !DIExpression(), !14969)
    #dbg_value(ptr poison, !4130, !DIExpression(), !14971)
    #dbg_value(ptr poison, !4154, !DIExpression(), !14973)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !15207
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !15208

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !15206, !alias.scope !15155, !noalias !15149
    #dbg_value(ptr poison, !4125, !DIExpression(), !14969)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14969)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14971)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14969)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14971)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !15209
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14975)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14975)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !14975)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !14977)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !14979)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !14980)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !14977)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !14979)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !14980)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !15210 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14982)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !14984)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !15211
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !14984)
  %i.as = add i64 %i.ar, %i.aq, !dbg !15212       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !15212
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14986)
  call void @llvm.assume(i1 %i.at), !dbg !15213, !noalias !15149
  %i.au = sub i64 0, %.val1.i.i, !dbg !15214
  %i.av = and i64 %i.as, %i.au, !dbg !15215       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !14987)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !14989)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !15216
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !14989)
  %i.ax = add i64 %i.aw, %i.av, !dbg !15217       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !15217
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14991)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !15218, !noalias !15149
  call void @llvm.assume(i1 %i.ba), !dbg !15218, !noalias !15149
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14993)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14994)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14993)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14994)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14993)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14994)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !15219
  call void @llvm.assume(i1 %i.bb), !dbg !15220, !noalias !15149
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14995)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14996)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14995)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14996)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !14996)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !14998)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !15149
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !14998)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !14995)
    #dbg_value(ptr poison, !4207, !DIExpression(), !15000)
    #dbg_value(ptr poison, !4214, !DIExpression(), !15002)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15000)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15002)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15004)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15006)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15000)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15002)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15004)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15006)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15000)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15002)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15004)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15006)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !15221
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !15221

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !15222
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15006)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15004)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15002)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15000)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !14995)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !15223
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !14995)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !15000)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !15002)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !15004)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !15006)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !15224, !noalias !15156
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !15225

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15182, !noalias !15148
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !15183

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !15226 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !15226 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !15226
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !15007)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !15009)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !15011)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !15013)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !15227
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !15228
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !15229
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !15014)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !15016)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !15230
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15152)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !15017)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !15231 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14939)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14939)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !15232   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15152)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !15018)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !14901)
  call void @llvm.experimental.noalias.scope.decl(metadata !15157), !dbg !15233
    #dbg_value(ptr poison, !5373, !DIExpression(DW_OP_deref, DW_OP_deref), !15022)
    #dbg_value(ptr %0, !5377, !DIExpression(), !15022)
    #dbg_value(ptr %0, !5380, !DIExpression(), !15024)
    #dbg_value(ptr %0, !5396, !DIExpression(), !15026)
    #dbg_value(i64 %i.bj, !5378, !DIExpression(), !15022)
    #dbg_value(i64 %i.bj, !5389, !DIExpression(), !15024)
    #dbg_value(i64 %i.bj, !5401, !DIExpression(), !15028)
    #dbg_value(i64 %i.bj, !5409, !DIExpression(), !15030)
    #dbg_value(i64 1, !5413, !DIExpression(), !15034)
  %i.bl = load ptr, ptr %0, align 8, !dbg !15234, !alias.scope !15157, !noalias !15158, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5405, !DIExpression(), !15028)
    #dbg_value(ptr %i.bl, !5412, !DIExpression(), !15030)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !15235
  %i.bn = getelementptr inbounds [192 x i8], ptr %i.bl, i64 %i.bm, !dbg !15236
    #dbg_value(ptr poison, !5425, !DIExpression(), !15036)
    #dbg_value(ptr poison, !5419, !DIExpression(), !15037)
    #dbg_value(ptr %i.bn, !5412, !DIExpression(), !15034)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -192, !dbg !15237
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !15238, !noalias !15159, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5427, !DIExpression(DW_OP_deref), !15039)
    #dbg_value(ptr %i.bo, !5430, !DIExpression(), !15039)
    #dbg_value(ptr %.val.i, !5433, !DIExpression(), !15041)
    #dbg_value(ptr %i.bo, !5434, !DIExpression(), !15041)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit unwind label %bb.f, !dbg !15239 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !15042)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !15044)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !15046)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15047)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15049)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15050)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15052)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15054)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15056)
    #dbg_value(ptr poison, !4349, !DIExpression(), !15059)
    #dbg_value(ptr poison, !4362, !DIExpression(), !15060)
    #dbg_value(ptr poison, !4368, !DIExpression(), !15062)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !15060)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15063)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15063)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !15240 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !15241
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !15242, !noalias !15160
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !15243
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !15243 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !15244
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !15245, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !15240
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !15243
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !15074)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !15075)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !15077)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !15079)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !15246
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !15247
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15080)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15080)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !15248
  %i.bw = and i64 %i.bv, %i.y, !dbg !15248        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15081)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15081)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !15083)
    #dbg_value(ptr poison, !4413, !DIExpression(), !15083)
    #dbg_value(ptr poison, !4415, !DIExpression(), !15085)
    #dbg_value(ptr poison, !4421, !DIExpression(), !15087)
    #dbg_value(ptr poison, !4421, !DIExpression(), !15089)
    #dbg_value(i64 0, !4422, !DIExpression(), !15089)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !15085)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !15249
  %i.by = load i8, ptr %i.bx, align 1, !dbg !15250, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !15251
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15093)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !15252, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !15095)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !15253
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !15097)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !15099)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !15100)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15101)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !15254
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !15254 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !15103)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !15255
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !15256
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !15256
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15105)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15105)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !15257
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !15083)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !15258

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1z_12instructions5ChunkEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1B_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15081)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15081)
    #dbg_value(ptr undef, !4349, !DIExpression(), !15059)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !15106)
  %i.cf = add i64 %i.ce, 16, !dbg !15259          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15063)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !15260
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15063)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !15240 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15063)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !15062)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !15241
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !15107)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !15108)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !15109)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !15110)
    #dbg_value(ptr undef, !4375, !DIExpression(), !15110)
    #dbg_value(i64 16, !4376, !DIExpression(), !15110)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !15242, !noalias !15160
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !15109)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !15111)
    #dbg_value(ptr poison, !4394, !DIExpression(), !15112)
    #dbg_value(ptr poison, !4395, !DIExpression(), !15112)
    #dbg_value(ptr poison, !4396, !DIExpression(), !15112)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !15113)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !15114)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !15115)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15116)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !15243
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !15243 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !15074)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !15244
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !15245, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !15083)
end_hunk_11
begin_hunk_12_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs5yXxDE1DkoT_4tera:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15959), !dbg !15987
    #dbg_value(ptr %0, !3727, !DIExpression(), !15705)
    #dbg_value(ptr %0, !3837, !DIExpression(), !15707)
    #dbg_value(ptr %0, !3861, !DIExpression(), !15709)
    #dbg_value(ptr %0, !3867, !DIExpression(), !15711)
    #dbg_value(ptr %0, !3878, !DIExpression(), !15713)
    #dbg_value(ptr %0, !3885, !DIExpression(), !15715)
    #dbg_value(ptr %0, !3891, !DIExpression(), !15717)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !15705)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !15707)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !15705)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !15707)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15705)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15705)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15705)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15707)
    #dbg_value(i64 32, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15705)
    #dbg_value(i64 32, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15707)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15705)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15707)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !15718)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !15720)
    #dbg_value(i64 0, !3875, !DIExpression(), !15711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15988, !noalias !15960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15989, !noalias !15960
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 32, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !15989
  %i.v = load ptr, ptr %i.a, align 8, !dbg !15990, !noalias !15960, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !15990
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15991
  %i.y = load i64, ptr %i.x, align 8, !dbg !15991, !noalias !15960 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15991
  %i.aa = load i64, ptr %i.z, align 8, !dbg !15991, !noalias !15960 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !15992

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15993, !noalias !15960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15994, !noalias !15960
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !15995

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !15994, !noalias !15961
  resume { ptr, i32 } %i.ab, !dbg !15996

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15997
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !15997, !noalias !15960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15993, !noalias !15960
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15723)
    #dbg_value(i64 32, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15723)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15723)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15723)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15723)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15723)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !15723)
  store ptr %i.e, ptr %i.b, align 8, !dbg !15998, !noalias !15960
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15998 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !15998, !noalias !15960
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15998 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !15998, !noalias !15960
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !15998 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !15998, !noalias !15960
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15998 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15998, !noalias !15960
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15998 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15998, !noalias !15960
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15998 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !15998, !noalias !15960
    #dbg_value(ptr poison, !3865, !DIExpression(), !15724)
    #dbg_value(ptr poison, !3935, !DIExpression(), !15726)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !15729)
    #dbg_value(ptr poison, !3967, !DIExpression(), !15730)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !15732)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !15733)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15734)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !15999, !alias.scope !15962, !noalias !15963, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15964)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15964)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15964)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !15964)
    #dbg_value(ptr undef, !3804, !DIExpression(), !15687)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16000
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !16000

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !16001, !alias.scope !15962, !noalias !15963, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !15724)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !15726)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15964)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !16002
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15734)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !15964)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !16003
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15964)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !16004
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15964)
  br label %.preheader, !dbg !16000

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15964)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15964)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15964)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15964)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15736)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !15738)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !16005
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !16006

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15964)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15964)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !15740)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !16007 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15964)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !15742)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !16008
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !15745)
    #dbg_value(ptr poison, !4051, !DIExpression(), !15746)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !15748)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !15749)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15750)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !16009
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !16010 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15964)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !16011   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15964)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15964)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15964)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15736)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !15738)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !16005
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !16006

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !16012, !alias.scope !15962, !noalias !15963
  br label %._crit_edge31, !dbg !16012

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !16012 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15751)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15751)
  %i.am = sub i64 %i.aa, %i.al, !dbg !16013
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16013, !noalias !15960
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16014, !noalias !15960
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15752)
    #dbg_value(ptr %0, !4054, !DIExpression(), !15754)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !15754)
    #dbg_value(ptr %0, !4060, !DIExpression(), !15756)
    #dbg_value(ptr %0, !4066, !DIExpression(), !15758)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !15756)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !15758)
    #dbg_value(i64 1, !4064, !DIExpression(), !15756)
    #dbg_value(i64 1, !4071, !DIExpression(), !15758)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15759)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15759)
    #dbg_value(i64 32, !4073, !DIExpression(), !15760)
    #dbg_value(i64 32, !4074, !DIExpression(), !15761)
    #dbg_value(ptr %0, !4085, !DIExpression(), !15763)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !15763)
    #dbg_value(i64 32, !4089, !DIExpression(), !15763)
    #dbg_value(i64 32, !4090, !DIExpression(), !15764)
    #dbg_value(i64 0, !4092, !DIExpression(), !15765)
    #dbg_value(i64 4, !4091, !DIExpression(), !15766)
    #dbg_value(i64 4, !4093, !DIExpression(), !15767)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !16015, !noalias !15961

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !16016, !noalias !15961
  unreachable, !dbg !16016

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !15965), !dbg !15994
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !15771)
  call void @llvm.experimental.noalias.scope.decl(metadata !15966), !dbg !16017, !noalias !15961
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !15775)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16018, !alias.scope !15967, !noalias !15961 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !16018, !alias.scope !15967, !noalias !15961 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16018, !alias.scope !15967, !noalias !15961, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !15777)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !15777)
    #dbg_value(ptr poison, !4112, !DIExpression(), !15777)
    #dbg_value(ptr poison, !4116, !DIExpression(), !15779)
    #dbg_value(ptr poison, !4121, !DIExpression(), !15781)
    #dbg_value(ptr poison, !4130, !DIExpression(), !15783)
    #dbg_value(ptr poison, !4154, !DIExpression(), !15785)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !16019
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !16020

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !16018, !alias.scope !15967, !noalias !15961
    #dbg_value(ptr poison, !4125, !DIExpression(), !15781)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15781)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15783)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15781)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15783)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !16021
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15787)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15787)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !15787)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !15789)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !15791)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !15792)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !15789)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !15791)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !15792)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !16022 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15794)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !15796)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !16023
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !15796)
  %i.as = add i64 %i.ar, %i.aq, !dbg !16024       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !16024
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15798)
  call void @llvm.assume(i1 %i.at), !dbg !16025, !noalias !15961
  %i.au = sub i64 0, %.val1.i.i, !dbg !16026
  %i.av = and i64 %i.as, %i.au, !dbg !16027       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !15799)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !15801)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !16028
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !15801)
  %i.ax = add i64 %i.aw, %i.av, !dbg !16029       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !16029
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15803)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !16030, !noalias !15961
  call void @llvm.assume(i1 %i.ba), !dbg !16030, !noalias !15961
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15805)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15806)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15805)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15806)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15805)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15806)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !16031
  call void @llvm.assume(i1 %i.bb), !dbg !16032, !noalias !15961
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15807)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15808)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15807)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15808)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !15808)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !15810)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !15961
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !15810)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15807)
    #dbg_value(ptr poison, !4207, !DIExpression(), !15812)
    #dbg_value(ptr poison, !4214, !DIExpression(), !15814)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15812)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15814)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15816)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15818)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15812)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15814)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15816)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15818)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15812)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15814)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15816)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15818)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !16033
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !16033

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !16034
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15818)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15816)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15814)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15812)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15807)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !16035
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !15807)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !15812)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !15814)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !15816)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !15818)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !16036, !noalias !15968
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !16037

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15994, !noalias !15960
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !15995

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !16038 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !16038 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !16038
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !15819)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !15821)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !15823)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !15825)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !16039
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !16040
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !16041
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !15826)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !15828)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !16042
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !15964)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !15829)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !16043 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15751)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15751)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !16044   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15964)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !15830)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !15713)
  call void @llvm.experimental.noalias.scope.decl(metadata !15969), !dbg !16045
    #dbg_value(ptr poison, !5468, !DIExpression(DW_OP_deref, DW_OP_deref), !15834)
    #dbg_value(ptr %0, !5472, !DIExpression(), !15834)
    #dbg_value(ptr %0, !5475, !DIExpression(), !15836)
    #dbg_value(ptr %0, !5486, !DIExpression(), !15838)
    #dbg_value(i64 %i.bj, !5473, !DIExpression(), !15834)
    #dbg_value(i64 %i.bj, !5479, !DIExpression(), !15836)
    #dbg_value(i64 %i.bj, !5491, !DIExpression(), !15840)
    #dbg_value(i64 %i.bj, !5495, !DIExpression(), !15842)
    #dbg_value(i64 1, !5497, !DIExpression(), !15846)
  %i.bl = load ptr, ptr %0, align 8, !dbg !16046, !alias.scope !15969, !noalias !15970, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5492, !DIExpression(), !15840)
    #dbg_value(ptr %i.bl, !5496, !DIExpression(), !15842)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !16047
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.bl, i64 %i.bm, !dbg !16048
    #dbg_value(ptr poison, !5501, !DIExpression(), !15848)
    #dbg_value(ptr poison, !5499, !DIExpression(), !15849)
    #dbg_value(ptr %i.bn, !5496, !DIExpression(), !15846)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32, !dbg !16049
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !16050, !noalias !15971, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5503, !DIExpression(DW_OP_deref), !15851)
    #dbg_value(ptr %i.bo, !5506, !DIExpression(), !15851)
    #dbg_value(ptr %.val.i, !5509, !DIExpression(), !15853)
    #dbg_value(ptr %i.bo, !5510, !DIExpression(), !15853)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !16051 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !15854)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !15856)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !15858)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15859)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15861)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15862)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15864)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15866)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15868)
    #dbg_value(ptr poison, !4349, !DIExpression(), !15871)
    #dbg_value(ptr poison, !4362, !DIExpression(), !15872)
    #dbg_value(ptr poison, !4368, !DIExpression(), !15874)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !15872)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15875)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15875)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !16052 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !16053
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !16054, !noalias !15972
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !16055
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !16055 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !16056
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !16057, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !16052
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %i.cj, %.lr.ph.i ], !dbg !16055
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !15886)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !15887)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !15889)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !15891)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !16058
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !16059
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15892)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15892)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !16060
  %i.bw = and i64 %i.bv, %i.y, !dbg !16060        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15893)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15893)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !15895)
    #dbg_value(ptr poison, !4413, !DIExpression(), !15895)
    #dbg_value(ptr poison, !4415, !DIExpression(), !15897)
    #dbg_value(ptr poison, !4421, !DIExpression(), !15899)
    #dbg_value(ptr poison, !4421, !DIExpression(), !15901)
    #dbg_value(i64 0, !4422, !DIExpression(), !15901)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !15897)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !16061
  %i.by = load i8, ptr %i.bx, align 1, !dbg !16062, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !16063
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15905)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !16064, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !15907)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !16065
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !15909)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !15911)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !15912)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15913)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !16066
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !16066 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !15915)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !16067
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !16068
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !16068
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15917)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15917)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !16069
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !15895)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !16070

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15893)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15893)
    #dbg_value(ptr undef, !4349, !DIExpression(), !15871)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !15918)
  %i.cf = add i64 %i.ce, 16, !dbg !16071          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15875)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !16072
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15875)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !16052 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15875)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !15874)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !16053
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !15919)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !15920)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !15921)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !15922)
    #dbg_value(ptr undef, !4375, !DIExpression(), !15922)
    #dbg_value(i64 16, !4376, !DIExpression(), !15922)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !16054, !noalias !15972
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !15921)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !15923)
    #dbg_value(ptr poison, !4394, !DIExpression(), !15924)
    #dbg_value(ptr poison, !4395, !DIExpression(), !15924)
    #dbg_value(ptr poison, !4396, !DIExpression(), !15924)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !15925)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !15926)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !15927)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !15928)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !16055
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !16055 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !15886)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !16056
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !16057, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !15895)
end_hunk_12
begin_hunk_13_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs5yXxDE1DkoT_4tera:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !16404), !dbg !16432
    #dbg_value(ptr %0, !3727, !DIExpression(), !16150)
    #dbg_value(ptr %0, !3837, !DIExpression(), !16152)
    #dbg_value(ptr %0, !3861, !DIExpression(), !16154)
    #dbg_value(ptr %0, !3867, !DIExpression(), !16156)
    #dbg_value(ptr %0, !3878, !DIExpression(), !16158)
    #dbg_value(ptr %0, !3885, !DIExpression(), !16160)
    #dbg_value(ptr %0, !3891, !DIExpression(), !16162)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !16150)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !16152)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !16150)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !16152)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16150)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16150)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16150)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16152)
    #dbg_value(i64 24, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16150)
    #dbg_value(i64 24, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16152)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16150)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16152)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !16163)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !16165)
    #dbg_value(i64 0, !3875, !DIExpression(), !16156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16433, !noalias !16405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16434, !noalias !16405
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 24, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !16434
  %i.v = load ptr, ptr %i.a, align 8, !dbg !16435, !noalias !16405, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !16435
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16436
  %i.y = load i64, ptr %i.x, align 8, !dbg !16436, !noalias !16405 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16436
  %i.aa = load i64, ptr %i.z, align 8, !dbg !16436, !noalias !16405 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !16437

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16438, !noalias !16405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16439, !noalias !16405
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !16440

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !16439, !noalias !16406
  resume { ptr, i32 } %i.ab, !dbg !16441

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !16442
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !16442, !noalias !16405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16438, !noalias !16405
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16168)
    #dbg_value(i64 24, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16168)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16168)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16168)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16168)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !16168)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !16168)
  store ptr %i.e, ptr %i.b, align 8, !dbg !16443, !noalias !16405
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16443 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !16443, !noalias !16405
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16443 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16443, !noalias !16405
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16443 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !16443, !noalias !16405
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16443 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16443, !noalias !16405
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16443 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16443, !noalias !16405
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16443 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16443, !noalias !16405
    #dbg_value(ptr poison, !3865, !DIExpression(), !16169)
    #dbg_value(ptr poison, !3935, !DIExpression(), !16171)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !16174)
    #dbg_value(ptr poison, !3967, !DIExpression(), !16175)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16177)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16178)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16179)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !16444, !alias.scope !16407, !noalias !16408, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16409)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16409)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16409)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !16409)
    #dbg_value(ptr undef, !3804, !DIExpression(), !16132)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16445
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !16445

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !16446, !alias.scope !16407, !noalias !16408, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !16169)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !16171)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16409)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !16447
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16179)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !16409)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !16448
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16409)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !16449
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16409)
  br label %.preheader, !dbg !16445

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16409)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16409)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16409)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16409)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16181)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !16183)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !16450
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !16451

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16409)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16409)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !16185)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !16452 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16409)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !16187)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !16453
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !16190)
    #dbg_value(ptr poison, !4051, !DIExpression(), !16191)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16193)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16194)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16195)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !16454
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !16455 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16409)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !16456   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16409)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16409)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16409)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16181)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !16183)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !16450
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !16451

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !16457, !alias.scope !16407, !noalias !16408
  br label %._crit_edge31, !dbg !16457

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !16457 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16196)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16196)
  %i.am = sub i64 %i.aa, %i.al, !dbg !16458
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16458, !noalias !16405
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16459, !noalias !16405
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16197)
    #dbg_value(ptr %0, !4054, !DIExpression(), !16199)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !16199)
    #dbg_value(ptr %0, !4060, !DIExpression(), !16201)
    #dbg_value(ptr %0, !4066, !DIExpression(), !16203)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !16201)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !16203)
    #dbg_value(i64 1, !4064, !DIExpression(), !16201)
    #dbg_value(i64 1, !4071, !DIExpression(), !16203)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16204)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16204)
    #dbg_value(i64 32, !4073, !DIExpression(), !16205)
    #dbg_value(i64 32, !4074, !DIExpression(), !16206)
    #dbg_value(ptr %0, !4085, !DIExpression(), !16208)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !16208)
    #dbg_value(i64 32, !4089, !DIExpression(), !16208)
    #dbg_value(i64 32, !4090, !DIExpression(), !16209)
    #dbg_value(i64 0, !4092, !DIExpression(), !16210)
    #dbg_value(i64 4, !4091, !DIExpression(), !16211)
    #dbg_value(i64 4, !4093, !DIExpression(), !16212)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !16460, !noalias !16406

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !16461, !noalias !16406
  unreachable, !dbg !16461

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !16410), !dbg !16439
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !16216)
  call void @llvm.experimental.noalias.scope.decl(metadata !16411), !dbg !16462, !noalias !16406
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !16220)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16463, !alias.scope !16412, !noalias !16406 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !16463, !alias.scope !16412, !noalias !16406 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16463, !alias.scope !16412, !noalias !16406, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !16222)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !16222)
    #dbg_value(ptr poison, !4112, !DIExpression(), !16222)
    #dbg_value(ptr poison, !4116, !DIExpression(), !16224)
    #dbg_value(ptr poison, !4121, !DIExpression(), !16226)
    #dbg_value(ptr poison, !4130, !DIExpression(), !16228)
    #dbg_value(ptr poison, !4154, !DIExpression(), !16230)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !16464
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !16465

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !16463, !alias.scope !16412, !noalias !16406
    #dbg_value(ptr poison, !4125, !DIExpression(), !16226)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16226)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16228)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16226)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16228)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !16466
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16232)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16232)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !16232)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !16234)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !16236)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !16237)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !16234)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !16236)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !16237)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !16467 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16239)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !16241)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !16468
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !16241)
  %i.as = add i64 %i.ar, %i.aq, !dbg !16469       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !16469
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16243)
  call void @llvm.assume(i1 %i.at), !dbg !16470, !noalias !16406
  %i.au = sub i64 0, %.val1.i.i, !dbg !16471
  %i.av = and i64 %i.as, %i.au, !dbg !16472       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !16244)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !16246)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !16473
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !16246)
  %i.ax = add i64 %i.aw, %i.av, !dbg !16474       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !16474
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16248)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !16475, !noalias !16406
  call void @llvm.assume(i1 %i.ba), !dbg !16475, !noalias !16406
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16250)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16251)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16250)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16251)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16250)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16251)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !16476
  call void @llvm.assume(i1 %i.bb), !dbg !16477, !noalias !16406
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16252)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16253)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16252)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16253)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !16253)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !16255)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !16406
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !16255)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16252)
    #dbg_value(ptr poison, !4207, !DIExpression(), !16257)
    #dbg_value(ptr poison, !4214, !DIExpression(), !16259)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16257)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16259)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16261)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16263)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16257)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16259)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16261)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16263)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16257)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16259)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16261)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16263)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !16478
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !16478

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !16479
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16263)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16261)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16259)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16257)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16252)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !16480
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !16252)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !16257)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !16259)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !16261)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !16263)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !16481, !noalias !16413
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !16482

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16439, !noalias !16405
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !16440

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !16483 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !16483 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !16483
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !16264)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !16266)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !16268)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !16270)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !16484
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !16485
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !16486
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !16271)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !16273)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !16487
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16409)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !16274)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !16488 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16196)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16196)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !16489   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16409)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !16275)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !16158)
  call void @llvm.experimental.noalias.scope.decl(metadata !16414), !dbg !16490
    #dbg_value(ptr poison, !5515, !DIExpression(DW_OP_deref, DW_OP_deref), !16279)
    #dbg_value(ptr %0, !5519, !DIExpression(), !16279)
    #dbg_value(ptr %0, !5522, !DIExpression(), !16281)
    #dbg_value(ptr %0, !5538, !DIExpression(), !16283)
    #dbg_value(i64 %i.bj, !5520, !DIExpression(), !16279)
    #dbg_value(i64 %i.bj, !5531, !DIExpression(), !16281)
    #dbg_value(i64 %i.bj, !5543, !DIExpression(), !16285)
    #dbg_value(i64 %i.bj, !5551, !DIExpression(), !16287)
    #dbg_value(i64 1, !5555, !DIExpression(), !16291)
  %i.bl = load ptr, ptr %0, align 8, !dbg !16491, !alias.scope !16414, !noalias !16415, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5547, !DIExpression(), !16285)
    #dbg_value(ptr %i.bl, !5554, !DIExpression(), !16287)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !16492
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %i.bm, !dbg !16493
    #dbg_value(ptr poison, !5567, !DIExpression(), !16293)
    #dbg_value(ptr poison, !5561, !DIExpression(), !16294)
    #dbg_value(ptr %i.bn, !5554, !DIExpression(), !16291)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24, !dbg !16494
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !16495, !noalias !16416, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5569, !DIExpression(DW_OP_deref), !16296)
    #dbg_value(ptr %i.bo, !5572, !DIExpression(), !16296)
    #dbg_value(ptr %.val.i, !5575, !DIExpression(), !16298)
    #dbg_value(ptr %i.bo, !5576, !DIExpression(), !16298)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !16496 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !16299)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !16301)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !16303)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16304)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16306)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16307)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16309)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16311)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16313)
    #dbg_value(ptr poison, !4349, !DIExpression(), !16316)
    #dbg_value(ptr poison, !4362, !DIExpression(), !16317)
    #dbg_value(ptr poison, !4368, !DIExpression(), !16319)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !16317)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16320)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16320)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !16497 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !16498
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !16499, !noalias !16417
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !16500
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !16500 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !16501
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !16502, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !16497
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %i.cj, %.lr.ph.i ], !dbg !16500
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !16331)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !16332)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !16334)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !16336)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !16503
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !16504
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16337)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16337)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !16505
  %i.bw = and i64 %i.bv, %i.y, !dbg !16505        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16338)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16338)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !16340)
    #dbg_value(ptr poison, !4413, !DIExpression(), !16340)
    #dbg_value(ptr poison, !4415, !DIExpression(), !16342)
    #dbg_value(ptr poison, !4421, !DIExpression(), !16344)
    #dbg_value(ptr poison, !4421, !DIExpression(), !16346)
    #dbg_value(i64 0, !4422, !DIExpression(), !16346)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !16342)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !16506
  %i.by = load i8, ptr %i.bx, align 1, !dbg !16507, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !16508
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16350)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !16509, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !16352)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !16510
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !16354)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16356)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16357)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16358)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !16511
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !16511 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !16360)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !16512
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !16513
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !16513
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16362)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16362)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !16514
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !16340)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !16515

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16338)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16338)
    #dbg_value(ptr undef, !4349, !DIExpression(), !16316)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !16363)
  %i.cf = add i64 %i.ce, 16, !dbg !16516          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16320)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !16517
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16320)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !16497 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16320)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !16319)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !16498
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !16364)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !16365)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !16366)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !16367)
    #dbg_value(ptr undef, !4375, !DIExpression(), !16367)
    #dbg_value(i64 16, !4376, !DIExpression(), !16367)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !16499, !noalias !16417
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !16366)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !16368)
    #dbg_value(ptr poison, !4394, !DIExpression(), !16369)
    #dbg_value(ptr poison, !4395, !DIExpression(), !16369)
    #dbg_value(ptr poison, !4396, !DIExpression(), !16369)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !16370)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16371)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16372)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16373)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !16500
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !16500 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !16331)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !16501
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !16502, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !16340)
end_hunk_13
begin_hunk_14_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBU_5ValueEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1t_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBW_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !16849), !dbg !16877
    #dbg_value(ptr %0, !3727, !DIExpression(), !16595)
    #dbg_value(ptr %0, !3837, !DIExpression(), !16597)
    #dbg_value(ptr %0, !3861, !DIExpression(), !16599)
    #dbg_value(ptr %0, !3867, !DIExpression(), !16601)
    #dbg_value(ptr %0, !3878, !DIExpression(), !16603)
    #dbg_value(ptr %0, !3885, !DIExpression(), !16605)
    #dbg_value(ptr %0, !3891, !DIExpression(), !16607)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !16595)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !16597)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !16595)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !16597)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16595)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16595)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16595)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16597)
    #dbg_value(i64 64, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16595)
    #dbg_value(i64 64, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16597)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16595)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16597)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !16608)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !16610)
    #dbg_value(i64 0, !3875, !DIExpression(), !16601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16878, !noalias !16850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16879, !noalias !16850
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 64, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !16879
  %i.v = load ptr, ptr %i.a, align 8, !dbg !16880, !noalias !16850, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !16880
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16881
  %i.y = load i64, ptr %i.x, align 8, !dbg !16881, !noalias !16850 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16881
  %i.aa = load i64, ptr %i.z, align 8, !dbg !16881, !noalias !16850 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !16882

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16883, !noalias !16850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16884, !noalias !16850
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !16885

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !16884, !noalias !16851
  resume { ptr, i32 } %i.ab, !dbg !16886

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !16887
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !16887, !noalias !16850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16883, !noalias !16850
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16613)
    #dbg_value(i64 64, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16613)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16613)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16613)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16613)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !16613)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !16613)
  store ptr %i.e, ptr %i.b, align 8, !dbg !16888, !noalias !16850
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16888 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16850
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16888 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16850
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16888 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16850
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16888 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16888, !noalias !16850
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16888 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16888, !noalias !16850
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16888 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16888, !noalias !16850
    #dbg_value(ptr poison, !3865, !DIExpression(), !16614)
    #dbg_value(ptr poison, !3935, !DIExpression(), !16616)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !16619)
    #dbg_value(ptr poison, !3967, !DIExpression(), !16620)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16622)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16623)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16624)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !16889, !alias.scope !16852, !noalias !16853, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16854)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16854)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !16854)
    #dbg_value(ptr undef, !3804, !DIExpression(), !16577)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16890
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !16890

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !16891, !alias.scope !16852, !noalias !16853, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !16614)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !16616)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !16892
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16624)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !16854)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !16893
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16854)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !16894
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16854)
  br label %.preheader, !dbg !16890

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16854)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16854)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16854)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16626)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !16628)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !16895
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !16896

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16854)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !16630)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !16897 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !16632)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !16898
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !16635)
    #dbg_value(ptr poison, !4051, !DIExpression(), !16636)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16638)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16639)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16640)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !16899
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !16900 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16854)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !16901   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16854)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16854)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16626)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !16628)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !16895
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !16896

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !16902, !alias.scope !16852, !noalias !16853
  br label %._crit_edge31, !dbg !16902

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !16902 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16641)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16641)
  %i.am = sub i64 %i.aa, %i.al, !dbg !16903
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16903, !noalias !16850
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16904, !noalias !16850
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16642)
    #dbg_value(ptr %0, !4054, !DIExpression(), !16644)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !16644)
    #dbg_value(ptr %0, !4060, !DIExpression(), !16646)
    #dbg_value(ptr %0, !4066, !DIExpression(), !16648)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !16646)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !16648)
    #dbg_value(i64 1, !4064, !DIExpression(), !16646)
    #dbg_value(i64 1, !4071, !DIExpression(), !16648)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16649)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16649)
    #dbg_value(i64 32, !4073, !DIExpression(), !16650)
    #dbg_value(i64 32, !4074, !DIExpression(), !16651)
    #dbg_value(ptr %0, !4085, !DIExpression(), !16653)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !16653)
    #dbg_value(i64 32, !4089, !DIExpression(), !16653)
    #dbg_value(i64 32, !4090, !DIExpression(), !16654)
    #dbg_value(i64 0, !4092, !DIExpression(), !16655)
    #dbg_value(i64 4, !4091, !DIExpression(), !16656)
    #dbg_value(i64 4, !4093, !DIExpression(), !16657)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !16905, !noalias !16851

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !16906, !noalias !16851
  unreachable, !dbg !16906

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !16855), !dbg !16884
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !16661)
  call void @llvm.experimental.noalias.scope.decl(metadata !16856), !dbg !16907, !noalias !16851
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !16665)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16908, !alias.scope !16857, !noalias !16851 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !16908, !alias.scope !16857, !noalias !16851 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !16908, !alias.scope !16857, !noalias !16851, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !16667)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !16667)
    #dbg_value(ptr poison, !4112, !DIExpression(), !16667)
    #dbg_value(ptr poison, !4116, !DIExpression(), !16669)
    #dbg_value(ptr poison, !4121, !DIExpression(), !16671)
    #dbg_value(ptr poison, !4130, !DIExpression(), !16673)
    #dbg_value(ptr poison, !4154, !DIExpression(), !16675)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !16909
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !16910

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !16908, !alias.scope !16857, !noalias !16851
    #dbg_value(ptr poison, !4125, !DIExpression(), !16671)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16671)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16673)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16671)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16673)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !16911
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16677)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16677)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !16677)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !16679)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !16681)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !16682)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !16679)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !16681)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !16682)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !16912 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16684)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !16686)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !16913
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !16686)
  %i.as = add i64 %i.ar, %i.aq, !dbg !16914       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !16914
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16688)
  call void @llvm.assume(i1 %i.at), !dbg !16915, !noalias !16851
  %i.au = sub i64 0, %.val1.i.i, !dbg !16916
  %i.av = and i64 %i.as, %i.au, !dbg !16917       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !16689)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !16691)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !16918
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !16691)
  %i.ax = add i64 %i.aw, %i.av, !dbg !16919       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !16919
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16693)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !16920, !noalias !16851
  call void @llvm.assume(i1 %i.ba), !dbg !16920, !noalias !16851
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16695)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16695)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16695)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16696)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !16921
  call void @llvm.assume(i1 %i.bb), !dbg !16922, !noalias !16851
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16697)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16698)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16697)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16698)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !16698)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !16700)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !16851
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !16700)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16697)
    #dbg_value(ptr poison, !4207, !DIExpression(), !16702)
    #dbg_value(ptr poison, !4214, !DIExpression(), !16704)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16702)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16704)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16706)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !16708)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16702)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16704)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16706)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16708)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16702)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16704)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16706)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16708)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !16923
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !16923

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !16924
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16708)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16706)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16704)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16702)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16697)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !16925
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !16697)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !16702)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !16704)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !16706)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !16708)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !16926, !noalias !16858
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !16927

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16884, !noalias !16850
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !16885

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !16928 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !16928 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !16928
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !16709)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !16711)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !16713)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !16715)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !16929
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !16930
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !16931
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !16716)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !16718)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !16932
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !16854)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !16719)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !16933 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16641)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16641)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !16934   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16854)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !16720)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !16603)
  call void @llvm.experimental.noalias.scope.decl(metadata !16859), !dbg !16935
    #dbg_value(ptr poison, !5591, !DIExpression(DW_OP_deref, DW_OP_deref), !16724)
    #dbg_value(ptr %0, !5595, !DIExpression(), !16724)
    #dbg_value(ptr %0, !5598, !DIExpression(), !16726)
    #dbg_value(ptr %0, !5614, !DIExpression(), !16728)
    #dbg_value(i64 %i.bj, !5596, !DIExpression(), !16724)
    #dbg_value(i64 %i.bj, !5607, !DIExpression(), !16726)
    #dbg_value(i64 %i.bj, !5619, !DIExpression(), !16730)
    #dbg_value(i64 %i.bj, !5627, !DIExpression(), !16732)
    #dbg_value(i64 1, !5631, !DIExpression(), !16736)
  %i.bl = load ptr, ptr %0, align 8, !dbg !16936, !alias.scope !16859, !noalias !16860, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5623, !DIExpression(), !16730)
    #dbg_value(ptr %i.bl, !5630, !DIExpression(), !16732)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !16937
  %i.bn = getelementptr inbounds [64 x i8], ptr %i.bl, i64 %i.bm, !dbg !16938
    #dbg_value(ptr poison, !5643, !DIExpression(), !16738)
    #dbg_value(ptr poison, !5637, !DIExpression(), !16739)
    #dbg_value(ptr %i.bn, !5630, !DIExpression(), !16736)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -64, !dbg !16939
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !16940, !noalias !16861, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5645, !DIExpression(DW_OP_deref), !16741)
    #dbg_value(ptr %i.bo, !5648, !DIExpression(), !16741)
    #dbg_value(ptr %.val.i, !5653, !DIExpression(), !16743)
    #dbg_value(ptr %i.bo, !5657, !DIExpression(), !16743)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit unwind label %bb.f, !dbg !16941 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !16744)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !16746)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !16748)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16749)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16751)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16752)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16754)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16756)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16758)
    #dbg_value(ptr poison, !4349, !DIExpression(), !16761)
    #dbg_value(ptr poison, !4362, !DIExpression(), !16762)
    #dbg_value(ptr poison, !4368, !DIExpression(), !16764)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !16762)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16765)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16765)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !16942 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !16943
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !16944, !noalias !16862
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !16945
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !16945 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !16946
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !16947, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !16942
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !16945
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !16776)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !16777)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !16779)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !16781)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !16948
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !16949
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16782)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16782)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !16950
  %i.bw = and i64 %i.bv, %i.y, !dbg !16950        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16783)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16783)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !16785)
    #dbg_value(ptr poison, !4413, !DIExpression(), !16785)
    #dbg_value(ptr poison, !4415, !DIExpression(), !16787)
    #dbg_value(ptr poison, !4421, !DIExpression(), !16789)
    #dbg_value(ptr poison, !4421, !DIExpression(), !16791)
    #dbg_value(i64 0, !4422, !DIExpression(), !16791)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !16787)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !16951
  %i.by = load i8, ptr %i.bx, align 1, !dbg !16952, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !16953
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16795)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !16954, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !16797)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !16955
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !16799)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16801)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16802)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16803)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !16956
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !16956 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !16805)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !16957
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !16958
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !16958
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16807)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16807)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !16959
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !16785)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !16960

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBW_5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16783)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16783)
    #dbg_value(ptr undef, !4349, !DIExpression(), !16761)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !16808)
  %i.cf = add i64 %i.ce, 16, !dbg !16961          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16765)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !16962
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16765)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !16942 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16765)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !16764)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !16943
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !16809)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !16810)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !16811)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !16812)
    #dbg_value(ptr undef, !4375, !DIExpression(), !16812)
    #dbg_value(i64 16, !4376, !DIExpression(), !16812)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !16944, !noalias !16862
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !16811)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !16813)
    #dbg_value(ptr poison, !4394, !DIExpression(), !16814)
    #dbg_value(ptr poison, !4395, !DIExpression(), !16814)
    #dbg_value(ptr poison, !4396, !DIExpression(), !16814)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !16815)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !16816)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !16817)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !16818)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !16945
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !16945 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !16776)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !16946
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !16947, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !16785)
end_hunk_14
begin_hunk_15_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBU_5ValueEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1t_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBW_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17294), !dbg !17322
    #dbg_value(ptr %0, !3727, !DIExpression(), !17040)
    #dbg_value(ptr %0, !3837, !DIExpression(), !17042)
    #dbg_value(ptr %0, !3861, !DIExpression(), !17044)
    #dbg_value(ptr %0, !3867, !DIExpression(), !17046)
    #dbg_value(ptr %0, !3878, !DIExpression(), !17048)
    #dbg_value(ptr %0, !3885, !DIExpression(), !17050)
    #dbg_value(ptr %0, !3891, !DIExpression(), !17052)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !17040)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !17042)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !17040)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !17042)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17040)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17040)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17040)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17042)
    #dbg_value(i64 64, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17040)
    #dbg_value(i64 64, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17042)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17040)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17042)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !17053)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !17055)
    #dbg_value(i64 0, !3875, !DIExpression(), !17046)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17323, !noalias !17295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17324, !noalias !17295
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 64, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !17324
  %i.v = load ptr, ptr %i.a, align 8, !dbg !17325, !noalias !17295, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !17325
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17326
  %i.y = load i64, ptr %i.x, align 8, !dbg !17326, !noalias !17295 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17326
  %i.aa = load i64, ptr %i.z, align 8, !dbg !17326, !noalias !17295 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !17327

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17328, !noalias !17295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17329, !noalias !17295
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !17330

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !17329, !noalias !17296
  resume { ptr, i32 } %i.ab, !dbg !17331

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17332
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !17332, !noalias !17295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17328, !noalias !17295
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17058)
    #dbg_value(i64 64, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17058)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17058)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17058)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !17058)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !17058)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !17058)
  store ptr %i.e, ptr %i.b, align 8, !dbg !17333, !noalias !17295
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17333 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17333, !noalias !17295
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17333 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17333, !noalias !17295
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17333 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !17333, !noalias !17295
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !17333 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17333, !noalias !17295
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !17333 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17333, !noalias !17295
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !17333 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17333, !noalias !17295
    #dbg_value(ptr poison, !3865, !DIExpression(), !17059)
    #dbg_value(ptr poison, !3935, !DIExpression(), !17061)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !17064)
    #dbg_value(ptr poison, !3967, !DIExpression(), !17065)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17067)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17068)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17069)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !17334, !alias.scope !17297, !noalias !17298, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17299)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17299)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17299)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !17299)
    #dbg_value(ptr undef, !3804, !DIExpression(), !17022)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !17335
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !17335

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !17336, !alias.scope !17297, !noalias !17298, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !17059)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !17061)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17299)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !17337
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17069)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !17299)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !17338
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17299)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !17339
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17299)
  br label %.preheader, !dbg !17335

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17299)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17299)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17299)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17299)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17071)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !17073)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !17340
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !17341

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17299)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17299)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !17075)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !17342 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17299)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !17077)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !17343
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !17080)
    #dbg_value(ptr poison, !4051, !DIExpression(), !17081)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17083)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17084)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17085)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !17344
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !17345 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17299)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !17346   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17299)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17299)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17299)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17071)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !17073)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !17340
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !17341

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !17347, !alias.scope !17297, !noalias !17298
  br label %._crit_edge31, !dbg !17347

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !17347 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17086)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17086)
  %i.am = sub i64 %i.aa, %i.al, !dbg !17348
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17348, !noalias !17295
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17349, !noalias !17295
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17087)
    #dbg_value(ptr %0, !4054, !DIExpression(), !17089)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !17089)
    #dbg_value(ptr %0, !4060, !DIExpression(), !17091)
    #dbg_value(ptr %0, !4066, !DIExpression(), !17093)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !17091)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !17093)
    #dbg_value(i64 1, !4064, !DIExpression(), !17091)
    #dbg_value(i64 1, !4071, !DIExpression(), !17093)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17094)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17094)
    #dbg_value(i64 32, !4073, !DIExpression(), !17095)
    #dbg_value(i64 32, !4074, !DIExpression(), !17096)
    #dbg_value(ptr %0, !4085, !DIExpression(), !17098)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !17098)
    #dbg_value(i64 32, !4089, !DIExpression(), !17098)
    #dbg_value(i64 32, !4090, !DIExpression(), !17099)
    #dbg_value(i64 0, !4092, !DIExpression(), !17100)
    #dbg_value(i64 4, !4091, !DIExpression(), !17101)
    #dbg_value(i64 4, !4093, !DIExpression(), !17102)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !17350, !noalias !17296

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !17351, !noalias !17296
  unreachable, !dbg !17351

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !17300), !dbg !17329
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !17106)
  call void @llvm.experimental.noalias.scope.decl(metadata !17301), !dbg !17352, !noalias !17296
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !17110)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17353, !alias.scope !17302, !noalias !17296 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !17353, !alias.scope !17302, !noalias !17296 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17353, !alias.scope !17302, !noalias !17296, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !17112)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !17112)
    #dbg_value(ptr poison, !4112, !DIExpression(), !17112)
    #dbg_value(ptr poison, !4116, !DIExpression(), !17114)
    #dbg_value(ptr poison, !4121, !DIExpression(), !17116)
    #dbg_value(ptr poison, !4130, !DIExpression(), !17118)
    #dbg_value(ptr poison, !4154, !DIExpression(), !17120)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !17354
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !17355

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17353, !alias.scope !17302, !noalias !17296
    #dbg_value(ptr poison, !4125, !DIExpression(), !17116)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17116)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17118)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17116)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17118)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !17356
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17122)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17122)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !17122)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !17124)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !17126)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !17127)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !17124)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !17126)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !17127)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !17357 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17129)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !17131)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !17358
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !17131)
  %i.as = add i64 %i.ar, %i.aq, !dbg !17359       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !17359
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17133)
  call void @llvm.assume(i1 %i.at), !dbg !17360, !noalias !17296
  %i.au = sub i64 0, %.val1.i.i, !dbg !17361
  %i.av = and i64 %i.as, %i.au, !dbg !17362       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !17134)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !17136)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !17363
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !17136)
  %i.ax = add i64 %i.aw, %i.av, !dbg !17364       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !17364
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17138)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !17365, !noalias !17296
  call void @llvm.assume(i1 %i.ba), !dbg !17365, !noalias !17296
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17140)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17141)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17140)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17141)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17140)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17141)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !17366
  call void @llvm.assume(i1 %i.bb), !dbg !17367, !noalias !17296
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17142)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17143)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17142)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17143)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !17143)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !17145)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !17296
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !17145)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17142)
    #dbg_value(ptr poison, !4207, !DIExpression(), !17147)
    #dbg_value(ptr poison, !4214, !DIExpression(), !17149)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17147)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17149)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17151)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17153)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17147)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17149)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17151)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17153)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17147)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17149)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17151)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17153)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !17368
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !17368

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !17369
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17153)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17151)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17149)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17147)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17142)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !17370
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !17142)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !17147)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !17149)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !17151)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !17153)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !17371, !noalias !17303
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !17372

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17329, !noalias !17295
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !17330

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !17373 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !17373 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !17373
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !17154)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !17156)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !17158)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !17160)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !17374
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !17375
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !17376
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !17161)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !17163)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !17377
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17299)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !17164)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !17378 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17086)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17086)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !17379   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17299)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !17165)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !17048)
  call void @llvm.experimental.noalias.scope.decl(metadata !17304), !dbg !17380
    #dbg_value(ptr poison, !5663, !DIExpression(DW_OP_deref, DW_OP_deref), !17169)
    #dbg_value(ptr %0, !5667, !DIExpression(), !17169)
    #dbg_value(ptr %0, !5670, !DIExpression(), !17171)
    #dbg_value(ptr %0, !5686, !DIExpression(), !17173)
    #dbg_value(i64 %i.bj, !5668, !DIExpression(), !17169)
    #dbg_value(i64 %i.bj, !5679, !DIExpression(), !17171)
    #dbg_value(i64 %i.bj, !5691, !DIExpression(), !17175)
    #dbg_value(i64 %i.bj, !5699, !DIExpression(), !17177)
    #dbg_value(i64 1, !5703, !DIExpression(), !17181)
  %i.bl = load ptr, ptr %0, align 8, !dbg !17381, !alias.scope !17304, !noalias !17305, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5695, !DIExpression(), !17175)
    #dbg_value(ptr %i.bl, !5702, !DIExpression(), !17177)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !17382
  %i.bn = getelementptr inbounds [64 x i8], ptr %i.bl, i64 %i.bm, !dbg !17383
    #dbg_value(ptr poison, !5715, !DIExpression(), !17183)
    #dbg_value(ptr poison, !5709, !DIExpression(), !17184)
    #dbg_value(ptr %i.bn, !5702, !DIExpression(), !17181)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -64, !dbg !17384
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !17385, !noalias !17306, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5717, !DIExpression(DW_OP_deref), !17186)
    #dbg_value(ptr %i.bo, !5720, !DIExpression(), !17186)
    #dbg_value(ptr %.val.i, !5723, !DIExpression(), !17188)
    #dbg_value(ptr %i.bo, !5724, !DIExpression(), !17188)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit unwind label %bb.f, !dbg !17386 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !17189)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !17191)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !17193)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17194)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17196)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17197)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17199)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17201)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17203)
    #dbg_value(ptr poison, !4349, !DIExpression(), !17206)
    #dbg_value(ptr poison, !4362, !DIExpression(), !17207)
    #dbg_value(ptr poison, !4368, !DIExpression(), !17209)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !17207)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17210)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17210)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !17387 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !17388
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !17389, !noalias !17307
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !17390
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !17390 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !17391
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !17392, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !17387
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !17390
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !17221)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !17222)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !17224)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !17226)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !17393
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !17394
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17227)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17227)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !17395
  %i.bw = and i64 %i.bv, %i.y, !dbg !17395        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17228)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17228)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !17230)
    #dbg_value(ptr poison, !4413, !DIExpression(), !17230)
    #dbg_value(ptr poison, !4415, !DIExpression(), !17232)
    #dbg_value(ptr poison, !4421, !DIExpression(), !17234)
    #dbg_value(ptr poison, !4421, !DIExpression(), !17236)
    #dbg_value(i64 0, !4422, !DIExpression(), !17236)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !17232)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !17396
  %i.by = load i8, ptr %i.bx, align 1, !dbg !17397, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !17398
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17240)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !17399, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !17242)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !17400
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !17244)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17246)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17247)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17248)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !17401
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !17401 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !17250)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !17402
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !17403
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !17403
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17252)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17252)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !17404
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !17230)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !17405

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBW_5ValueEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17228)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17228)
    #dbg_value(ptr undef, !4349, !DIExpression(), !17206)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !17253)
  %i.cf = add i64 %i.ce, 16, !dbg !17406          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17210)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !17407
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17210)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !17387 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17210)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !17209)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !17388
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !17254)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !17255)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !17256)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !17257)
    #dbg_value(ptr undef, !4375, !DIExpression(), !17257)
    #dbg_value(i64 16, !4376, !DIExpression(), !17257)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !17389, !noalias !17307
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !17256)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !17258)
    #dbg_value(ptr poison, !4394, !DIExpression(), !17259)
    #dbg_value(ptr poison, !4395, !DIExpression(), !17259)
    #dbg_value(ptr poison, !4396, !DIExpression(), !17259)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !17260)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17261)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17262)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17263)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !17390
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !17390 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !17221)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !17391
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !17392, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !17230)
end_hunk_15
begin_hunk_16_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBW_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17739), !dbg !17767
    #dbg_value(ptr %0, !3727, !DIExpression(), !17485)
    #dbg_value(ptr %0, !3837, !DIExpression(), !17487)
    #dbg_value(ptr %0, !3861, !DIExpression(), !17489)
    #dbg_value(ptr %0, !3867, !DIExpression(), !17491)
    #dbg_value(ptr %0, !3878, !DIExpression(), !17493)
    #dbg_value(ptr %0, !3885, !DIExpression(), !17495)
    #dbg_value(ptr %0, !3891, !DIExpression(), !17497)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !17485)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !17487)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !17485)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !17487)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17485)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17487)
    #dbg_value(i64 64, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(i64 64, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17487)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17487)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !17498)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !17500)
    #dbg_value(i64 0, !3875, !DIExpression(), !17491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17768, !noalias !17740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17769, !noalias !17740
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 64, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !17769
  %i.v = load ptr, ptr %i.a, align 8, !dbg !17770, !noalias !17740, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !17770
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17771
  %i.y = load i64, ptr %i.x, align 8, !dbg !17771, !noalias !17740 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17771
  %i.aa = load i64, ptr %i.z, align 8, !dbg !17771, !noalias !17740 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !17772

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17773, !noalias !17740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17774, !noalias !17740
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !17775

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !17774, !noalias !17741
  resume { ptr, i32 } %i.ab, !dbg !17776

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17777
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !17777, !noalias !17740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17773, !noalias !17740
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(i64 64, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17503)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17503)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !17503)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !17503)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !17503)
  store ptr %i.e, ptr %i.b, align 8, !dbg !17778, !noalias !17740
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17778 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17778, !noalias !17740
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17778 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17778, !noalias !17740
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17778 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !17778, !noalias !17740
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !17778 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17778, !noalias !17740
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !17778 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17778, !noalias !17740
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !17778 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17778, !noalias !17740
    #dbg_value(ptr poison, !3865, !DIExpression(), !17504)
    #dbg_value(ptr poison, !3935, !DIExpression(), !17506)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !17509)
    #dbg_value(ptr poison, !3967, !DIExpression(), !17510)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17512)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17513)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17514)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !17779, !alias.scope !17742, !noalias !17743, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17744)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17744)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !17744)
    #dbg_value(ptr undef, !3804, !DIExpression(), !17467)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !17780
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !17780

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !17781, !alias.scope !17742, !noalias !17743, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !17504)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !17506)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !17782
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17514)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !17744)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !17783
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17744)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !17784
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17744)
  br label %.preheader, !dbg !17780

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17744)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17744)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17744)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17516)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !17518)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !17785
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !17786

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17744)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !17520)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !17787 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !17522)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !17788
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !17525)
    #dbg_value(ptr poison, !4051, !DIExpression(), !17526)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17528)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17529)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17530)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !17789
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !17790 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17744)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !17791   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17744)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17744)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17516)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !17518)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !17785
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !17786

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !17792, !alias.scope !17742, !noalias !17743
  br label %._crit_edge31, !dbg !17792

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !17792 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17531)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17531)
  %i.am = sub i64 %i.aa, %i.al, !dbg !17793
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17793, !noalias !17740
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17794, !noalias !17740
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17532)
    #dbg_value(ptr %0, !4054, !DIExpression(), !17534)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !17534)
    #dbg_value(ptr %0, !4060, !DIExpression(), !17536)
    #dbg_value(ptr %0, !4066, !DIExpression(), !17538)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !17536)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !17538)
    #dbg_value(i64 1, !4064, !DIExpression(), !17536)
    #dbg_value(i64 1, !4071, !DIExpression(), !17538)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17539)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17539)
    #dbg_value(i64 32, !4073, !DIExpression(), !17540)
    #dbg_value(i64 32, !4074, !DIExpression(), !17541)
    #dbg_value(ptr %0, !4085, !DIExpression(), !17543)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !17543)
    #dbg_value(i64 32, !4089, !DIExpression(), !17543)
    #dbg_value(i64 32, !4090, !DIExpression(), !17544)
    #dbg_value(i64 0, !4092, !DIExpression(), !17545)
    #dbg_value(i64 4, !4091, !DIExpression(), !17546)
    #dbg_value(i64 4, !4093, !DIExpression(), !17547)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !17795, !noalias !17741

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !17796, !noalias !17741
  unreachable, !dbg !17796

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !17745), !dbg !17774
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !17551)
  call void @llvm.experimental.noalias.scope.decl(metadata !17746), !dbg !17797, !noalias !17741
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !17555)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17798, !alias.scope !17747, !noalias !17741 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !17798, !alias.scope !17747, !noalias !17741 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17798, !alias.scope !17747, !noalias !17741, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !17557)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !17557)
    #dbg_value(ptr poison, !4112, !DIExpression(), !17557)
    #dbg_value(ptr poison, !4116, !DIExpression(), !17559)
    #dbg_value(ptr poison, !4121, !DIExpression(), !17561)
    #dbg_value(ptr poison, !4130, !DIExpression(), !17563)
    #dbg_value(ptr poison, !4154, !DIExpression(), !17565)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !17799
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !17800

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17798, !alias.scope !17747, !noalias !17741
    #dbg_value(ptr poison, !4125, !DIExpression(), !17561)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17561)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17563)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17561)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17563)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !17801
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17567)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17567)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !17567)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !17569)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !17571)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !17572)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !17569)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !17571)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !17572)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !17802 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17574)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !17576)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !17803
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !17576)
  %i.as = add i64 %i.ar, %i.aq, !dbg !17804       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !17804
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17578)
  call void @llvm.assume(i1 %i.at), !dbg !17805, !noalias !17741
  %i.au = sub i64 0, %.val1.i.i, !dbg !17806
  %i.av = and i64 %i.as, %i.au, !dbg !17807       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !17579)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !17581)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !17808
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !17581)
  %i.ax = add i64 %i.aw, %i.av, !dbg !17809       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !17809
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17583)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !17810, !noalias !17741
  call void @llvm.assume(i1 %i.ba), !dbg !17810, !noalias !17741
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17585)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17586)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17585)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17586)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17585)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17586)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !17811
  call void @llvm.assume(i1 %i.bb), !dbg !17812, !noalias !17741
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17587)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17588)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17587)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17588)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !17588)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !17590)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !17741
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !17590)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17587)
    #dbg_value(ptr poison, !4207, !DIExpression(), !17592)
    #dbg_value(ptr poison, !4214, !DIExpression(), !17594)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17592)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17594)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17596)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !17598)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17592)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17594)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17596)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17598)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17592)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17594)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17596)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17598)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !17813
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !17813

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !17814
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17598)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17596)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17594)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17592)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !17587)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !17815
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !17587)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !17592)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !17594)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !17596)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !17598)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !17816, !noalias !17748
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !17817

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17774, !noalias !17740
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !17775

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !17818 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !17818 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !17818
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !17599)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !17601)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !17603)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !17605)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !17819
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !17820
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !17821
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !17606)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !17608)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !17822
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !17744)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !17609)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !17823 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17531)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17531)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !17824   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17744)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !17610)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !17493)
  call void @llvm.experimental.noalias.scope.decl(metadata !17749), !dbg !17825
    #dbg_value(ptr poison, !5739, !DIExpression(DW_OP_deref, DW_OP_deref), !17614)
    #dbg_value(ptr %0, !5743, !DIExpression(), !17614)
    #dbg_value(ptr %0, !5746, !DIExpression(), !17616)
    #dbg_value(ptr %0, !5762, !DIExpression(), !17618)
    #dbg_value(i64 %i.bj, !5744, !DIExpression(), !17614)
    #dbg_value(i64 %i.bj, !5755, !DIExpression(), !17616)
    #dbg_value(i64 %i.bj, !5767, !DIExpression(), !17620)
    #dbg_value(i64 %i.bj, !5775, !DIExpression(), !17622)
    #dbg_value(i64 1, !5779, !DIExpression(), !17626)
  %i.bl = load ptr, ptr %0, align 8, !dbg !17826, !alias.scope !17749, !noalias !17750, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5771, !DIExpression(), !17620)
    #dbg_value(ptr %i.bl, !5778, !DIExpression(), !17622)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !17827
  %i.bn = getelementptr inbounds [64 x i8], ptr %i.bl, i64 %i.bm, !dbg !17828
    #dbg_value(ptr poison, !5791, !DIExpression(), !17628)
    #dbg_value(ptr poison, !5785, !DIExpression(), !17629)
    #dbg_value(ptr %i.bn, !5778, !DIExpression(), !17626)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -64, !dbg !17829
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !17830, !noalias !17751, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5793, !DIExpression(DW_OP_deref), !17631)
    #dbg_value(ptr %i.bo, !5796, !DIExpression(), !17631)
    #dbg_value(ptr %.val.i, !5800, !DIExpression(), !17633)
    #dbg_value(ptr %i.bo, !5804, !DIExpression(), !17633)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit unwind label %bb.f, !dbg !17831 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !17634)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !17636)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !17638)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17639)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17641)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17642)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17644)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17646)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17648)
    #dbg_value(ptr poison, !4349, !DIExpression(), !17651)
    #dbg_value(ptr poison, !4362, !DIExpression(), !17652)
    #dbg_value(ptr poison, !4368, !DIExpression(), !17654)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !17652)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17655)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17655)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !17832 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !17833
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !17834, !noalias !17752
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !17835
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !17835 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !17836
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !17837, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !17832
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ], [ %i.cj, %.lr.ph.i ], !dbg !17835
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !17666)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !17667)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !17669)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !17671)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !17838
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !17839
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17672)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17672)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !17840
  %i.bw = and i64 %i.bv, %i.y, !dbg !17840        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17673)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17673)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !17675)
    #dbg_value(ptr poison, !4413, !DIExpression(), !17675)
    #dbg_value(ptr poison, !4415, !DIExpression(), !17677)
    #dbg_value(ptr poison, !4421, !DIExpression(), !17679)
    #dbg_value(ptr poison, !4421, !DIExpression(), !17681)
    #dbg_value(i64 0, !4422, !DIExpression(), !17681)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !17677)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !17841
  %i.by = load i8, ptr %i.bx, align 1, !dbg !17842, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !17843
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17685)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !17844, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !17687)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !17845
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !17689)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17691)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17692)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17693)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !17846
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !17846 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !17695)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !17847
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !17848
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !17848
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17697)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17697)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !17849
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !17675)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !17850

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BY_.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17673)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17673)
    #dbg_value(ptr undef, !4349, !DIExpression(), !17651)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !17698)
  %i.cf = add i64 %i.ce, 16, !dbg !17851          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17655)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !17852
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17655)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !17832 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17655)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !17654)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !17833
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !17699)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !17700)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !17701)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !17702)
    #dbg_value(ptr undef, !4375, !DIExpression(), !17702)
    #dbg_value(i64 16, !4376, !DIExpression(), !17702)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !17834, !noalias !17752
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !17701)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !17703)
    #dbg_value(ptr poison, !4394, !DIExpression(), !17704)
    #dbg_value(ptr poison, !4395, !DIExpression(), !17704)
    #dbg_value(ptr poison, !4396, !DIExpression(), !17704)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !17705)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17706)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17707)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17708)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !17835
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !17835 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !17666)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !17836
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !17837, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !17675)
end_hunk_16
begin_hunk_17_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReTBQ_jEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs5yXxDE1DkoT_4tera:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18184), !dbg !18212
    #dbg_value(ptr %0, !3727, !DIExpression(), !17930)
    #dbg_value(ptr %0, !3837, !DIExpression(), !17932)
    #dbg_value(ptr %0, !3861, !DIExpression(), !17934)
    #dbg_value(ptr %0, !3867, !DIExpression(), !17936)
    #dbg_value(ptr %0, !3878, !DIExpression(), !17938)
    #dbg_value(ptr %0, !3885, !DIExpression(), !17940)
    #dbg_value(ptr %0, !3891, !DIExpression(), !17942)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !17930)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !17932)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !17930)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !17932)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17930)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17930)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17930)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17932)
    #dbg_value(i64 40, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17930)
    #dbg_value(i64 40, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17932)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17930)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17932)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !17943)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !17945)
    #dbg_value(i64 0, !3875, !DIExpression(), !17936)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18213, !noalias !18185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18214, !noalias !18185
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 40, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !18214
  %i.v = load ptr, ptr %i.a, align 8, !dbg !18215, !noalias !18185, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !18215
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18216
  %i.y = load i64, ptr %i.x, align 8, !dbg !18216, !noalias !18185 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18216
  %i.aa = load i64, ptr %i.z, align 8, !dbg !18216, !noalias !18185 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !18217

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18218, !noalias !18185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18219, !noalias !18185
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !18220

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !18219, !noalias !18186
  resume { ptr, i32 } %i.ab, !dbg !18221

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18222
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !18222, !noalias !18185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18218, !noalias !18185
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 40, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17948)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17948)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !17948)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !17948)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !17948)
  store ptr %i.e, ptr %i.b, align 8, !dbg !18223, !noalias !18185
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18223 ; 2 uses
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18223, !noalias !18185
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18223 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18223, !noalias !18185
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18223 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !18223, !noalias !18185
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !18223 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18223, !noalias !18185
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !18223 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18223, !noalias !18185
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !18223 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18223, !noalias !18185
    #dbg_value(ptr poison, !3865, !DIExpression(), !17949)
    #dbg_value(ptr poison, !3935, !DIExpression(), !17951)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !17954)
    #dbg_value(ptr poison, !3967, !DIExpression(), !17955)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17957)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17958)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17959)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !18224, !alias.scope !18187, !noalias !18188, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18189)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18189)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !18189)
    #dbg_value(ptr undef, !3804, !DIExpression(), !17912)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !18225
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !18225

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !18226, !alias.scope !18187, !noalias !18188, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !17949)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !17951)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !18227
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17959)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !18189)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !18228
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18189)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !18229
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18189)
  br label %.preheader, !dbg !18225

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18189)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18189)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18189)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17961)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !17963)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !18230
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !18231

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18189)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !17965)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !18232 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !17967)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !18233
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !17970)
    #dbg_value(ptr poison, !4051, !DIExpression(), !17971)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !17973)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !17974)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !17975)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !18234
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !18235 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18189)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !18236   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18189)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18189)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17961)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !17963)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !18230
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !18231

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !18237, !alias.scope !18187, !noalias !18188
  br label %._crit_edge31, !dbg !18237

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !18237 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17976)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17976)
  %i.am = sub i64 %i.aa, %i.al, !dbg !18238
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18238, !noalias !18185
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18239, !noalias !18185
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !17977)
    #dbg_value(ptr %0, !4054, !DIExpression(), !17979)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !17979)
    #dbg_value(ptr %0, !4060, !DIExpression(), !17981)
    #dbg_value(ptr %0, !4066, !DIExpression(), !17983)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !17981)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !17983)
    #dbg_value(i64 1, !4064, !DIExpression(), !17981)
    #dbg_value(i64 1, !4071, !DIExpression(), !17983)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17984)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17984)
    #dbg_value(i64 32, !4073, !DIExpression(), !17985)
    #dbg_value(i64 32, !4074, !DIExpression(), !17986)
    #dbg_value(ptr %0, !4085, !DIExpression(), !17988)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !17988)
    #dbg_value(i64 32, !4089, !DIExpression(), !17988)
    #dbg_value(i64 32, !4090, !DIExpression(), !17989)
    #dbg_value(i64 0, !4092, !DIExpression(), !17990)
    #dbg_value(i64 4, !4091, !DIExpression(), !17991)
    #dbg_value(i64 4, !4093, !DIExpression(), !17992)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !18240, !noalias !18186

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !18241, !noalias !18186
  unreachable, !dbg !18241

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !18190), !dbg !18219
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !17996)
  call void @llvm.experimental.noalias.scope.decl(metadata !18191), !dbg !18242, !noalias !18186
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !18000)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18243, !alias.scope !18192, !noalias !18186 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !18243, !alias.scope !18192, !noalias !18186 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18243, !alias.scope !18192, !noalias !18186, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !18002)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !18002)
    #dbg_value(ptr poison, !4112, !DIExpression(), !18002)
    #dbg_value(ptr poison, !4116, !DIExpression(), !18004)
    #dbg_value(ptr poison, !4121, !DIExpression(), !18006)
    #dbg_value(ptr poison, !4130, !DIExpression(), !18008)
    #dbg_value(ptr poison, !4154, !DIExpression(), !18010)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !18244
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !18245

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18243, !alias.scope !18192, !noalias !18186
    #dbg_value(ptr poison, !4125, !DIExpression(), !18006)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18006)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18008)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18006)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18008)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !18246
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18012)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18012)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !18012)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !18014)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !18016)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !18017)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !18014)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !18016)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !18017)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !18247 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18019)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !18021)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !18248
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !18021)
  %i.as = add i64 %i.ar, %i.aq, !dbg !18249       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !18249
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18023)
  call void @llvm.assume(i1 %i.at), !dbg !18250, !noalias !18186
  %i.au = sub i64 0, %.val1.i.i, !dbg !18251
  %i.av = and i64 %i.as, %i.au, !dbg !18252       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !18024)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !18026)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !18253
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !18026)
  %i.ax = add i64 %i.aw, %i.av, !dbg !18254       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !18254
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18028)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !18255, !noalias !18186
  call void @llvm.assume(i1 %i.ba), !dbg !18255, !noalias !18186
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18030)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18031)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18030)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18031)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18030)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18031)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !18256
  call void @llvm.assume(i1 %i.bb), !dbg !18257, !noalias !18186
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18032)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18033)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18032)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18033)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !18033)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !18035)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !18186
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !18035)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18032)
    #dbg_value(ptr poison, !4207, !DIExpression(), !18037)
    #dbg_value(ptr poison, !4214, !DIExpression(), !18039)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18037)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18039)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18041)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18043)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18037)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18039)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18041)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18043)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18037)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18039)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18041)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18043)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !18258
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !18258

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !18259
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18043)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18041)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18039)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18037)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18032)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !18260
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !18032)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !18037)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !18039)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !18041)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !18043)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !18261, !noalias !18193
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !18262

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18219, !noalias !18185
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !18220

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !18263 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !18263 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !18263
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !18044)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !18046)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !18048)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !18050)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !18264
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !18265
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !18266
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !18051)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !18053)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !18267
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18189)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !18054)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !18268 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17976)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17976)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !18269   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18189)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !18055)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !17938)
  call void @llvm.experimental.noalias.scope.decl(metadata !18194), !dbg !18270
    #dbg_value(ptr poison, !5823, !DIExpression(DW_OP_deref, DW_OP_deref), !18059)
    #dbg_value(ptr %0, !5827, !DIExpression(), !18059)
    #dbg_value(ptr %0, !5830, !DIExpression(), !18061)
    #dbg_value(ptr %0, !5846, !DIExpression(), !18063)
    #dbg_value(i64 %i.bj, !5828, !DIExpression(), !18059)
    #dbg_value(i64 %i.bj, !5839, !DIExpression(), !18061)
    #dbg_value(i64 %i.bj, !5851, !DIExpression(), !18065)
    #dbg_value(i64 %i.bj, !5859, !DIExpression(), !18067)
    #dbg_value(i64 1, !5863, !DIExpression(), !18071)
  %i.bl = load ptr, ptr %0, align 8, !dbg !18271, !alias.scope !18194, !noalias !18195, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5855, !DIExpression(), !18065)
    #dbg_value(ptr %i.bl, !5862, !DIExpression(), !18067)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !18272
  %i.bn = getelementptr inbounds [40 x i8], ptr %i.bl, i64 %i.bm, !dbg !18273
    #dbg_value(ptr poison, !5875, !DIExpression(), !18073)
    #dbg_value(ptr poison, !5869, !DIExpression(), !18074)
    #dbg_value(ptr %i.bn, !5862, !DIExpression(), !18071)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -40, !dbg !18274
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !18275, !noalias !18196, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5877, !DIExpression(DW_OP_deref), !18076)
    #dbg_value(ptr %i.bo, !5880, !DIExpression(), !18076)
    #dbg_value(ptr %.val.i, !5884, !DIExpression(), !18078)
    #dbg_value(ptr %i.bo, !5885, !DIExpression(), !18078)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !18276 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !18079)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !18081)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !18083)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18084)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18086)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18087)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18089)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18091)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18093)
    #dbg_value(ptr poison, !4349, !DIExpression(), !18096)
    #dbg_value(ptr poison, !4362, !DIExpression(), !18097)
    #dbg_value(ptr poison, !4368, !DIExpression(), !18099)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !18097)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18100)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18100)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !18277 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !18278
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !18279, !noalias !18197
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !18280
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !18280 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !18281
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !18282, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !18277
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %i.cj, %.lr.ph.i ], !dbg !18280
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !18111)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !18112)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !18114)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !18116)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !18283
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !18284
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18117)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18117)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !18285
  %i.bw = and i64 %i.bv, %i.y, !dbg !18285        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18118)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18118)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !18120)
    #dbg_value(ptr poison, !4413, !DIExpression(), !18120)
    #dbg_value(ptr poison, !4415, !DIExpression(), !18122)
    #dbg_value(ptr poison, !4421, !DIExpression(), !18124)
    #dbg_value(ptr poison, !4421, !DIExpression(), !18126)
    #dbg_value(i64 0, !4422, !DIExpression(), !18126)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !18122)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !18286
  %i.by = load i8, ptr %i.bx, align 1, !dbg !18287, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !18288
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18130)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !18289, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !18132)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !18290
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !18134)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18136)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18137)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18138)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !18291
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !18291 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !18140)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !18292
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !18293
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !18293
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18142)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18142)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !18294
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !18120)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !18295

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReTBS_jEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18118)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18118)
    #dbg_value(ptr undef, !4349, !DIExpression(), !18096)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !18143)
  %i.cf = add i64 %i.ce, 16, !dbg !18296          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18100)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !18297
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18100)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !18277 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18100)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !18099)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !18278
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !18144)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !18145)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !18146)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !18147)
    #dbg_value(ptr undef, !4375, !DIExpression(), !18147)
    #dbg_value(i64 16, !4376, !DIExpression(), !18147)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !18279, !noalias !18197
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !18146)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !18148)
    #dbg_value(ptr poison, !4394, !DIExpression(), !18149)
    #dbg_value(ptr poison, !4395, !DIExpression(), !18149)
    #dbg_value(ptr poison, !4396, !DIExpression(), !18149)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !18150)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18151)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18152)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18153)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !18280
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !18280 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !18111)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !18281
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !18282, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !18120)
end_hunk_17
begin_hunk_18_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs5yXxDE1DkoT_4tera:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18629), !dbg !18657
    #dbg_value(ptr %0, !3727, !DIExpression(), !18375)
    #dbg_value(ptr %0, !3837, !DIExpression(), !18377)
    #dbg_value(ptr %0, !3861, !DIExpression(), !18379)
    #dbg_value(ptr %0, !3867, !DIExpression(), !18381)
    #dbg_value(ptr %0, !3878, !DIExpression(), !18383)
    #dbg_value(ptr %0, !3885, !DIExpression(), !18385)
    #dbg_value(ptr %0, !3891, !DIExpression(), !18387)
    #dbg_value(ptr %i.e, !3728, !DIExpression(), !18375)
    #dbg_value(ptr %i.e, !3853, !DIExpression(), !18377)
    #dbg_value(i64 %i.u, !3729, !DIExpression(), !18375)
    #dbg_value(i64 %i.u, !3855, !DIExpression(), !18377)
    #dbg_value(ptr %i.c, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18375)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18375)
    #dbg_value(i1 %3, !3731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18375)
    #dbg_value(i1 %3, !3856, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18377)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18375)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18377)
    #dbg_value(i64 16, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18375)
    #dbg_value(i64 16, !3854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18377)
    #dbg_declare(ptr %i.b, !3733, !DIExpression(), !18388)
    #dbg_declare(ptr %i.a, !3898, !DIExpression(), !18390)
    #dbg_value(i64 0, !3875, !DIExpression(), !18381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18658, !noalias !18630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18659, !noalias !18630
  call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 689) 16, i64 noundef range(i64 1, 0) %i.u, i1 noundef zeroext %3) #24, !dbg !18659
  %i.v = load ptr, ptr %i.a, align 8, !dbg !18660, !noalias !18630, !noundef !2127 ; 9 uses
  %i.w = icmp eq ptr %i.v, null, !dbg !18660
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18661
  %i.y = load i64, ptr %i.x, align 8, !dbg !18661, !noalias !18630 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18661
  %i.aa = load i64, ptr %i.z, align 8, !dbg !18661, !noalias !18630 ; 3 uses
  br i1 %i.w, label %bb.e, label %bb.g, !dbg !18662

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18663, !noalias !18630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18664, !noalias !18630
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !18665

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25, !dbg !18664, !noalias !18631
  resume { ptr, i32 } %i.ab, !dbg !18666

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18667
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !18667, !noalias !18630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18663, !noalias !18630
    #dbg_value(ptr %i.e, !3735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18393)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18393)
    #dbg_value(i64 16, !3735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18393)
    #dbg_value(ptr %i.v, !3735, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18393)
    #dbg_value(i64 %i.y, !3735, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18393)
    #dbg_value(i64 %i.aa, !3735, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18393)
    #dbg_value(i64 %.sroa.653.0.copyload.i.i, !3735, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !18393)
  store ptr %i.e, ptr %i.b, align 8, !dbg !18668, !noalias !18630
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18668 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18668, !noalias !18630
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18668 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18668, !noalias !18630
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18668 ; 3 uses
  store ptr %i.v, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !18668, !noalias !18630
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !18668 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18668, !noalias !18630
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !18668 ; 2 uses
  store i64 %i.aa, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18668, !noalias !18630
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !18668 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18668, !noalias !18630
    #dbg_value(ptr poison, !3865, !DIExpression(), !18394)
    #dbg_value(ptr poison, !3935, !DIExpression(), !18396)
    #dbg_value(<2 x i64> poison, !3958, !DIExpression(), !18399)
    #dbg_value(ptr poison, !3967, !DIExpression(), !18400)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18402)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18403)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18404)
  %i.ac = load i64, ptr %i.f, align 8, !dbg !18669, !alias.scope !18632, !noalias !18633, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18634)
    #dbg_value(i64 0, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18634)
    #dbg_value(i64 %i.ac, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18634)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !18634)
    #dbg_value(ptr undef, !3804, !DIExpression(), !18357)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !18670
  br i1 %i.ad, label %._crit_edge31, label %.preheader.lr.ph, !dbg !18670

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !dbg !18671, !alias.scope !18632, !noalias !18633, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !18394)
    #dbg_value(ptr %i.ae, !3935, !DIExpression(), !18396)
    #dbg_value(ptr %i.ae, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18634)
  %.val620 = load <16 x i8>, ptr %i.ae, align 16, !dbg !18672
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18404)
    #dbg_value(!DIArgList(<16 x i8> %.val620, <16 x i8> splat (i8 -1)), !3703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !18634)
  %i.af = icmp sgt <16 x i8> %.val620, splat (i8 -1), !dbg !18673
    #dbg_value(<16 x i1> %i.af, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18634)
  %i.ag = bitcast <16 x i1> %i.af to i16, !dbg !18674
    #dbg_value(i16 %i.ag, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18634)
  br label %.preheader, !dbg !18670

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.030 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.ac, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.027 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.028, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18634)
    #dbg_value(ptr %.sroa.0.030, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18634)
    #dbg_value(i64 %.sroa.5.029, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18634)
    #dbg_value(i16 %.sroa.13.027, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18634)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18406)
    #dbg_value(i16 %.sroa.13.027, !4007, !DIExpression(), !18408)
  %.not.i422 = icmp eq i16 %.sroa.13.027, 0, !dbg !18675
  br i1 %.not.i422, label %.noexc5, label %._crit_edge, !dbg !18676

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.124 = phi ptr [ %i.ah, %.noexc5 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.ak, %.noexc5 ], [ %.sroa.5.029, %.preheader ]
    #dbg_value(ptr %.sroa.0.124, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18634)
    #dbg_value(i64 %.sroa.5.123, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18634)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
    #dbg_value(ptr %.sroa.0.124, !4019, !DIExpression(), !18410)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16, !dbg !18677 ; 3 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18634)
    #dbg_value(ptr %i.ah, !4042, !DIExpression(), !18412)
  %.val21 = load <16 x i8>, ptr %i.ah, align 16, !dbg !18678
    #dbg_value(<2 x i64> poison, !4049, !DIExpression(), !18415)
    #dbg_value(ptr poison, !4051, !DIExpression(), !18416)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18418)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18419)
    #dbg_value(!DIArgList(<16 x i8> %.val21, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18420)
  %i.ai = icmp sgt <16 x i8> %.val21, splat (i8 -1), !dbg !18679
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !18680 ; 2 uses
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18634)
  %i.ak = add i64 %.sroa.5.123, 16, !dbg !18681   ; 2 uses
    #dbg_value(ptr %i.ah, !3703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18634)
    #dbg_value(i64 %i.ak, !3703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18634)
    #dbg_value(i16 %i.aj, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18634)
    #dbg_value(ptr undef, !3992, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18406)
    #dbg_value(i16 %i.aj, !4007, !DIExpression(), !18408)
  %.not.i4 = icmp eq i16 %i.aj, 0, !dbg !18675
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !18676

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !18682, !alias.scope !18632, !noalias !18633
  br label %._crit_edge31, !dbg !18682

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %bb.g ], !dbg !18682 ; 2 uses
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18421)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18421)
  %i.am = sub i64 %i.aa, %i.al, !dbg !18683
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18683, !noalias !18630
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18684, !noalias !18630
    #dbg_value(ptr %i.b, !3894, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18422)
    #dbg_value(ptr %0, !4054, !DIExpression(), !18424)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4057, !DIExpression(), !18424)
    #dbg_value(ptr %0, !4060, !DIExpression(), !18426)
    #dbg_value(ptr %0, !4066, !DIExpression(), !18428)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4063, !DIExpression(), !18426)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4070, !DIExpression(), !18428)
    #dbg_value(i64 1, !4064, !DIExpression(), !18426)
    #dbg_value(i64 1, !4071, !DIExpression(), !18428)
    #dbg_value(ptr %0, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18429)
    #dbg_value(i64 1, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18429)
    #dbg_value(i64 32, !4073, !DIExpression(), !18430)
    #dbg_value(i64 32, !4074, !DIExpression(), !18431)
    #dbg_value(ptr %0, !4085, !DIExpression(), !18433)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !4088, !DIExpression(), !18433)
    #dbg_value(i64 32, !4089, !DIExpression(), !18433)
    #dbg_value(i64 32, !4090, !DIExpression(), !18434)
    #dbg_value(i64 0, !4092, !DIExpression(), !18435)
    #dbg_value(i64 4, !4091, !DIExpression(), !18436)
    #dbg_value(i64 4, !4093, !DIExpression(), !18437)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit unwind label %bb.h, !dbg !18685, !noalias !18631

bb.h:                                             ; preds = %._crit_edge31
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26, !dbg !18686, !noalias !18631
  unreachable, !dbg !18686

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !18635), !dbg !18664
    #dbg_value(ptr %i.b, !4098, !DIExpression(), !18441)
  call void @llvm.experimental.noalias.scope.decl(metadata !18636), !dbg !18687, !noalias !18631
    #dbg_value(ptr %i.b, !4104, !DIExpression(), !18445)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18688, !alias.scope !18637, !noalias !18631 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !18688, !alias.scope !18637, !noalias !18631 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18688, !alias.scope !18637, !noalias !18631, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !18447)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !18447)
    #dbg_value(ptr poison, !4112, !DIExpression(), !18447)
    #dbg_value(ptr poison, !4116, !DIExpression(), !18449)
    #dbg_value(ptr poison, !4121, !DIExpression(), !18451)
    #dbg_value(ptr poison, !4130, !DIExpression(), !18453)
    #dbg_value(ptr poison, !4154, !DIExpression(), !18455)
  %i.ao = icmp eq i64 %.val3.i.i, 0, !dbg !18689
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !18690

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18688, !alias.scope !18637, !noalias !18631
    #dbg_value(ptr poison, !4125, !DIExpression(), !18451)
    #dbg_value(i64 %.val.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18451)
    #dbg_value(i64 %.val.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18453)
    #dbg_value(i64 %.val1.i.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18451)
    #dbg_value(i64 %.val1.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18453)
  %i.ap = add i64 %.val3.i.i, 1, !dbg !18691
    #dbg_value(i64 %.val.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18457)
    #dbg_value(i64 %.val1.i.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18457)
    #dbg_value(i64 %i.ap, !4163, !DIExpression(), !18457)
    #dbg_value(i64 %i.ap, !4175, !DIExpression(), !18459)
    #dbg_value(i64 %i.ap, !4180, !DIExpression(), !18461)
    #dbg_value(i64 %.val.i.i, !4164, !DIExpression(), !18462)
    #dbg_value(i64 %.val.i.i, !4176, !DIExpression(), !18459)
    #dbg_value(i64 %.val.i.i, !4186, !DIExpression(), !18461)
    #dbg_value(i64 %.val1.i.i, !4165, !DIExpression(), !18462)
  %i.aq = mul nuw i64 %.val.i.i, %i.ap, !dbg !18692 ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18464)
    #dbg_value(i64 %i.aq, !4190, !DIExpression(), !18466)
  %i.ar = add i64 %.val1.i.i, -1, !dbg !18693
    #dbg_value(i64 %i.ar, !4191, !DIExpression(), !18466)
  %i.as = add i64 %i.ar, %i.aq, !dbg !18694       ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq, !dbg !18694
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18468)
  call void @llvm.assume(i1 %i.at), !dbg !18695, !noalias !18631
  %i.au = sub i64 0, %.val1.i.i, !dbg !18696
  %i.av = and i64 %i.as, %i.au, !dbg !18697       ; 3 uses
    #dbg_value(i64 %i.av, !4166, !DIExpression(), !18469)
    #dbg_value(i64 %i.av, !4190, !DIExpression(), !18471)
  %i.aw = add i64 %.val3.i.i, 17, !dbg !18698
    #dbg_value(i64 %i.aw, !4191, !DIExpression(), !18471)
  %i.ax = add i64 %i.aw, %i.av, !dbg !18699       ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av, !dbg !18699
    #dbg_value(i1 %i.ay, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18473)
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !dbg !18700, !noalias !18631
  call void @llvm.assume(i1 %i.ba), !dbg !18700, !noalias !18631
    #dbg_value(i64 %.val1.i.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18475)
    #dbg_value(i64 %.val1.i.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18476)
    #dbg_value(i64 %i.ax, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18475)
    #dbg_value(i64 %i.ax, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18476)
    #dbg_value(i64 %i.av, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18475)
    #dbg_value(i64 %i.av, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18476)
  %i.bb = icmp ne i64 %.val1.i.i, 0, !dbg !18701
  call void @llvm.assume(i1 %i.bb), !dbg !18702, !noalias !18631
    #dbg_value(i64 %.val1.i.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18477)
    #dbg_value(i64 %.val1.i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18478)
    #dbg_value(i64 %i.ax, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18477)
    #dbg_value(i64 %i.ax, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18478)
    #dbg_value(i64 %i.av, !4139, !DIExpression(), !18478)
    #dbg_value(i64 %i.av, !4202, !DIExpression(), !18480)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !18631
    #dbg_value(ptr %.val2.i.i, !4203, !DIExpression(), !18480)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18477)
    #dbg_value(ptr poison, !4207, !DIExpression(), !18482)
    #dbg_value(ptr poison, !4214, !DIExpression(), !18484)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18482)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18484)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18486)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.av), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !18488)
    #dbg_value(i64 %.val1.i.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18482)
    #dbg_value(i64 %.val1.i.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18484)
    #dbg_value(i64 %.val1.i.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18486)
    #dbg_value(i64 %.val1.i.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18488)
    #dbg_value(i64 %i.ax, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18482)
    #dbg_value(i64 %i.ax, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18484)
    #dbg_value(i64 %i.ax, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18486)
    #dbg_value(i64 %i.ax, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18488)
  %i.bc = icmp eq i64 %i.ax, 0, !dbg !18703
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, label %bb.i, !dbg !18703

bb.i:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av, !dbg !18704
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18488)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18486)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18484)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18482)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bd), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18477)
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd, !dbg !18705
    #dbg_value(ptr %i.be, !4127, !DIExpression(), !18477)
    #dbg_value(ptr %i.be, !4211, !DIExpression(), !18482)
    #dbg_value(ptr %i.be, !4217, !DIExpression(), !18484)
    #dbg_value(ptr %i.be, !4220, !DIExpression(), !18486)
    #dbg_value(ptr %i.be, !4226, !DIExpression(), !18488)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !dbg !18706, !noalias !18638
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit, !dbg !18707

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbDKHzkXHCUM_9hashbrown3raw13RawTableInnerECs5yXxDE1DkoT_4tera.exit, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18664, !noalias !18630
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !18665

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.aj, %.noexc5 ], !dbg !18708 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.ak, %.noexc5 ], !dbg !18708 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ah, %.noexc5 ], !dbg !18708
    #dbg_value(i16 %.sroa.13.1.lcssa, !4011, !DIExpression(), !18489)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4230, !DIExpression(), !18491)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4237, !DIExpression(), !18493)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4242, !DIExpression(), !18495)
  %i.bf = add i16 %.sroa.13.1.lcssa, -1, !dbg !18709
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !18710
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !18711
    #dbg_value(i64 %i.bh, !3996, !DIExpression(), !18496)
    #dbg_value(i16 %.sroa.13.1.lcssa, !4248, !DIExpression(), !18498)
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa, !dbg !18712
    #dbg_value(i16 %i.bi, !3703, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !18634)
    #dbg_value(i64 %i.bh, !3801, !DIExpression(), !18499)
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh, !dbg !18713 ; 2 uses
    #dbg_value(i64 1, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18421)
    #dbg_value(i64 %i.bj, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18421)
  %i.bk = add i64 %.sroa.9.028, -1, !dbg !18714   ; 2 uses
    #dbg_value(i64 %i.bk, !3703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18634)
    #dbg_value(i64 %i.bj, !3736, !DIExpression(), !18500)
    #dbg_value(i64 %i.bj, !3882, !DIExpression(), !18383)
  call void @llvm.experimental.noalias.scope.decl(metadata !18639), !dbg !18715
    #dbg_value(ptr poison, !5900, !DIExpression(DW_OP_deref, DW_OP_deref), !18504)
    #dbg_value(ptr %0, !5904, !DIExpression(), !18504)
    #dbg_value(ptr %0, !5907, !DIExpression(), !18506)
    #dbg_value(ptr %0, !5923, !DIExpression(), !18508)
    #dbg_value(i64 %i.bj, !5905, !DIExpression(), !18504)
    #dbg_value(i64 %i.bj, !5916, !DIExpression(), !18506)
    #dbg_value(i64 %i.bj, !5928, !DIExpression(), !18510)
    #dbg_value(i64 %i.bj, !5936, !DIExpression(), !18512)
    #dbg_value(i64 1, !5940, !DIExpression(), !18516)
  %i.bl = load ptr, ptr %0, align 8, !dbg !18716, !alias.scope !18639, !noalias !18640, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.bl, !5932, !DIExpression(), !18510)
    #dbg_value(ptr %i.bl, !5939, !DIExpression(), !18512)
  %i.bm = sub nsw i64 0, %i.bj, !dbg !18717
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.bm, !dbg !18718
    #dbg_value(ptr poison, !5952, !DIExpression(), !18518)
    #dbg_value(ptr poison, !5946, !DIExpression(), !18519)
    #dbg_value(ptr %i.bn, !5939, !DIExpression(), !18516)
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16, !dbg !18719
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !18720, !noalias !18641, !nonnull !2127, !align !4308, !noundef !2127
    #dbg_value(ptr poison, !5954, !DIExpression(DW_OP_deref), !18521)
    #dbg_value(ptr %i.bo, !5957, !DIExpression(), !18521)
    #dbg_value(ptr %.val.i, !5960, !DIExpression(), !18523)
    #dbg_value(ptr %i.bo, !5961, !DIExpression(), !18523)
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !18721 ; 2 uses

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.bp, !3737, !DIExpression(), !18524)
    #dbg_value(i64 %i.bp, !4325, !DIExpression(), !18526)
    #dbg_value(i64 %i.bp, !4336, !DIExpression(), !18528)
    #dbg_value(ptr %i.b, !4332, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18529)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18531)
    #dbg_value(ptr %i.b, !4340, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18532)
    #dbg_value(ptr %i.b, !4343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18534)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18536)
    #dbg_value(ptr %i.b, !3867, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18538)
    #dbg_value(ptr poison, !4349, !DIExpression(), !18541)
    #dbg_value(ptr poison, !4362, !DIExpression(), !18542)
    #dbg_value(ptr poison, !4368, !DIExpression(), !18544)
    #dbg_value(i64 %i.bp, !4363, !DIExpression(), !18542)
    #dbg_value(!DIArgList(i64 %i.bp, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18545)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18545)
  %.sroa.0.07.i = and i64 %i.y, %i.bp, !dbg !18722 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.07.i, !dbg !18723
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !18724, !noalias !18642
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !18725
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !18725 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !18726
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !18727, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !18722
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ], [ %i.cj, %.lr.ph.i ], !dbg !18725
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !18556)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !18557)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !18559)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !18561)
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !18728
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !18729
    #dbg_value(i64 %i.bu, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18562)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18562)
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !18730
  %i.bw = and i64 %i.bv, %i.y, !dbg !18730        ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18563)
    #dbg_value(i64 %i.bw, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18563)
    #dbg_value(i64 %i.bw, !4408, !DIExpression(), !18565)
    #dbg_value(ptr poison, !4413, !DIExpression(), !18565)
    #dbg_value(ptr poison, !4415, !DIExpression(), !18567)
    #dbg_value(ptr poison, !4421, !DIExpression(), !18569)
    #dbg_value(ptr poison, !4421, !DIExpression(), !18571)
    #dbg_value(i64 0, !4422, !DIExpression(), !18571)
    #dbg_value(i64 %i.bw, !4419, !DIExpression(), !18567)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bw, !dbg !18731
  %i.by = load i8, ptr %i.bx, align 1, !dbg !18732, !noundef !2127
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !18733
    #dbg_value(i1 %i.bz, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18575)
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !18734, !prof !3824

bb.j:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.v, !4430, !DIExpression(), !18577)
  %.val2.i.i12 = load <16 x i8>, ptr %i.v, align 16, !dbg !18735
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !18579)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18581)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18582)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i12, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18583)
  %i.ca = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer, !dbg !18736
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !18736 ; 2 uses
    #dbg_value(i16 %i.cb, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !18585)
  %.not.i13.i = icmp ne i16 %i.cb, 0, !dbg !18737
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !18738
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !18738
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18587)
    #dbg_value(i64 %i.cd, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18587)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !18739
    #dbg_value(i64 %i.cd, !4408, !DIExpression(), !18565)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !18740

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs5yXxDE1DkoT_4tera.exit ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18563)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18563)
    #dbg_value(ptr undef, !4349, !DIExpression(), !18541)
    #dbg_value(i64 %i.y, !4356, !DIExpression(), !18588)
  %i.cf = add i64 %i.ce, 16, !dbg !18741          ; 2 uses
    #dbg_value(i64 %i.cf, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18545)
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !18742
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.y), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18545)
  %.sroa.0.0.i13 = and i64 %i.cg, %i.y, !dbg !18722 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18545)
    #dbg_value(i64 %.sroa.0.0.i13, !4369, !DIExpression(), !18544)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i13, !dbg !18723
    #dbg_value(ptr %i.ch, !4385, !DIExpression(), !18589)
    #dbg_value(ptr %i.ch, !4381, !DIExpression(), !18590)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !18591)
    #dbg_value(ptr %i.ch, !4374, !DIExpression(), !18592)
    #dbg_value(ptr undef, !4375, !DIExpression(), !18592)
    #dbg_value(i64 16, !4376, !DIExpression(), !18592)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !18724, !noalias !18642
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !18591)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !18593)
    #dbg_value(ptr poison, !4394, !DIExpression(), !18594)
    #dbg_value(ptr poison, !4395, !DIExpression(), !18594)
    #dbg_value(ptr poison, !4396, !DIExpression(), !18594)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !18595)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !18596)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !18597)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !18598)
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !18725
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !18725 ; 2 uses
    #dbg_value(i16 %i.cj, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !18556)
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !18726
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !18727, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !18565)
end_hunk_18
begin_hunk_19_@_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReTBV_jEEE9fold_implNCINvXsG_NtB8_3mapINtB1o_4IterBV_BX_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldTRBV_RBX_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB4i_12instructions5ChunkEEuNCNvMNtB4k_4teraNtB5K_4Tera18finalize_templates0NCINvNvB1Q_8for_each4callB3A_NCINvXs1i_B1o_INtB1o_7HashMapB3B_B4d_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1U_7collect6ExtendB3A_E6extendINtB2W_3MapINtNtNtNtB7B_11collections4hash3map4IterBV_BX_EB5F_EE0E0E0E0uEB4k_:bb.a
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -40, !dbg !21390
    #dbg_value(ptr %i.ah, !20877, !DIExpression(), !20330)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24, !dbg !21391
    #dbg_value(ptr %i.ai, !20879, !DIExpression(), !20330)
  %.val.i = load ptr, ptr %2, align 8, !dbg !21392 ; 2 uses
  %.val9.i = load ptr, ptr %i.p, align 8, !dbg !21392, !nonnull !2127, !align !4308, !noundef !2127 ; 4 uses
  %.val10.i = load ptr, ptr %i.ah, align 8, !dbg !21392 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 -32, !dbg !21392
  %.val11.i = load i64, ptr %i.aj, align 8, !dbg !21392 ; 7 uses
  %.val12.i = load ptr, ptr %i.ai, align 8, !dbg !21392, !nonnull !2127, !noundef !2127 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 -16, !dbg !21392
  %.val13.i = load i64, ptr %i.ak, align 8, !dbg !21392, !noundef !2127 ; 2 uses
    #dbg_declare(ptr poison, !20891, !DIExpression(DW_OP_LLVM_fragment, 192, 1344), !20344)
    #dbg_declare(ptr poison, !20924, !DIExpression(DW_OP_LLVM_fragment, 192, 1344), !20345)
    #dbg_value(ptr poison, !20934, !DIExpression(DW_OP_deref), !20346)
    #dbg_value(ptr poison, !20935, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !20346)
    #dbg_declare(ptr poison, !20932, !DIExpression(), !20347)
    #dbg_value(ptr poison, !20933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20346)
    #dbg_value(ptr poison, !20933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20346)
    #dbg_value(ptr poison, !20941, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20353)
    #dbg_value(ptr poison, !20950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20353)
    #dbg_value(ptr poison, !20950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20353)
    #dbg_declare(ptr %i.m, !20949, !DIExpression(), !20354)
    #dbg_value(ptr @2, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20364)
    #dbg_value(i64 22, !20952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20364)
    #dbg_value(ptr @2, !20976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20374)
    #dbg_value(i64 22, !20976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20374)
    #dbg_declare(ptr poison, !21001, !DIExpression(), !20390)
    #dbg_declare(ptr poison, !21032, !DIExpression(), !20395)
    #dbg_declare(ptr poison, !21039, !DIExpression(), !20398)
    #dbg_declare(ptr poison, !21045, !DIExpression(), !20401)
    #dbg_declare(ptr poison, !21051, !DIExpression(), !20411)
    #dbg_value(i64 0, !21070, !DIExpression(), !20414)
    #dbg_value(ptr poison, !20945, !DIExpression(), !20415)
    #dbg_value(ptr poison, !21030, !DIExpression(), !20416)
    #dbg_value(ptr poison, !21026, !DIExpression(), !20417)
    #dbg_value(ptr poison, !20946, !DIExpression(), !20418)
    #dbg_value(ptr %.val9.i, !20972, !DIExpression(), !20419)
    #dbg_value(ptr %.val9.i, !21078, !DIExpression(), !20422)
    #dbg_value(ptr %.val12.i, !20973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20419)
    #dbg_value(ptr %.val12.i, !21083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20422)
    #dbg_value(i64 %.val13.i, !20973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20419)
    #dbg_value(i64 %.val13.i, !21083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20422)
    #dbg_value(ptr %.val9.i, !21086, !DIExpression(), !20427)
    #dbg_value(ptr %.val12.i, !21090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20427)
    #dbg_value(ptr %.val12.i, !21094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20430)
    #dbg_value(i64 %.val13.i, !21090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20427)
    #dbg_value(i64 %.val13.i, !21094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20430)
    #dbg_value(ptr %.val9.i, !21100, !DIExpression(), !20433)
    #dbg_value(ptr %.val9.i, !21105, !DIExpression(), !20436)
  %i.al = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24, !dbg !21393
  %i.am = load i64, ptr %i.al, align 8, !dbg !21393, !alias.scope !21110, !noalias !21111, !noundef !2127
  %i.an = icmp eq i64 %i.am, 0, !dbg !21394
  br i1 %i.an, label %select.unfold.i.i.i, label %bb.c, !dbg !21395

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32, !dbg !21396
    #dbg_value(ptr %i.ao, !21097, !DIExpression(), !20430)
  %i.ap = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !dbg !21397, !noalias !21112 ; 2 uses
    #dbg_value(i64 %i.ap, !21091, !DIExpression(), !20442)
    #dbg_value(i64 %i.ap, !21113, !DIExpression(), !20450)
    #dbg_value(ptr %.val9.i, !21128, !DIExpression(), !20450)
    #dbg_value(ptr %.val12.i, !21129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20450)
    #dbg_value(i64 %.val13.i, !21129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20450)
  call void @llvm.experimental.noalias.scope.decl(metadata !21132), !dbg !21398
    #dbg_value(ptr poison, !4669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20458)
    #dbg_value(ptr %.val12.i, !21138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20459)
    #dbg_value(i64 %.val13.i, !21138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20459)
    #dbg_value(ptr %.val9.i, !21136, !DIExpression(), !20459)
    #dbg_value(i64 %i.ap, !21137, !DIExpression(), !20459)
  call void @llvm.experimental.noalias.scope.decl(metadata !21142), !dbg !21399
    #dbg_value(ptr poison, !4700, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !20463)
    #dbg_value(ptr poison, !4706, !DIExpression(), !20465)
    #dbg_value(ptr %.val9.i, !4681, !DIExpression(), !20458)
    #dbg_value(ptr %.val9.i, !4709, !DIExpression(), !20467)
    #dbg_value(ptr %.val9.i, !4715, !DIExpression(), !20469)
    #dbg_value(i64 %i.ap, !4682, !DIExpression(), !20458)
    #dbg_value(i64 %i.ap, !4718, !DIExpression(), !20471)
    #dbg_value(i64 %i.ap, !4713, !DIExpression(), !20467)
    #dbg_value(ptr undef, !4669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20458)
    #dbg_value(ptr poison, !4669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20458)
    #dbg_value(i8 -1, !4720, !DIExpression(), !20474)
  %i.aq = lshr i64 %i.ap, 57, !dbg !21400
  %i.ar = trunc nuw nsw i64 %i.aq to i8, !dbg !21401
    #dbg_value(i8 %i.ar, !4683, !DIExpression(), !20475)
    #dbg_value(i8 %i.ar, !4720, !DIExpression(), !20477)
  %i.as = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !21402
  %i.at = load i64, ptr %i.as, align 8, !dbg !21402, !alias.scope !21143, !noalias !21144, !noundef !2127 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.ap, i64 %i.at), !4684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20479)
    #dbg_value(i64 0, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20479)
  %i.au = load ptr, ptr %.val9.i, align 8, !alias.scope !21143, !noalias !21144, !nonnull !2127, !noundef !2127 ; 2 uses
  %i.av = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d, !dbg !21403

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.bn, %bb.f ], !dbg !21404
  %.pn.i.i.i.i.i = phi i64 [ %i.ap, %bb.c ], [ %i.bo, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.at, !dbg !21404 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i.i, !4684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20479)
    #dbg_value(i64 %.sroa.9.0.i.i.i.i.i.i, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20479)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i.i, !4716, !DIExpression(), !20469)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.01.0.i.i.i.i.i.i, !dbg !21405
    #dbg_value(ptr %i.ax, !4731, !DIExpression(), !20482)
    #dbg_value(ptr %i.ax, !4381, !DIExpression(), !20484)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !20485)
    #dbg_value(ptr %i.ax, !4374, !DIExpression(), !20487)
    #dbg_value(ptr undef, !4375, !DIExpression(), !20487)
    #dbg_value(i64 16, !4376, !DIExpression(), !20487)
  %.sroa.0.0.copyload.i29.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 1, !dbg !21406, !noalias !21145 ; 2 uses
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !20485)
    #dbg_value(<2 x i64> poison, !4685, !DIExpression(), !20490)
    #dbg_value(<2 x i64> poison, !4724, !DIExpression(), !20477)
    #dbg_value(<2 x i64> poison, !4729, !DIExpression(), !20491)
    #dbg_value(<2 x i64> poison, !4724, !DIExpression(), !20474)
    #dbg_declare(ptr poison, !4733, !DIExpression(), !20493)
    #dbg_declare(ptr poison, !4736, !DIExpression(), !20494)
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i.i, %i.aw, !dbg !21407
    #dbg_value(<16 x i8> poison, !4725, !DIExpression(), !20495)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20497)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20498)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20499)
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !21408 ; 2 uses
    #dbg_value(i16 %i.az, !4686, !DIExpression(), !20500)
    #dbg_value(ptr undef, !4700, !DIExpression(), !20463)
    #dbg_value(i16 %i.az, !4738, !DIExpression(), !20502)
  %.not.i.not35.i.i.i.i.i = icmp eq i16 %i.az, 0, !dbg !21409
  br i1 %.not.i.not35.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !21410

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i36.i.i.i.i.i = phi i16 [ %i.bm, %bb.e ], [ %i.az, %bb.d ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i.i, !4686, !DIExpression(), !20500)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i.i, !4739, !DIExpression(), !20503)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i.i, !4741, !DIExpression(), !20505)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i.i, !4744, !DIExpression(), !20507)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i.i, !4746, !DIExpression(), !20509)
  %i.ba = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i.i.i.i, i1 true), !dbg !21411
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !21412
    #dbg_value(i64 %i.bb, !4701, !DIExpression(), !20510)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i.i, !4749, !DIExpression(), !20512)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i.i.i.i, i16 %.sroa.06.0.i36.i.i.i.i.i), !4686, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !20500)
    #dbg_value(i64 %i.bb, !4687, !DIExpression(), !20513)
  %i.bc = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bb, !dbg !21413
  %i.bd = and i64 %i.bc, %i.at, !dbg !21413
    #dbg_value(i64 %i.bd, !4688, !DIExpression(), !20514)
    #dbg_value(ptr poison, !21146, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20517)
    #dbg_value(ptr poison, !21151, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20517)
    #dbg_value(i64 %i.bd, !21150, !DIExpression(), !20517)
    #dbg_value(i64 %i.bd, !21153, !DIExpression(), !20522)
    #dbg_value(i64 %i.bd, !21161, !DIExpression(), !20526)
    #dbg_value(i64 %i.bd, !21165, !DIExpression(), !20529)
    #dbg_value(i64 1, !21167, !DIExpression(), !20535)
    #dbg_value(ptr %.val9.i, !21154, !DIExpression(), !20522)
    #dbg_value(ptr %i.au, !21162, !DIExpression(), !20526)
    #dbg_value(ptr %i.au, !21166, !DIExpression(), !20529)
  %i.be = sub nsw i64 0, %i.bd, !dbg !21414
  %i.bf = getelementptr inbounds [688 x i8], ptr %i.au, i64 %i.be, !dbg !21415 ; 5 uses
    #dbg_value(ptr poison, !21171, !DIExpression(), !20536)
    #dbg_value(ptr poison, !21169, !DIExpression(), !20537)
    #dbg_value(ptr %i.bf, !21166, !DIExpression(), !20535)
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -688, !dbg !21416
    #dbg_value(ptr poison, !21173, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20540)
    #dbg_value(ptr %i.bg, !21177, !DIExpression(), !20540)
  %i.bh = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bg), !dbg !21417, !noalias !21180
    #dbg_value(i1 %i.bh, !4771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20544)
  br i1 %i.bh, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit.i.i.i, label %bb.e, !dbg !21418, !prof !4773

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
    #dbg_declare(ptr poison, !4733, !DIExpression(), !20546)
    #dbg_declare(ptr poison, !4736, !DIExpression(), !20547)
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i.i, splat (i8 -1), !dbg !21419
    #dbg_value(<16 x i8> poison, !4726, !DIExpression(), !20548)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20550)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20551)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20552)
  %i.bj = bitcast <16 x i1> %i.bi to i16, !dbg !21420
    #dbg_value(i16 %i.bj, !4771, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20554)
  %i.bk = icmp eq i16 %i.bj, 0, !dbg !21421
  br i1 %i.bk, label %bb.f, label %select.unfold.i.i.i, !dbg !21421, !prof !3824

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = add i16 %.sroa.06.0.i36.i.i.i.i.i, -1, !dbg !21422
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i.i.i.i, i16 %i.bl), !4686, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !20500)
  %i.bm = and i16 %i.bl, %.sroa.06.0.i36.i.i.i.i.i, !dbg !21423 ; 2 uses
    #dbg_value(i16 %i.bm, !4686, !DIExpression(), !20500)
    #dbg_value(ptr undef, !4700, !DIExpression(), !20463)
    #dbg_value(i16 %i.bm, !4738, !DIExpression(), !20502)
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.bm, 0, !dbg !21409
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !21410

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
    #dbg_value(ptr undef, !4706, !DIExpression(), !20465)
    #dbg_value(i64 %i.at, !4707, !DIExpression(), !20555)
  %i.bn = add i64 %.sroa.9.0.i.i.i.i.i.i, 16, !dbg !21424 ; 2 uses
    #dbg_value(i64 %i.bn, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20479)
  %i.bo = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bn, !dbg !21425
    #dbg_value(!DIArgList(i64 %i.bo, i64 %i.at), !4684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20479)
  br label %bb.d, !dbg !21403

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
    #dbg_value(ptr %i.bf, !20965, !DIExpression(DW_OP_constu, 664, DW_OP_minus, DW_OP_stack_value), !20364)
    #dbg_value(ptr %i.bf, !20948, !DIExpression(DW_OP_constu, 664, DW_OP_minus, DW_OP_stack_value), !20556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !21426, !noalias !21112
    #dbg_value(ptr %i.bf, !20997, !DIExpression(DW_OP_constu, 664, DW_OP_minus, DW_OP_plus_uconst, 264, DW_OP_stack_value), !20557)
    #dbg_value(ptr %i.bf, !21183, !DIExpression(DW_OP_constu, 664, DW_OP_minus, DW_OP_plus_uconst, 264, DW_OP_stack_value), !20560)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
    #dbg_value(ptr %.val10.i, !20998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20561)
    #dbg_value(ptr %.val10.i, !21188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20562)
    #dbg_value(i64 %.val11.i, !20998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20561)
    #dbg_value(i64 %.val11.i, !21188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20562)
    #dbg_value(ptr %i.bf, !21192, !DIExpression(DW_OP_constu, 400, DW_OP_minus, DW_OP_stack_value), !20567)
    #dbg_value(ptr %.val10.i, !21196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20567)
    #dbg_value(ptr %.val10.i, !21200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20570)
    #dbg_value(i64 %.val11.i, !21196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20567)
    #dbg_value(i64 %.val11.i, !21200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20570)
    #dbg_value(ptr %i.bf, !21203, !DIExpression(DW_OP_constu, 400, DW_OP_minus, DW_OP_stack_value), !20573)
    #dbg_value(ptr %i.bf, !21208, !DIExpression(DW_OP_constu, 400, DW_OP_minus, DW_OP_stack_value), !20576)
  %i.bp = getelementptr inbounds i8, ptr %i.bf, i64 -376, !dbg !21427
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !21427, !alias.scope !21213, !noalias !21214, !noundef !2127
  %i.br = icmp eq i64 %i.bq, 0, !dbg !21428
  br i1 %i.br, label %select.unfold9.i.i.i, label %bb.g, !dbg !21429

bb.g:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.bf, i64 -400, !dbg !21430
    #dbg_value(ptr %i.bs, !21192, !DIExpression(), !20567)
    #dbg_value(ptr %i.bs, !21203, !DIExpression(), !20573)
    #dbg_value(ptr %i.bs, !21208, !DIExpression(), !20576)
  %i.bt = getelementptr inbounds i8, ptr %i.bf, i64 -368, !dbg !21431
    #dbg_value(ptr %i.bt, !21201, !DIExpression(), !20570)
  %i.bu = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i), !dbg !21432, !noalias !21112 ; 2 uses
    #dbg_value(i64 %i.bu, !21197, !DIExpression(), !20580)
    #dbg_value(i64 %i.bu, !21215, !DIExpression(), !20588)
    #dbg_value(ptr %i.bs, !21230, !DIExpression(), !20588)
    #dbg_value(ptr %.val10.i, !21231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20588)
    #dbg_value(i64 %.val11.i, !21231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20588)
  call void @llvm.experimental.noalias.scope.decl(metadata !21234), !dbg !21433
    #dbg_value(ptr poison, !4669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20596)
    #dbg_value(ptr %.val10.i, !21240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20597)
    #dbg_value(i64 %.val11.i, !21240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20597)
    #dbg_value(ptr %i.bs, !21238, !DIExpression(), !20597)
    #dbg_value(i64 %i.bu, !21239, !DIExpression(), !20597)
  call void @llvm.experimental.noalias.scope.decl(metadata !21244), !dbg !21434
    #dbg_value(ptr poison, !4700, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !20601)
    #dbg_value(ptr poison, !4706, !DIExpression(), !20603)
    #dbg_value(ptr %i.bs, !4681, !DIExpression(), !20596)
    #dbg_value(ptr %i.bs, !4709, !DIExpression(), !20605)
    #dbg_value(ptr %i.bs, !4715, !DIExpression(), !20607)
    #dbg_value(i64 %i.bu, !4682, !DIExpression(), !20596)
    #dbg_value(i64 %i.bu, !4718, !DIExpression(), !20609)
    #dbg_value(i64 %i.bu, !4713, !DIExpression(), !20605)
    #dbg_value(ptr undef, !4669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20596)
    #dbg_value(ptr poison, !4669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20596)
    #dbg_value(i8 -1, !4720, !DIExpression(), !20612)
  %i.bv = lshr i64 %i.bu, 57, !dbg !21435
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !21436
    #dbg_value(i8 %i.bw, !4683, !DIExpression(), !20613)
    #dbg_value(i8 %i.bw, !4720, !DIExpression(), !20615)
  %i.bx = getelementptr inbounds i8, ptr %i.bf, i64 -392, !dbg !21437
  %i.by = load i64, ptr %i.bx, align 8, !dbg !21437, !alias.scope !21245, !noalias !21246, !noundef !2127 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.bu, i64 %i.by), !4684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20617)
    #dbg_value(i64 0, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20617)
  %i.bz = load ptr, ptr %i.bs, align 8, !alias.scope !21245, !noalias !21246, !nonnull !2127, !noundef !2127 ; 2 uses
  %i.ca = insertelement <16 x i8> poison, i8 %i.bw, i64 0
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !21438

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i46.i.i.i = phi i64 [ 0, %bb.g ], [ %i.cs, %bb.j ], !dbg !21439
  %.pn.i.i47.i.i.i = phi i64 [ %i.bu, %bb.g ], [ %i.ct, %bb.j ]
  %.sroa.01.0.i.i.i48.i.i.i = and i64 %.pn.i.i47.i.i.i, %i.by, !dbg !21439 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i48.i.i.i, !4684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20617)
    #dbg_value(i64 %.sroa.9.0.i.i.i46.i.i.i, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20617)
    #dbg_value(i64 %.sroa.01.0.i.i.i48.i.i.i, !4716, !DIExpression(), !20607)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.01.0.i.i.i48.i.i.i, !dbg !21440
    #dbg_value(ptr %i.cc, !4731, !DIExpression(), !20620)
    #dbg_value(ptr %i.cc, !4381, !DIExpression(), !20622)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !20623)
    #dbg_value(ptr %i.cc, !4374, !DIExpression(), !20625)
    #dbg_value(ptr undef, !4375, !DIExpression(), !20625)
    #dbg_value(i64 16, !4376, !DIExpression(), !20625)
  %.sroa.0.0.copyload.i29.i.i49.i.i.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !21441, !noalias !21247 ; 2 uses
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !20623)
    #dbg_value(<2 x i64> poison, !4685, !DIExpression(), !20628)
    #dbg_value(<2 x i64> poison, !4724, !DIExpression(), !20615)
    #dbg_value(<2 x i64> poison, !4729, !DIExpression(), !20629)
    #dbg_value(<2 x i64> poison, !4724, !DIExpression(), !20612)
    #dbg_declare(ptr poison, !4733, !DIExpression(), !20631)
    #dbg_declare(ptr poison, !4736, !DIExpression(), !20632)
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i49.i.i.i, %i.cb, !dbg !21442
    #dbg_value(<16 x i8> poison, !4725, !DIExpression(), !20633)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20635)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20636)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20637)
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !21443 ; 2 uses
    #dbg_value(i16 %i.ce, !4686, !DIExpression(), !20638)
    #dbg_value(ptr undef, !4700, !DIExpression(), !20601)
    #dbg_value(i16 %i.ce, !4738, !DIExpression(), !20640)
  %.not.i.not35.i.i50.i.i.i = icmp eq i16 %i.ce, 0, !dbg !21444
  br i1 %.not.i.not35.i.i50.i.i.i, label %._crit_edge.i.i54.i.i.i, label %.lr.ph.i.i51.i.i.i, !dbg !21445

.lr.ph.i.i51.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.06.0.i36.i.i52.i.i.i = phi i16 [ %i.cr, %bb.i ], [ %i.ce, %bb.h ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4686, !DIExpression(), !20638)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4739, !DIExpression(), !20641)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4741, !DIExpression(), !20643)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4744, !DIExpression(), !20645)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4746, !DIExpression(), !20647)
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i52.i.i.i, i1 true), !dbg !21446
  %i.cg = zext nneg i16 %i.cf to i64, !dbg !21447
    #dbg_value(i64 %i.cg, !4701, !DIExpression(), !20648)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4749, !DIExpression(), !20650)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i52.i.i.i, i16 %.sroa.06.0.i36.i.i52.i.i.i), !4686, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !20638)
    #dbg_value(i64 %i.cg, !4687, !DIExpression(), !20651)
  %i.ch = add i64 %.sroa.01.0.i.i.i48.i.i.i, %i.cg, !dbg !21448
  %i.ci = and i64 %i.ch, %i.by, !dbg !21448
    #dbg_value(i64 %i.ci, !4688, !DIExpression(), !20652)
    #dbg_value(ptr poison, !21248, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20655)
    #dbg_value(ptr poison, !21253, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20655)
    #dbg_value(i64 %i.ci, !21252, !DIExpression(), !20655)
    #dbg_value(i64 %i.ci, !21255, !DIExpression(), !20660)
    #dbg_value(i64 %i.ci, !21266, !DIExpression(), !20664)
    #dbg_value(i64 %i.ci, !21270, !DIExpression(), !20667)
    #dbg_value(i64 1, !21272, !DIExpression(), !20673)
    #dbg_value(ptr %i.bf, !21259, !DIExpression(DW_OP_constu, 400, DW_OP_minus, DW_OP_stack_value), !20660)
    #dbg_value(ptr %i.bz, !21267, !DIExpression(), !20664)
    #dbg_value(ptr %i.bz, !21271, !DIExpression(), !20667)
  %i.cj = sub nsw i64 0, %i.ci, !dbg !21449
  %i.ck = getelementptr inbounds [192 x i8], ptr %i.bz, i64 %i.cj, !dbg !21450 ; 8 uses
    #dbg_value(ptr poison, !21276, !DIExpression(), !20674)
    #dbg_value(ptr poison, !21274, !DIExpression(), !20675)
    #dbg_value(ptr %i.ck, !21271, !DIExpression(), !20673)
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -192, !dbg !21451
    #dbg_value(ptr poison, !21278, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20678)
    #dbg_value(ptr %i.cl, !21282, !DIExpression(), !20678)
  %i.cm = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.cl), !dbg !21452, !noalias !21285
    #dbg_value(i1 %i.cm, !4771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20682)
  br i1 %i.cm, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i, label %bb.i, !dbg !21453, !prof !4773

._crit_edge.i.i54.i.i.i:                          ; preds = %bb.i, %bb.h
    #dbg_declare(ptr poison, !4733, !DIExpression(), !20684)
    #dbg_declare(ptr poison, !4736, !DIExpression(), !20685)
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i49.i.i.i, splat (i8 -1), !dbg !21454
    #dbg_value(<16 x i8> poison, !4726, !DIExpression(), !20686)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20688)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20689)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20690)
  %i.co = bitcast <16 x i1> %i.cn to i16, !dbg !21455
    #dbg_value(i16 %i.co, !4771, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20692)
  %i.cp = icmp eq i16 %i.co, 0, !dbg !21456
  br i1 %i.cp, label %bb.j, label %select.unfold9.i.i.i, !dbg !21456, !prof !3824

bb.i:                                             ; preds = %.lr.ph.i.i51.i.i.i
  %i.cq = add i16 %.sroa.06.0.i36.i.i52.i.i.i, -1, !dbg !21457
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i52.i.i.i, i16 %i.cq), !4686, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !20638)
  %i.cr = and i16 %i.cq, %.sroa.06.0.i36.i.i52.i.i.i, !dbg !21458 ; 2 uses
    #dbg_value(i16 %i.cr, !4686, !DIExpression(), !20638)
    #dbg_value(ptr undef, !4700, !DIExpression(), !20601)
    #dbg_value(i16 %i.cr, !4738, !DIExpression(), !20640)
  %.not.i.not.i.i53.i.i.i = icmp eq i16 %i.cr, 0, !dbg !21444
  br i1 %.not.i.not.i.i53.i.i.i, label %._crit_edge.i.i54.i.i.i, label %.lr.ph.i.i51.i.i.i, !dbg !21445

bb.j:                                             ; preds = %._crit_edge.i.i54.i.i.i
    #dbg_value(ptr undef, !4706, !DIExpression(), !20603)
    #dbg_value(i64 %i.by, !4707, !DIExpression(), !20693)
  %i.cs = add i64 %.sroa.9.0.i.i.i46.i.i.i, 16, !dbg !21459 ; 2 uses
    #dbg_value(i64 %i.cs, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20617)
  %i.ct = add i64 %.sroa.01.0.i.i.i48.i.i.i, %i.cs, !dbg !21460
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.by), !4684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20617)
  br label %bb.h, !dbg !21438

select.unfold.i.i.i:                              ; preds = %bb.b, %._crit_edge.i.i.i.i.i
    #dbg_value(ptr null, !20965, !DIExpression(), !20364)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !dbg !21461, !noalias !21112
  unreachable, !dbg !21461

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i: ; preds = %.lr.ph.i.i51.i.i.i
  %i.cu = getelementptr inbounds i8, ptr %i.ck, i64 -168, !dbg !21462
    #dbg_value(ptr %i.cu, !20990, !DIExpression(), !20374)
  call void @llvm.experimental.noalias.scope.decl(metadata !21286), !dbg !21463
    #dbg_value(ptr %i.cu, !21287, !DIExpression(), !20698)
  call void @llvm.experimental.noalias.scope.decl(metadata !21293), !dbg !21464
    #dbg_value(ptr %i.cu, !21296, !DIExpression(), !20703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !21465, !noalias !21301
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.cu), !dbg !21465, !noalias !21302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !21466, !noalias !21301
  %i.cv = getelementptr inbounds i8, ptr %i.ck, i64 -96, !dbg !21466
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %bb.l unwind label %bb.k, !dbg !21466, !noalias !21302

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i: ; preds = %bb.p, %bb.k
  %.pn.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.k ], [ %.pn.pn.i.i.i.i.i, %bb.p ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #25
          to label %common.resume.i.i unwind label %bb.v, !dbg !21467, !noalias !21302

bb.k:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i

bb.l:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21468, !noalias !21301
    #dbg_value(ptr %i.cu, !21305, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20709)
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 -120, !dbg !21469 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !21469, !range !7000, !alias.scope !21311, !noalias !21302, !noundef !2127
  %.not.i.i.i.i.i = icmp eq i64 %i.cy, -1, !dbg !21469
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m, !dbg !21470
end_hunk_19
begin_hunk_20_@_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReTBV_jEEE9fold_implNCINvXsG_NtB8_3mapINtB1o_4IterBV_BX_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldTRBV_RBX_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB4i_12instructions5ChunkEEuNCNvMNtB4k_4teraNtB5K_4Tera18finalize_templates0NCINvNvB1Q_8for_each4callB3A_NCINvXs1i_B1o_INtB1o_7HashMapB3B_B4d_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1U_7collect6ExtendB3A_E6extendINtB2W_3MapINtNtNtNtB7B_11collections4hash3map4IterBV_BX_EB5F_EE0E0E0E0uEB4k_:bb.a
    #dbg_value(ptr %i.j, !7002, !DIExpression(), !20712)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i unwind label %bb.v, !dbg !21475, !noalias !21302

bb.q:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !21476, !noalias !21301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21477, !noalias !21301
  br label %bb.o, !dbg !21478

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.s
  %.pn.i.i58.i.i.i = phi { ptr, i32 } [ %i.db, %bb.s ], [ %i.dd, %bb.u ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %bb.p unwind label %bb.v, !dbg !21467, !noalias !21302

bb.s:                                             ; preds = %bb.o
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !21479, !noalias !21301
  %i.dc = getelementptr inbounds i8, ptr %i.ck, i64 -144, !dbg !21479
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc)
          to label %_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.u, !dbg !21479, !noalias !21302

bb.u:                                             ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !7009, !DIExpression(), !20714)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i unwind label %bb.v, !dbg !21480, !noalias !21302

bb.v:                                             ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21481, !noalias !21302
  unreachable, !dbg !21481

common.resume.i.i:                                ; preds = %bb.ai, %bb.aa, %.body.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %.pn.pn.pn.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i ], [ %i.du, %bb.ai ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !21482

_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !21481, !noalias !21312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !21481, !noalias !21312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !21481, !noalias !21312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !21481, !noalias !21312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !21481, !noalias !21312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21467, !noalias !21301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21467, !noalias !21301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21467, !noalias !21301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !21467, !noalias !21301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !21467, !noalias !21301
  %i.df = getelementptr inbounds i8, ptr %i.ck, i64 -48, !dbg !21464
    #dbg_value(ptr %i.df, !21315, !DIExpression(), !20717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21483, !noalias !21320
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBw_NtNtBM_5utils4SpanEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneBM_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df)
          to label %.noexc.i.i.i.i unwind label %bb.y, !dbg !21483, !noalias !21321

.noexc.i.i.i.i:                                   ; preds = %_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21484, !noalias !21320
  %i.dg = getelementptr inbounds i8, ptr %i.ck, i64 -24, !dbg !21484
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i unwind label %bb.w, !dbg !21484, !noalias !21322

bb.w:                                             ; preds = %.noexc.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %.body.i.i.i.i unwind label %bb.x, !dbg !21485, !noalias !21322

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21486, !noalias !21322
  unreachable, !dbg !21486

bb.y:                                             ; preds = %_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !21464

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.w
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.y ], [ %i.dh, %bb.w ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.m) #25
          to label %common.resume.i.i unwind label %bb.z, !dbg !21464, !noalias !21112

bb.z:                                             ; preds = %.body.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21464, !noalias !21112
  unreachable, !dbg !21464

_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !21486, !noalias !21323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !21486, !noalias !21323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21485, !noalias !21320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21485, !noalias !21320
    #dbg_value(ptr %.val10.i, !21027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(ptr %.val10.i, !21021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20722)
    #dbg_value(ptr %.val10.i, !21018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20723)
    #dbg_value(i64 %.val11.i, !21027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20721)
    #dbg_value(i64 %.val11.i, !21021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20722)
    #dbg_value(i64 %.val11.i, !21018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20723)
    #dbg_value(ptr %.val10.i, !21011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20724)
    #dbg_value(ptr %.val10.i, !21008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20725)
    #dbg_value(ptr %.val10.i, !21004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20726)
    #dbg_value(ptr %.val10.i, !21035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20727)
    #dbg_value(i64 %.val11.i, !21011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20724)
    #dbg_value(i64 %.val11.i, !21008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20725)
    #dbg_value(i64 %.val11.i, !21004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20726)
    #dbg_value(i64 %.val11.i, !21035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20727)
    #dbg_value(i64 %.val11.i, !21036, !DIExpression(), !20728)
    #dbg_value(i64 %.val11.i, !21043, !DIExpression(), !20729)
    #dbg_value(i64 %.val11.i, !21049, !DIExpression(), !20730)
    #dbg_value(i64 %.val11.i, !21324, !DIExpression(), !20733)
    #dbg_value(i64 %.val11.i, !21330, !DIExpression(), !20736)
    #dbg_value(i64 %.val11.i, !21055, !DIExpression(), !20737)
    #dbg_value(i64 %.val11.i, !21075, !DIExpression(), !20414)
    #dbg_value(i64 1, !21056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20737)
    #dbg_value(i64 1, !21076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20414)
    #dbg_value(i64 1, !21056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20737)
    #dbg_value(i64 1, !21076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !21487, !noalias !21112
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %.val11.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ab unwind label %.loopexit, !dbg !21487, !noalias !21112

select.unfold9.i.i.i:                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit.i.i.i, %._crit_edge.i.i54.i.i.i
    #dbg_value(ptr null, !20990, !DIExpression(), !20374)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #29, !dbg !21488, !noalias !21112
  unreachable, !dbg !21488

.loopexit:                                        ; preds = %_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.m) #25
          to label %common.resume.i.i unwind label %bb.ag, !dbg !21489, !noalias !21112

bb.ab:                                            ; preds = %_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i
  %i.dl = load i64, ptr %i.l, align 8, !dbg !21487, !range !21334, !noalias !21112, !noundef !2127
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !21490
  %i.dn = load i64, ptr %i.w, align 8, !dbg !21491, !range !7015, !noalias !21112, !noundef !2127 ; 3 uses
  br i1 %i.dm, label %bb.ac, label %bb.ad, !dbg !21490, !prof !3824

bb.ac:                                            ; preds = %bb.ab
  %i.do = load i64, ptr %i.x, align 8, !dbg !21492, !noalias !21112
    #dbg_value(i64 %i.dn, !21058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20738)
    #dbg_value(i64 %i.do, !21058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20738)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.do) #30
          to label %bb.af unwind label %.loopexit.split-lp, !dbg !21493, !noalias !21112

bb.ad:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr %i.x, align 8, !dbg !21494, !noalias !21112, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(i64 %i.dn, !21057, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20739)
    #dbg_value(ptr %i.dp, !21057, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20739)
    #dbg_value(ptr poison, !21074, !DIExpression(), !20740)
  %i.dq = icmp ule i64 %.val11.i, %i.dn, !dbg !21495
    #dbg_value(i1 true, !21336, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20743)
  call void @llvm.assume(i1 %i.dq), !dbg !21496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !21497, !noalias !21112
    #dbg_value(i64 %i.dn, !21037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20744)
    #dbg_value(ptr %i.dp, !21037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20744)
    #dbg_value(i64 0, !21037, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20744)
  %.not45.i.i.i = icmp eq i64 %.val11.i, 0, !dbg !21498
  br i1 %.not45.i.i.i, label %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i, label %bb.ae, !dbg !21498

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %.val10.i, !21327, !DIExpression(), !20733)
    #dbg_value(ptr %.val10.i, !21331, !DIExpression(), !20736)
    #dbg_value(ptr %i.dp, !21328, !DIExpression(), !20733)
    #dbg_value(ptr %i.dp, !21332, !DIExpression(), !20736)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %.val10.i, i64 %.val11.i, i1 false), !dbg !21499, !noalias !21112
    #dbg_value(i64 %.val11.i, !21037, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20744)
  br label %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i, !dbg !21500

bb.af:                                            ; preds = %bb.ac
  unreachable

bb.ag:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21501, !noalias !21112
  unreachable, !dbg !21501

_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i: ; preds = %bb.ae, %bb.ad
    #dbg_value(i64 %.val11.i, !21037, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21502, !noalias !21341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.m, i64 168, i1 false), !dbg !21503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !21489, !noalias !21112
    #dbg_value(i64 %i.dn, !20924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20749)
    #dbg_value(i64 %i.dn, !20891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20750)
    #dbg_value(ptr %i.dp, !20924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20749)
    #dbg_value(ptr %i.dp, !20891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20750)
    #dbg_value(i64 %.val11.i, !20924, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20749)
    #dbg_value(i64 %.val11.i, !20891, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20750)
    #dbg_value(ptr poison, !20925, !DIExpression(DW_OP_deref), !20751)
    #dbg_declare(ptr poison, !20926, !DIExpression(), !20752)
    #dbg_value(ptr poison, !20895, !DIExpression(DW_OP_deref), !20753)
    #dbg_declare(ptr %i.c, !20896, !DIExpression(), !20754)
    #dbg_declare(ptr %i.b, !20897, !DIExpression(), !20755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21504, !noalias !21341
  store i64 %i.dn, ptr %i.c, align 8, !dbg !21504
  store ptr %i.dp, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !dbg !21504
  store i64 %.val11.i, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !dbg !21504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21505, !noalias !21341
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1u_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1w_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b), !dbg !21506, !noalias !21341
    #dbg_value(ptr %i.a, !21343, !DIExpression(), !20762)
  %i.ds = load i64, ptr %i.a, align 8, !dbg !21507, !range !7000, !alias.scope !21356, !noalias !21341, !noundef !2127
  %i.dt = icmp eq i64 %i.ds, -1, !dbg !21507
  br i1 %i.dt, label %_RNCINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8_4IterReTBN_jEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldTRBN_RBP_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB3o_12instructions5ChunkEEuNCNvMNtB3q_4teraNtB4Q_4Tera18finalize_templates0NCINvNvBW_8for_each4callB2G_NCINvXs1i_B8_INtB8_7HashMapB2H_B3j_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB10_7collect6ExtendB2G_E6extendINtB22_3MapINtNtNtNtB6E_11collections4hash3map4IterBN_BP_EB4L_EE0E0E0E0B3q_.exit, label %bb.ah, !dbg !21507

bb.ah:                                            ; preds = %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i
    #dbg_value(ptr %i.a, !7019, !DIExpression(), !20766)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_.exit.i.i.i.i.i unwind label %bb.ai, !dbg !21508, !noalias !21341

bb.ai:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y) #25
          to label %common.resume.i.i unwind label %bb.aj, !dbg !21508, !noalias !21341

bb.aj:                                            ; preds = %bb.ai
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21508, !noalias !21341
  unreachable, !dbg !21508

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_.exit.i.i.i.i.i: ; preds = %bb.ah
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y), !dbg !21508, !noalias !21341
  br label %_RNCINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8_4IterReTBN_jEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldTRBN_RBP_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB3o_12instructions5ChunkEEuNCNvMNtB3q_4teraNtB4Q_4Tera18finalize_templates0NCINvNvBW_8for_each4callB2G_NCINvXs1i_B8_INtB8_7HashMapB2H_B3j_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB10_7collect6ExtendB2G_E6extendINtB22_3MapINtNtNtNtB6E_11collections4hash3map4IterBN_BP_EB4L_EE0E0E0E0B3q_.exit, !dbg !21507

_RNCINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8_4IterReTBN_jEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldTRBN_RBP_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB3o_12instructions5ChunkEEuNCNvMNtB3q_4teraNtB4Q_4Tera18finalize_templates0NCINvNvBW_8for_each4callB2G_NCINvXs1i_B8_INtB8_7HashMapB2H_B3j_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB10_7collect6ExtendB2G_E6extendINtB22_3MapINtNtNtNtB6E_11collections4hash3map4IterBN_BP_EB4L_EE0E0E0E0B3q_.exit: ; preds = %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21509, !noalias !21341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21510, !noalias !21341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21510, !noalias !21341
  %i.dw = add i64 %.sroa.0.0.ph, -1, !dbg !21511
    #dbg_value(i64 %i.dw, !20801, !DIExpression(), !20807)
  br label %.outer, !dbg !21512

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.dx = phi ptr [ %i.eb, %.lr.ph.split ], [ %.lcssa4954, %.lr.ph ] ; 2 uses
  %i.dy = phi ptr [ %i.ea, %.lr.ph.split ], [ %.lcssa4852, %.lr.ph ]
    #dbg_value(ptr %i.dx, !21357, !DIExpression(), !21365)
  %.val31 = load <16 x i8>, ptr %i.dx, align 16, !dbg !21513
    #dbg_value(<2 x i64> poison, !21366, !DIExpression(), !21370)
    #dbg_value(ptr poison, !21371, !DIExpression(), !21373)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20773)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20774)
    #dbg_value(!DIArgList(<16 x i8> %.val31, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20775)
  %i.dz = icmp sgt <16 x i8> %.val31, splat (i8 -1), !dbg !21514 ; 2 uses
  store <16 x i1> %i.dz, ptr %i.n, align 8, !dbg !21515
    #dbg_value(ptr %0, !20814, !DIExpression(), !21374)
    #dbg_value(ptr %i.dy, !20822, !DIExpression(), !20827)
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -640, !dbg !21516 ; 3 uses
    #dbg_value(ptr %i.dx, !20829, !DIExpression(), !20832)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16, !dbg !21517 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.ph, !20801, !DIExpression(), !20807)
    #dbg_value(ptr %0, !20833, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20839)
  %.cast = bitcast <16 x i1> %i.dz to i16, !dbg !21376 ; 2 uses
    #dbg_value(i16 %.cast, !20840, !DIExpression(), !21375)
  %.not = icmp eq i16 %.cast, 0, !dbg !21378
  br i1 %.not, label %.lr.ph.split, label %._crit_edge, !dbg !21379

bb.ak:                                            ; preds = %.lr.ph
  ret void, !dbg !21518
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1453 {
bb.a:
    #dbg_value(ptr %0, !7026, !DIExpression(), !21527)
  %i.a = load i64, ptr %0, align 8, !dbg !21528, !range !7000, !noundef !2127
  %i.b = icmp eq i64 %i.a, -1, !dbg !21528
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !21528

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.a
  ret void, !dbg !21528

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6093, !DIExpression(), !21520)
    #dbg_value(ptr %0, !6098, !DIExpression(), !21522)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !21529

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6103, !DIExpression(), !21524)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.e, !dbg !21530

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21529
  unreachable, !dbg !21529

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !21529

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !6103, !DIExpression(), !21526)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !21531
  br label %bb.b, !dbg !21528
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 !dbg !607 {
bb.a:
    #dbg_value(ptr %0, !4098, !DIExpression(), !21579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21580), !dbg !21581
    #dbg_value(ptr %0, !4104, !DIExpression(), !21535)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21582
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21583
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !21583, !alias.scope !21580 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !21583, !alias.scope !21580 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21583
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !21583, !alias.scope !21580, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !21537)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !21537)
    #dbg_value(ptr poison, !4112, !DIExpression(), !21537)
    #dbg_value(ptr poison, !4116, !DIExpression(), !21539)
    #dbg_value(ptr poison, !4121, !DIExpression(), !21541)
    #dbg_value(ptr poison, !4130, !DIExpression(), !21543)
    #dbg_value(ptr poison, !4154, !DIExpression(), !21545)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !21584
  br i1 %i.d, label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !21585

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21583
  %.val.i = load i64, ptr %i.e, align 8, !dbg !21583, !alias.scope !21580
    #dbg_value(ptr poison, !4125, !DIExpression(), !21541)
    #dbg_value(i64 %.val.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21541)
    #dbg_value(i64 %.val.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21543)
    #dbg_value(i64 %.val1.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21541)
    #dbg_value(i64 %.val1.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21543)
  %i.f = add i64 %.val3.i, 1, !dbg !21586
    #dbg_value(i64 %.val.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21547)
    #dbg_value(i64 %.val1.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21547)
    #dbg_value(i64 %i.f, !4163, !DIExpression(), !21547)
    #dbg_value(i64 %i.f, !4175, !DIExpression(), !21549)
    #dbg_value(i64 %i.f, !4180, !DIExpression(), !21551)
    #dbg_value(i64 %.val.i, !4164, !DIExpression(), !21552)
    #dbg_value(i64 %.val.i, !4176, !DIExpression(), !21549)
    #dbg_value(i64 %.val.i, !4186, !DIExpression(), !21551)
    #dbg_value(i64 %.val1.i, !4165, !DIExpression(), !21552)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !21587   ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21554)
    #dbg_value(i64 %i.g, !4190, !DIExpression(), !21556)
  %i.h = add i64 %.val1.i, -1, !dbg !21588
    #dbg_value(i64 %i.h, !4191, !DIExpression(), !21556)
  %i.i = add i64 %i.h, %i.g, !dbg !21589          ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !21589
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21558)
  tail call void @llvm.assume(i1 %i.j), !dbg !21590
  %i.k = sub i64 0, %.val1.i, !dbg !21591
  %i.l = and i64 %i.i, %i.k, !dbg !21592          ; 3 uses
    #dbg_value(i64 %i.l, !4166, !DIExpression(), !21559)
    #dbg_value(i64 %i.l, !4190, !DIExpression(), !21561)
  %i.m = add i64 %.val3.i, 17, !dbg !21593
    #dbg_value(i64 %i.m, !4191, !DIExpression(), !21561)
  %i.n = add i64 %i.m, %i.l, !dbg !21594          ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !21594
    #dbg_value(i1 %i.o, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21563)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !21595
  tail call void @llvm.assume(i1 %i.q), !dbg !21595
    #dbg_value(i64 %.val1.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21565)
    #dbg_value(i64 %.val1.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21566)
    #dbg_value(i64 %i.n, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21565)
    #dbg_value(i64 %i.n, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21566)
    #dbg_value(i64 %i.l, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21565)
    #dbg_value(i64 %i.l, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21566)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !21596
  tail call void @llvm.assume(i1 %i.r), !dbg !21597
    #dbg_value(i64 %.val1.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21567)
    #dbg_value(i64 %.val1.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21568)
    #dbg_value(i64 %i.n, !4128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21567)
    #dbg_value(i64 %i.n, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21568)
    #dbg_value(i64 %i.l, !4139, !DIExpression(), !21568)
    #dbg_value(i64 %i.l, !4202, !DIExpression(), !21570)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
    #dbg_value(ptr %.val2.i, !4203, !DIExpression(), !21570)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21567)
    #dbg_value(ptr poison, !4207, !DIExpression(), !21572)
    #dbg_value(ptr poison, !4214, !DIExpression(), !21574)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21572)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21574)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21576)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21578)
    #dbg_value(i64 %.val1.i, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(i64 %.val1.i, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21574)
    #dbg_value(i64 %.val1.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21576)
    #dbg_value(i64 %.val1.i, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21578)
    #dbg_value(i64 %i.n, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21572)
    #dbg_value(i64 %i.n, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21574)
    #dbg_value(i64 %i.n, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21576)
    #dbg_value(i64 %i.n, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21578)
  %i.s = icmp eq i64 %i.n, 0, !dbg !21598
  br i1 %i.s, label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !21598

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !21599
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21578)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21576)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21574)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21572)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21567)
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !21600
    #dbg_value(ptr %i.u, !4127, !DIExpression(), !21567)
    #dbg_value(ptr %i.u, !4211, !DIExpression(), !21572)
    #dbg_value(ptr %i.u, !4217, !DIExpression(), !21574)
    #dbg_value(ptr %i.u, !4220, !DIExpression(), !21576)
    #dbg_value(ptr %i.u, !4226, !DIExpression(), !21578)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #27, !dbg !21601, !noalias !21580
  br label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, !dbg !21602

_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !21581
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 !dbg !21603 {
bb.a:
    #dbg_value(ptr %0, !21672, !DIExpression(), !21676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21677), !dbg !21728
    #dbg_value(ptr %0, !21678, !DIExpression(), !21608)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21729
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !21729, !alias.scope !21677
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21729
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !21729, !alias.scope !21677
  %.val2.i = load ptr, ptr %0, align 8, !dbg !21729, !alias.scope !21677, !nonnull !2127, !align !4308, !noundef !2127 ; 9 uses
    #dbg_value(ptr poison, !21680, !DIExpression(), !21621)
    #dbg_value(ptr poison, !21683, !DIExpression(), !21622)
    #dbg_value(ptr poison, !21686, !DIExpression(), !21623)
    #dbg_value(ptr poison, !21694, !DIExpression(DW_OP_deref), !21624)
    #dbg_value(ptr poison, !21695, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !21624)
    #dbg_value(ptr poison, !21693, !DIExpression(), !21624)
    #dbg_value(i64 1, !21700, !DIExpression(), !21627)
    #dbg_value(i64 1, !21703, !DIExpression(), !21630)
    #dbg_value(ptr poison, !21706, !DIExpression(), !21633)
    #dbg_value(i8 -1, !21709, !DIExpression(), !21636)
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
    #dbg_value(ptr %.val2.i, !21713, !DIExpression(), !21639)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !21730 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !21730, !noalias !21677, !noundef !2127 ; 3 uses
    #dbg_value(i64 0, !21696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(i64 %i.d, !21696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21640)
    #dbg_value(ptr undef, !21686, !DIExpression(), !21623)
    #dbg_value(ptr undef, !21683, !DIExpression(), !21622)
    #dbg_value(ptr undef, !21680, !DIExpression(), !21621)
    #dbg_value(ptr undef, !21681, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21641)
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !21731
  br i1 %.not4.i.i, label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !21732

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21684, !DIExpression(), !21642)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21701, !DIExpression(), !21627)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21704, !DIExpression(), !21630)
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !21733
    #dbg_value(i64 %i.f, !21696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21697, !DIExpression(), !21643)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21716, !DIExpression(), !21646)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21711, !DIExpression(), !21636)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21719, !DIExpression(), !21649)
    #dbg_value(ptr %.val2.i, !21717, !DIExpression(), !21646)
  %i.g = load ptr, ptr %.val2.i, align 8, !dbg !21734, !noalias !21677, !nonnull !2127, !noundef !2127
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i, !dbg !21735 ; 2 uses
    #dbg_value(ptr %i.h, !21707, !DIExpression(), !21633)
  %i.i = load i8, ptr %i.h, align 1, !dbg !21736, !noalias !21677, !noundef !2127
  %i.j = icmp eq i8 %i.i, -128, !dbg !21736
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !21737

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
    #dbg_value(ptr %.val2.i, !21710, !DIExpression(), !21636)
    #dbg_value(ptr %.val2.i, !21717, !DIExpression(), !21653)
    #dbg_value(ptr %.val2.i, !21717, !DIExpression(), !21655)
  %i.k = add i64 %.sroa.0.03.us.i.i, -16, !dbg !21738
  %i.l = load i64, ptr %i.c, align 8, !dbg !21739, !noalias !21677, !noundef !2127
  %i.m = and i64 %i.l, %i.k, !dbg !21740
  store i8 -1, ptr %i.h, align 1, !dbg !21741, !noalias !21677
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !21742, !noalias !21677, !nonnull !2127, !noundef !2127
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !21743
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !21743
  store i8 -1, ptr %i.p, align 1, !dbg !21744, !noalias !21677
  %i.q = load i64, ptr %i.e, align 8, !dbg !21745, !noalias !21677, !noundef !2127
  %i.r = add i64 %i.q, -1, !dbg !21745
  store i64 %i.r, ptr %i.e, align 8, !dbg !21745, !noalias !21677
  br label %bb.c, !dbg !21746

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
    #dbg_value(i64 %i.f, !21696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(ptr undef, !21686, !DIExpression(), !21623)
    #dbg_value(ptr undef, !21683, !DIExpression(), !21622)
    #dbg_value(ptr undef, !21680, !DIExpression(), !21621)
    #dbg_value(ptr undef, !21681, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21641)
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !21731
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.split.us.i.i, !dbg !21732

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
    #dbg_value(i64 %.sroa.0.03.i.i, !21684, !DIExpression(), !21642)
    #dbg_value(i64 %.sroa.0.03.i.i, !21701, !DIExpression(), !21627)
    #dbg_value(i64 %.sroa.0.03.i.i, !21704, !DIExpression(), !21630)
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !21733
    #dbg_value(i64 %i.s, !21696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(i64 %.sroa.0.03.i.i, !21697, !DIExpression(), !21643)
    #dbg_value(i64 %.sroa.0.03.i.i, !21716, !DIExpression(), !21646)
    #dbg_value(i64 %.sroa.0.03.i.i, !21711, !DIExpression(), !21636)
    #dbg_value(i64 %.sroa.0.03.i.i, !21719, !DIExpression(), !21649)
    #dbg_value(ptr %.val2.i, !21717, !DIExpression(), !21646)
  %i.t = load ptr, ptr %.val2.i, align 8, !dbg !21734, !noalias !21677, !nonnull !2127, !noundef !2127
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i, !dbg !21735 ; 2 uses
    #dbg_value(ptr %i.u, !21707, !DIExpression(), !21633)
  %i.v = load i8, ptr %i.u, align 1, !dbg !21736, !noalias !21677, !noundef !2127
  %i.w = icmp eq i8 %i.v, -128, !dbg !21736
  br i1 %i.w, label %bb.e, label %bb.d, !dbg !21737

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
    #dbg_value(i64 %i.s, !21696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(ptr undef, !21686, !DIExpression(), !21623)
    #dbg_value(ptr undef, !21683, !DIExpression(), !21622)
    #dbg_value(ptr undef, !21680, !DIExpression(), !21621)
    #dbg_value(ptr undef, !21681, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21641)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !21731
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.split.i.i, !dbg !21732

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !21733
    #dbg_value(ptr %.val2.i, !21710, !DIExpression(), !21636)
    #dbg_value(ptr %.val2.i, !21717, !DIExpression(), !21653)
    #dbg_value(ptr %.val2.i, !21717, !DIExpression(), !21655)
  %i.x = add i64 %.sroa.0.03.i.i, -16, !dbg !21738
  %i.y = load i64, ptr %i.c, align 8, !dbg !21739, !noalias !21677, !noundef !2127
  %i.z = and i64 %i.y, %i.x, !dbg !21740
  store i8 -1, ptr %i.u, align 1, !dbg !21741, !noalias !21677
  %i.aa = load ptr, ptr %.val2.i, align 8, !dbg !21742, !noalias !21677, !nonnull !2127, !noundef !2127
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z, !dbg !21743
  %i.ac = getelementptr i8, ptr %i.ab, i64 16, !dbg !21743
  store i8 -1, ptr %i.ac, align 1, !dbg !21744, !noalias !21677
    #dbg_value(ptr %.val.i, !21698, !DIExpression(), !21659)
    #dbg_value(ptr %.val2.i, !21720, !DIExpression(), !21649)
    #dbg_value(ptr %.val2.i, !21724, !DIExpression(), !21662)
    #dbg_value(i64 %.val1.i, !21721, !DIExpression(), !21649)
  %i.ad = load ptr, ptr %.val2.i, align 8, !dbg !21747, !noalias !21677, !nonnull !2127, !noundef !2127
  %.neg22.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !21748
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg22.i.i, !dbg !21749
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !dbg !21750, !noalias !21677, !inline_history !21665
  %i.af = load i64, ptr %i.e, align 8, !dbg !21745, !noalias !21677, !noundef !2127
  %i.ag = add i64 %i.af, -1, !dbg !21745
  store i64 %i.ag, ptr %i.e, align 8, !dbg !21745, !noalias !21677
  br label %bb.d, !dbg !21746

_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !dbg !21751, !noalias !21677, !noundef !2127 ; 3 uses
    #dbg_value(i64 %i.ah, !21726, !DIExpression(), !21668)
  %i.ai = icmp ult i64 %i.ah, 8, !dbg !21752
  %i.aj = add i64 %i.ah, 1, !dbg !21752
  %i.ak = lshr i64 %i.aj, 3, !dbg !21752
  %i.al = mul nuw i64 %i.ak, 7, !dbg !21752
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al, !dbg !21752
    #dbg_value(i64 %.sroa.04.0.i.i, !21726, !DIExpression(), !21668)
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !21753
  %i.an = load i64, ptr %i.am, align 8, !dbg !21753, !noalias !21677, !noundef !2127
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !21754
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an, !dbg !21754
  store i64 %i.ap, ptr %i.ao, align 8, !dbg !21754, !noalias !21677
  ret void, !dbg !21728
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1V_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEEENCNvMse_B1y_B1v_15clone_from_impl0EEB2Q_(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 !dbg !21755 {
bb.a:
    #dbg_value(ptr poison, !21827, !DIExpression(), !21831)
    #dbg_value(ptr poison, !21832, !DIExpression(), !21758)
    #dbg_value(ptr poison, !21835, !DIExpression(), !21764)
end_hunk_20
begin_hunk_21_@_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBT_5ValueEE14insert_no_growBV_:bb.a
    #dbg_value(i64 %1, !30455, !DIExpression(), !30461)
    #dbg_value(i64 %1, !30462, !DIExpression(), !30467)
    #dbg_declare(ptr %2, !30449, !DIExpression(), !30468)
    #dbg_declare(ptr poison, !30469, !DIExpression(), !30473)
    #dbg_declare(ptr poison, !30474, !DIExpression(), !30478)
    #dbg_value(i64 1, !30479, !DIExpression(), !30485)
    #dbg_value(ptr %0, !30456, !DIExpression(), !30488)
    #dbg_value(ptr %0, !30489, !DIExpression(), !30493)
    #dbg_value(ptr %0, !30463, !DIExpression(), !30494)
    #dbg_value(ptr %0, !30495, !DIExpression(), !30498)
    #dbg_value(ptr %0, !30489, !DIExpression(), !30500)
    #dbg_value(ptr %0, !30489, !DIExpression(), !30502)
  %.val = load ptr, ptr %0, align 8, !dbg !30540, !nonnull !2127, !noundef !2127 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30540
  %.val14 = load i64, ptr %i.a, align 8, !dbg !30540, !noundef !2127 ; 4 uses
    #dbg_value(ptr poison, !4349, !DIExpression(), !30377)
    #dbg_value(ptr poison, !4362, !DIExpression(), !30378)
    #dbg_value(ptr poison, !4368, !DIExpression(), !30380)
    #dbg_value(i64 %1, !4363, !DIExpression(), !30378)
    #dbg_value(!DIArgList(i64 %1, i64 %.val14), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30381)
    #dbg_value(i64 0, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30381)
  %.sroa.0.07.i = and i64 %.val14, %1, !dbg !30541 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i, !dbg !30542
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !dbg !30543, !noalias !30503
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !30544
  %i.d = bitcast <16 x i1> %i.c to i16, !dbg !30544 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0, !dbg !30545
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !30546, !prof !4402

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ], !dbg !30541
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ], !dbg !30544
    #dbg_value(i16 %.lcssa.i, !4399, !DIExpression(), !30392)
    #dbg_value(i16 %.lcssa.i, !4400, !DIExpression(), !30393)
    #dbg_value(i16 %.lcssa.i, !4403, !DIExpression(), !30395)
    #dbg_value(i16 %.lcssa.i, !4406, !DIExpression(), !30397)
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !30547
  %i.f = zext nneg i16 %i.e to i64, !dbg !30548
    #dbg_value(i64 %i.f, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30398)
    #dbg_value(i64 1, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30398)
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f, !dbg !30549
  %i.h = and i64 %i.g, %.val14, !dbg !30549       ; 2 uses
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30399)
    #dbg_value(i64 %i.h, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30399)
    #dbg_value(i64 %i.h, !4408, !DIExpression(), !30401)
    #dbg_value(ptr poison, !4413, !DIExpression(), !30401)
    #dbg_value(ptr poison, !4415, !DIExpression(), !30403)
    #dbg_value(ptr poison, !4421, !DIExpression(), !30405)
    #dbg_value(ptr poison, !4421, !DIExpression(), !30407)
    #dbg_value(i64 0, !4422, !DIExpression(), !30407)
    #dbg_value(i64 %i.h, !4419, !DIExpression(), !30403)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h, !dbg !30550
  %i.j = load i8, ptr %i.i, align 1, !dbg !30551, !noundef !2127 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1, !dbg !30552
    #dbg_value(i1 %i.k, !4428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !30411)
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !30553, !prof !3824

bb.b:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %.val, !4430, !DIExpression(), !30413)
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16, !dbg !30554
    #dbg_value(<2 x i64> poison, !4437, !DIExpression(), !30415)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !30417)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !30418)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !30419)
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !30555
  %i.m = bitcast <16 x i1> %i.l to i16, !dbg !30555 ; 2 uses
    #dbg_value(i16 %i.m, !4440, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !30421)
  %.not.i13.i = icmp ne i16 %i.m, 0, !dbg !30556
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true), !dbg !30557
  %i.o = zext nneg i16 %i.n to i64, !dbg !30557   ; 2 uses
    #dbg_value(i64 poison, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30423)
    #dbg_value(i64 %i.o, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30423)
  tail call void @llvm.assume(i1 %.not.i13.i), !dbg !30558
    #dbg_value(i64 %i.o, !4408, !DIExpression(), !30401)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !30559
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !30560

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
    #dbg_value(i64 0, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30399)
    #dbg_value(i64 poison, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30399)
    #dbg_value(ptr undef, !4349, !DIExpression(), !30377)
    #dbg_value(i64 %.val14, !4356, !DIExpression(), !30424)
  %i.q = add i64 %i.p, 16, !dbg !30561            ; 2 uses
    #dbg_value(i64 %i.q, !4364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30381)
  %i.r = add i64 %i.q, %.sroa.0.010.i, !dbg !30562
    #dbg_value(!DIArgList(i64 %i.r, i64 %.val14), !4364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30381)
  %.sroa.0.0.i = and i64 %i.r, %.val14, !dbg !30541 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30381)
    #dbg_value(i64 %.sroa.0.0.i, !4369, !DIExpression(), !30380)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i, !dbg !30542
    #dbg_value(ptr %i.s, !4385, !DIExpression(), !30425)
    #dbg_value(ptr %i.s, !4381, !DIExpression(), !30426)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !30427)
    #dbg_value(ptr %i.s, !4374, !DIExpression(), !30428)
    #dbg_value(ptr undef, !4375, !DIExpression(), !30428)
    #dbg_value(i64 16, !4376, !DIExpression(), !30428)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !dbg !30543, !noalias !30503
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !30427)
    #dbg_value(<2 x i64> poison, !4365, !DIExpression(), !30429)
    #dbg_value(ptr poison, !4394, !DIExpression(), !30430)
    #dbg_value(ptr poison, !4395, !DIExpression(), !30430)
    #dbg_value(ptr poison, !4396, !DIExpression(), !30430)
    #dbg_value(<2 x i64> poison, !4387, !DIExpression(), !30431)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !30432)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !30433)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !30434)
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !30544
  %i.u = bitcast <16 x i1> %i.t to i16, !dbg !30544 ; 2 uses
    #dbg_value(i16 %i.u, !4399, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !30392)
  %.not.i.i = icmp eq i16 %i.u, 0, !dbg !30545
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !30546, !prof !4449

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ], !dbg !30559
  %.sroa.0.0.i12.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !4408, !DIExpression(), !30401)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30450, !DIExpression(), !30504)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30457, !DIExpression(), !30505)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30490, !DIExpression(), !30506)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30464, !DIExpression(), !30467)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30507, !DIExpression(), !30516)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30517, !DIExpression(), !30522)
    #dbg_value(i64 %.sroa.0.0.i12.i, !30481, !DIExpression(), !30524)
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i12.i, !dbg !30563
    #dbg_value(i8 %i.v, !30451, !DIExpression(), !30504)
    #dbg_value(i8 %i.v, !30458, !DIExpression(), !30526)
  %i.x = lshr i64 %1, 57, !dbg !30564
  %i.y = trunc nuw nsw i64 %i.x to i8, !dbg !30565 ; 2 uses
  %i.z = add i64 %.sroa.0.0.i12.i, -16, !dbg !30566
  %i.aa = and i64 %i.z, %.val14, !dbg !30567
  store i8 %i.y, ptr %i.w, align 1, !dbg !30568
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa, !dbg !30569
  %i.ac = getelementptr i8, ptr %i.ab, i64 16, !dbg !30569
  store i8 %i.y, ptr %i.ac, align 1, !dbg !30570
    #dbg_value(ptr %0, !30508, !DIExpression(), !30531)
    #dbg_value(ptr %.val, !30518, !DIExpression(), !30522)
    #dbg_value(ptr %.val, !30480, !DIExpression(), !30524)
  %i.ad = sub nsw i64 0, %.sroa.0.0.i12.i, !dbg !30571
  %i.ae = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.ad, !dbg !30572 ; 2 uses
    #dbg_value(ptr %i.ae, !30452, !DIExpression(), !30532)
  %i.af = and i8 %i.v, 1, !dbg !30573
  %i.ag = zext nneg i8 %i.af to i64, !dbg !30573
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30574 ; 2 uses
    #dbg_value(ptr poison, !30470, !DIExpression(), !30533)
    #dbg_value(ptr poison, !30486, !DIExpression(), !30534)
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -64, !dbg !30575
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 64, i1 false), !dbg !30576
    #dbg_value(ptr %i.ae, !30480, !DIExpression(), !30485)
    #dbg_value(ptr %i.ai, !30475, !DIExpression(), !30535)
    #dbg_value(ptr %i.ai, !30536, !DIExpression(), !30539)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !dbg !30574
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0, !dbg !30574
  %i.al = sub <2 x i64> %i.aj, %i.ak, !dbg !30574
  store <2 x i64> %i.al, ptr %i.ah, align 8, !dbg !30574
  ret ptr %i.ae, !dbg !30577
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBT_5ValueEE16with_capacity_inBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30578 {
bb.a:
    #dbg_value(i64 %1, !30587, !DIExpression(), !30590)
    #dbg_value(i64 %1, !30591, !DIExpression(), !30597)
    #dbg_declare(ptr poison, !30588, !DIExpression(), !30598)
    #dbg_declare(ptr poison, !30594, !DIExpression(), !30599)
    #dbg_declare(ptr poison, !30600, !DIExpression(), !30605)
    #dbg_value(i64 64, !30593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30597)
    #dbg_value(i64 16, !30593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30597)
    #dbg_value(ptr poison, !30592, !DIExpression(), !30597)
  tail call fastcc void @_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 64, i64 noundef %1, i1 noundef zeroext true) #24, !dbg !30606
  ret void, !dbg !30607
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 689) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !30618 {
bb.a:
    #dbg_value(ptr poison, !30849, !DIExpression(), !30856)
    #dbg_value(ptr poison, !30859, !DIExpression(), !30862)
    #dbg_value(ptr poison, !30857, !DIExpression(), !30863)
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !30831, !DIExpression(), !30864)
    #dbg_value(ptr %0, !30865, !DIExpression(), !30871)
    #dbg_value(ptr %1, !30832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30864)
    #dbg_value(ptr poison, !30832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30864)
    #dbg_value(i64 %2, !30833, !DIExpression(), !30864)
    #dbg_value(i64 %2, !30872, !DIExpression(), !30877)
    #dbg_value(i64 %2, !30872, !DIExpression(), !30879)
    #dbg_value(i64 %2, !30880, !DIExpression(), !30885)
    #dbg_value(i64 %2, !30886, !DIExpression(), !30893)
    #dbg_value(i64 %2, !30894, !DIExpression(), !30909)
    #dbg_value(ptr %3, !30834, !DIExpression(), !30864)
    #dbg_declare(ptr %i.a, !30835, !DIExpression(), !30910)
    #dbg_value(i64 1, !30911, !DIExpression(), !30915)
    #dbg_value(i64 1, !30916, !DIExpression(), !30920)
    #dbg_value(ptr poison, !30921, !DIExpression(), !30929)
    #dbg_value(ptr poison, !30930, !DIExpression(), !30935)
    #dbg_value(ptr poison, !30930, !DIExpression(), !30937)
    #dbg_value(i8 -1, !30938, !DIExpression(), !30943)
  %.val54 = load ptr, ptr %0, align 8, !dbg !31189 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31189 ; 4 uses
  %.val55 = load i64, ptr %i.b, align 8, !dbg !31189, !noundef !2127 ; 2 uses
    #dbg_value(ptr poison, !30945, !DIExpression(), !30652)
    #dbg_value(ptr poison, !30958, !DIExpression(), !30653)
    #dbg_value(ptr poison, !30964, !DIExpression(), !30654)
    #dbg_value(ptr poison, !30969, !DIExpression(), !30655)
    #dbg_value(ptr poison, !30975, !DIExpression(), !30658)
    #dbg_value(ptr poison, !30977, !DIExpression(), !30661)
    #dbg_value(ptr poison, !30975, !DIExpression(), !30663)
    #dbg_value(ptr poison, !30977, !DIExpression(), !30665)
    #dbg_value(ptr poison, !30977, !DIExpression(), !30667)
    #dbg_value(ptr poison, !30977, !DIExpression(), !30669)
    #dbg_value(ptr poison, !30975, !DIExpression(), !30671)
    #dbg_value(ptr poison, !30977, !DIExpression(), !30673)
    #dbg_value(ptr poison, !30975, !DIExpression(), !30675)
    #dbg_value(ptr poison, !30977, !DIExpression(), !30677)
    #dbg_value(i64 16, !30981, !DIExpression(), !30680)
    #dbg_value(i64 0, !30979, !DIExpression(), !30667)
    #dbg_value(i64 16, !30979, !DIExpression(), !30669)
    #dbg_value(i64 0, !30979, !DIExpression(), !30673)
    #dbg_value(i64 16, !30988, !DIExpression(), !30683)
    #dbg_value(i64 16, !30993, !DIExpression(), !30686)
  %i.c = add i64 %.val55, 1, !dbg !31190          ; 6 uses
    #dbg_value(i64 0, !30984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30680)
    #dbg_value(i64 %i.c, !30984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30680)
    #dbg_value(i64 0, !30999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30690)
    #dbg_value(i64 %i.c, !30999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30690)
    #dbg_value(i64 16, !31001, !DIExpression(), !30690)
    #dbg_value(i64 0, !31004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30695)
    #dbg_value(i64 16, !31008, !DIExpression(), !30695)
    #dbg_value(i64 16, !31012, !DIExpression(), !30700)
    #dbg_value(i64 %i.c, !31013, !DIExpression(), !30700)
    #dbg_value(i64 %i.c, !31009, !DIExpression(), !30701)
    #dbg_value(i64 %i.c, !31014, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !30702)
    #dbg_value(i64 %i.c, !31015, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !30703)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !31004, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(i64 0, !30970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !30970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(i64 15, !30970, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30704)
    #dbg_value(i8 1, !30970, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !30704)
    #dbg_value(ptr undef, !30964, !DIExpression(), !30654)
    #dbg_value(ptr undef, !30958, !DIExpression(), !30653)
    #dbg_value(i64 15, !30959, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30705)
    #dbg_value(i64 15, !31021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30708)
    #dbg_value(ptr undef, !30945, !DIExpression(), !30652)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !30960, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !30709)
  %.not6.i = icmp eq i64 %i.c, 0, !dbg !31191
  br i1 %.not6.i, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i, !dbg !31191

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
    #dbg_value(ptr %.val54, !30989, !DIExpression(), !30711)
    #dbg_value(ptr poison, !30990, !DIExpression(), !30711)
    #dbg_value(ptr poison, !30995, !DIExpression(), !30713)
    #dbg_value(i64 %i.c, !30991, !DIExpression(), !30711)
    #dbg_value(i64 %i.c, !30996, !DIExpression(), !30713)
    #dbg_value(ptr %.val54, !30994, !DIExpression(), !30713)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val54, i64 16, !dbg !31192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val54, i64 %i.c, i1 false), !dbg !31193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31194
    #dbg_value(ptr %3, !30868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30871)
    #dbg_value(i64 %2, !30868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30871)
    #dbg_value(i64 0, !30836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31025)
    #dbg_value(i64 %i.c, !30836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31025)
    #dbg_value(ptr undef, !30857, !DIExpression(), !30863)
    #dbg_value(ptr undef, !30859, !DIExpression(), !30862)
    #dbg_value(ptr undef, !30849, !DIExpression(), !30856)
    #dbg_value(ptr undef, !30850, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !31026)
  br label %._crit_edge, !dbg !30855

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4, !dbg !31195
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !31004, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !30970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !30960, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !30709)
    #dbg_value(i64 %i.e, !31014, !DIExpression(), !30702)
  %i.f = and i64 %i.c, 15, !dbg !31196
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !30960, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !30709)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !30970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !31004, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(i64 %i.f, !31015, !DIExpression(), !30703)
  %.not13.i.i.i = icmp ne i64 %i.f, 0, !dbg !31197
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !31004, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !30970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !30960, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !30709)
  %i.g = zext i1 %.not13.i.i.i to i64, !dbg !31197
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !30960, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !30709)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !30970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !31004, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30695)
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g, !dbg !31197 ; 4 uses
    #dbg_value(i64 %.sroa.05.0.i.i.i, !31004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !30970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !30960, !DIExpression(), !30709)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !31191
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !31191
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new, !dbg !31191

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !31191
  br label %bb.b, !dbg !31191

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31191
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader, !dbg !31191

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !31191
  tail call void @llvm.assume(i1 %lcmp.mod38), !dbg !31191
    #dbg_value(i64 16, !30959, !DIExpression(), !30705)
    #dbg_value(i64 16, !31021, !DIExpression(), !30708)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !30961, !DIExpression(), !30718)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !31022, !DIExpression(), !30708)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !30970, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(i64 poison, !30970, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !30971, !DIExpression(), !30719)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !30978, !DIExpression(), !30661)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !30978, !DIExpression(), !30665)
  %i.i = getelementptr inbounds nuw i8, ptr %.val54, i64 %.sroa.0.08.i.epil.init, !dbg !31198 ; 2 uses
    #dbg_value(ptr %i.i, !31036, !DIExpression(), !30725)
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16, !dbg !31199
    #dbg_value(<2 x i64> poison, !30972, !DIExpression(), !30726)
    #dbg_declare(ptr poison, !31043, !DIExpression(), !30731)
    #dbg_value(<2 x i64> zeroinitializer, !31048, !DIExpression(), !30732)
    #dbg_declare(ptr poison, !31051, !DIExpression(), !30735)
    #dbg_declare(ptr poison, !31052, !DIExpression(), !30736)
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !31200
    #dbg_value(<16 x i8> %.lobit.i.i.epil, !31049, !DIExpression(), !30737)
    #dbg_declare(ptr poison, !31054, !DIExpression(), !30740)
    #dbg_declare(ptr poison, !31055, !DIExpression(), !30741)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !31201
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472), !dbg !31201
    #dbg_value(<2 x i64> %i.k, !30973, !DIExpression(), !30742)
    #dbg_value(<2 x i64> %i.k, !31057, !DIExpression(), !30747)
    #dbg_value(ptr %i.i, !31061, !DIExpression(), !30747)
    #dbg_value(ptr %i.i, !31069, !DIExpression(), !30750)
    #dbg_declare(ptr poison, !31072, !DIExpression(), !30751)
  store <2 x i64> %i.k, ptr %i.i, align 16, !dbg !31202
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !30970, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(i64 poison, !30970, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(ptr undef, !30964, !DIExpression(), !30654)
    #dbg_value(ptr undef, !30958, !DIExpression(), !30653)
    #dbg_value(i64 15, !30959, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30705)
    #dbg_value(i64 15, !31021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30708)
    #dbg_value(ptr undef, !30945, !DIExpression(), !30652)
    #dbg_value(i64 poison, !30960, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !30709)
  br label %._crit_edge.i, !dbg !31203

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
    #dbg_value(i64 %i.c, !31076, !DIExpression(DW_OP_constu, 16, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !30754)
    #dbg_value(ptr %3, !30868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30871)
    #dbg_value(ptr %3, !30868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30871)
    #dbg_value(i64 %2, !30868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30871)
    #dbg_value(i64 %2, !30868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30871)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !31203
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !31203
    #dbg_value(i64 0, !30836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31025)
    #dbg_value(i64 0, !30836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31025)
    #dbg_value(i64 %i.c, !30836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31025)
    #dbg_value(i64 %i.c, !30836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31025)
    #dbg_value(ptr undef, !30857, !DIExpression(), !30863)
    #dbg_value(ptr undef, !30857, !DIExpression(), !30863)
    #dbg_value(ptr undef, !30859, !DIExpression(), !30862)
    #dbg_value(ptr undef, !30859, !DIExpression(), !30862)
    #dbg_value(ptr undef, !30849, !DIExpression(), !30856)
    #dbg_value(ptr undef, !30849, !DIExpression(), !30856)
    #dbg_value(ptr undef, !30850, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !31026)
    #dbg_value(ptr undef, !30850, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !31026)
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16), !dbg !30855
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16), !dbg !30855
  %i.n = getelementptr inbounds nuw i8, ptr %.val54, i64 %., !dbg !31192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val54, i64 %.27, i1 false), !dbg !31193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31194
  store ptr %3, ptr %i.l, align 8, !dbg !31203
  store i64 %2, ptr %i.m, align 8, !dbg !31203
  store ptr %0, ptr %i.a, align 8, !dbg !31203
  br label %.lr.ph, !dbg !30928

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
    #dbg_value(i64 16, !30959, !DIExpression(), !30705)
    #dbg_value(i64 16, !31021, !DIExpression(), !30708)
    #dbg_value(i64 %.sroa.0.08.i, !30961, !DIExpression(), !30718)
    #dbg_value(i64 %.sroa.0.08.i, !31022, !DIExpression(), !30708)
    #dbg_value(i64 %.sroa.0.08.i, !30970, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(i64 poison, !30970, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(i64 %.sroa.0.08.i, !30971, !DIExpression(), !30719)
    #dbg_value(i64 %.sroa.0.08.i, !30978, !DIExpression(), !30661)
    #dbg_value(i64 %.sroa.0.08.i, !30978, !DIExpression(), !30665)
  %i.o = getelementptr inbounds nuw i8, ptr %.val54, i64 %.sroa.0.08.i, !dbg !31198 ; 2 uses
    #dbg_value(ptr %i.o, !31036, !DIExpression(), !30725)
  %.val5.i = load <16 x i8>, ptr %i.o, align 16, !dbg !31199
    #dbg_value(<2 x i64> poison, !30972, !DIExpression(), !30726)
    #dbg_declare(ptr poison, !31043, !DIExpression(), !30731)
    #dbg_value(<2 x i64> zeroinitializer, !31048, !DIExpression(), !30732)
    #dbg_declare(ptr poison, !31051, !DIExpression(), !30735)
    #dbg_declare(ptr poison, !31052, !DIExpression(), !30736)
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !31200
    #dbg_value(<16 x i8> %.lobit.i.i, !31049, !DIExpression(), !30737)
    #dbg_declare(ptr poison, !31054, !DIExpression(), !30740)
    #dbg_declare(ptr poison, !31055, !DIExpression(), !30741)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !31201
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472), !dbg !31201
    #dbg_value(<2 x i64> %i.q, !30973, !DIExpression(), !30742)
    #dbg_value(<2 x i64> %i.q, !31057, !DIExpression(), !30747)
    #dbg_value(ptr %i.o, !31061, !DIExpression(), !30747)
    #dbg_value(ptr %i.o, !31069, !DIExpression(), !30750)
    #dbg_declare(ptr poison, !31072, !DIExpression(), !30751)
  store <2 x i64> %i.q, ptr %i.o, align 16, !dbg !31202
    #dbg_value(i64 %.sroa.0.08.i, !30970, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(i64 poison, !30970, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(ptr undef, !30964, !DIExpression(), !30654)
    #dbg_value(ptr undef, !30958, !DIExpression(), !30653)
    #dbg_value(i64 15, !30959, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30705)
    #dbg_value(i64 15, !31021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30708)
    #dbg_value(ptr undef, !30945, !DIExpression(), !30652)
    #dbg_value(i64 poison, !30960, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !30709)
    #dbg_value(i64 16, !30959, !DIExpression(), !30705)
    #dbg_value(i64 16, !31021, !DIExpression(), !30708)
    #dbg_value(i64 %.sroa.0.08.i, !30961, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !30718)
    #dbg_value(i64 %.sroa.0.08.i, !31022, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !30708)
  %i.r = add i64 %.sroa.0.08.i, 32, !dbg !31204   ; 2 uses
    #dbg_value(i64 %i.r, !30970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(i64 poison, !30970, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(i64 %.sroa.0.08.i, !30971, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !30719)
    #dbg_value(i64 %.sroa.0.08.i, !30978, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !30661)
    #dbg_value(i64 %.sroa.0.08.i, !30978, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !30665)
  %i.s = getelementptr inbounds nuw i8, ptr %.val54, i64 %.sroa.0.08.i, !dbg !31198
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !31198 ; 2 uses
    #dbg_value(ptr %i.t, !31036, !DIExpression(), !30725)
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16, !dbg !31199
    #dbg_declare(ptr poison, !31043, !DIExpression(), !30731)
    #dbg_declare(ptr poison, !31051, !DIExpression(), !30735)
    #dbg_declare(ptr poison, !31052, !DIExpression(), !30736)
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !31200
    #dbg_value(<16 x i8> %.lobit.i.i.1, !31049, !DIExpression(), !30737)
    #dbg_declare(ptr poison, !31054, !DIExpression(), !30740)
    #dbg_declare(ptr poison, !31055, !DIExpression(), !30741)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !31201
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472), !dbg !31201
    #dbg_value(<2 x i64> %i.v, !30973, !DIExpression(), !30742)
    #dbg_value(<2 x i64> %i.v, !31057, !DIExpression(), !30747)
    #dbg_value(ptr %i.t, !31061, !DIExpression(), !30747)
    #dbg_value(ptr %i.t, !31069, !DIExpression(), !30750)
    #dbg_declare(ptr poison, !31072, !DIExpression(), !30751)
  store <2 x i64> %i.v, ptr %i.t, align 16, !dbg !31202
    #dbg_value(i64 %i.r, !30970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30704)
    #dbg_value(i64 poison, !30970, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30704)
    #dbg_value(i64 15, !30959, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30705)
    #dbg_value(i64 15, !31021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30708)
    #dbg_value(i64 poison, !30960, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !30709)
  %niter.next.1 = add i64 %niter, 2, !dbg !31191  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !31191
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b, !dbg !31191

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8, !dbg !31205 ; 2 uses
  %.pre13 = add i64 %.pre, 1, !dbg !31206
  %i.w = lshr i64 %.pre13, 3, !dbg !31206
  %i.x = mul nuw i64 %i.w, 7, !dbg !31206
  br label %._crit_edge, !dbg !31205

._crit_edge:                                      ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !31206
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !31205 ; 2 uses
    #dbg_value(i64 %i.y, !31082, !DIExpression(), !31085)
  %i.z = icmp ult i64 %i.y, 8, !dbg !31206
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi, !dbg !31206
    #dbg_value(i64 %.sroa.04.0, !31082, !DIExpression(), !31085)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31207
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !31207, !noundef !2127
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31208
  %i.ad = sub i64 %.sroa.04.0, %i.ab, !dbg !31208
  store i64 %i.ad, ptr %i.ac, align 8, !dbg !31208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31209
  ret void, !dbg !31210

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
    #dbg_value(i64 %.sroa.0.06, !30860, !DIExpression(), !31086)
    #dbg_value(i64 %.sroa.0.06, !30912, !DIExpression(), !30915)
    #dbg_value(i64 %.sroa.0.06, !30917, !DIExpression(), !30920)
  %i.ae = add nuw i64 %.sroa.0.06, 1, !dbg !31211
    #dbg_value(i64 %i.ae, !30836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31025)
    #dbg_value(i64 %.sroa.0.06, !30837, !DIExpression(), !31087)
    #dbg_value(i64 %.sroa.0.06, !31088, !DIExpression(), !31092)
    #dbg_value(i64 %.sroa.0.06, !30874, !DIExpression(), !30877)
    #dbg_value(i64 %.sroa.0.06, !31093, !DIExpression(), !31102)
    #dbg_value(i64 %.sroa.0.06, !31103, !DIExpression(), !31108)
    #dbg_value(i64 %.sroa.0.06, !30940, !DIExpression(), !30943)
    #dbg_value(ptr %0, !31089, !DIExpression(), !31092)
  %i.af = load ptr, ptr %0, align 8, !dbg !31212, !nonnull !2127, !noundef !2127 ; 2 uses
end_hunk_21
begin_hunk_22_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBT_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_:bb.a
  %.lcssa.i.i.i = phi i16 [ %.sroa.818.027.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !39504 ; 3 uses
    #dbg_value(ptr %.sroa.017.1.i.i, !39450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39317)
    #dbg_value(ptr %.sroa.6.1.i.i, !39450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39317)
    #dbg_value(i16 %.lcssa.i.i.i, !6955, !DIExpression(), !39339)
    #dbg_value(i16 %.lcssa.i.i.i, !6957, !DIExpression(), !39341)
    #dbg_value(i16 %.lcssa.i.i.i, !6960, !DIExpression(), !39343)
    #dbg_value(i16 %.lcssa.i.i.i, !6962, !DIExpression(), !39345)
  %i.p = add i16 %.lcssa.i.i.i, -1, !dbg !39506
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !39507
  %i.r = zext nneg i16 %i.q to i64, !dbg !39508
    #dbg_value(i64 %i.r, !6950, !DIExpression(), !39346)
    #dbg_value(i16 %.lcssa.i.i.i, !6965, !DIExpression(), !39348)
  %i.s = and i16 %i.p, %.lcssa.i.i.i, !dbg !39509
    #dbg_value(i16 %i.s, !39450, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !39317)
    #dbg_value(i64 %i.r, !6930, !DIExpression(), !39349)
    #dbg_value(i64 %i.r, !6937, !DIExpression(), !39350)
    #dbg_value(i64 %i.r, !6943, !DIExpression(), !39352)
    #dbg_value(ptr undef, !6936, !DIExpression(), !39273)
    #dbg_value(ptr %.sroa.017.1.i.i, !6942, !DIExpression(), !39352)
  %i.t = sub nsw i64 0, %i.r, !dbg !39510
  %i.u = getelementptr inbounds [64 x i8], ptr %.sroa.017.1.i.i, i64 %i.t, !dbg !39511 ; 4 uses
    #dbg_value(ptr %i.u, !39445, !DIExpression(), !39353)
  %i.v = add i64 %.sroa.1019.026.i.i, -1, !dbg !39512 ; 2 uses
    #dbg_value(i64 %i.v, !39450, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !39317)
    #dbg_value(ptr %i.u, !39451, !DIExpression(), !39354)
    #dbg_value(ptr poison, !39467, !DIExpression(), !39355)
    #dbg_value(ptr poison, !39465, !DIExpression(), !39356)
    #dbg_value(ptr %i.u, !39459, !DIExpression(), !39295)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -64, !dbg !39513
    #dbg_value(ptr %i.w, !39472, !DIExpression(), !39359)
    #dbg_value(ptr %i.w, !39474, !DIExpression(), !39362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39476), !dbg !39514
    #dbg_value(ptr %i.w, !7114, !DIExpression(), !39366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39477), !dbg !39515
    #dbg_value(ptr %i.w, !7119, !DIExpression(), !39370)
  %i.x = load i8, ptr %i.w, align 16, !dbg !39516, !range !7125, !alias.scope !39478, !noalias !39469, !noundef !2127
  %i.y = icmp eq i8 %i.x, 5, !dbg !39516
  br i1 %i.y, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBG_5ValueEEBI_.exit.i.i, !dbg !39516

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBZ_5ValueEE9next_implKb0_EB11_.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -56, !dbg !39516 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39479), !dbg !39516
    #dbg_value(ptr %i.z, !7127, !DIExpression(), !39374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39480), !dbg !39517
    #dbg_value(ptr %i.z, !7134, !DIExpression(), !39378)
    #dbg_value(ptr %i.z, !7137, !DIExpression(), !39380)
    #dbg_value(i64 1, !7147, !DIExpression(), !39382)
    #dbg_value(i8 1, !7153, !DIExpression(), !39382)
    #dbg_value(i64 1, !7155, !DIExpression(), !39384)
    #dbg_value(i8 1, !7160, !DIExpression(), !39384)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !39518, !alias.scope !39481, !noalias !39469, !nonnull !2127, !noundef !2127
    #dbg_value(ptr %i.aa, !7152, !DIExpression(), !39386)
    #dbg_value(ptr %i.aa, !7159, !DIExpression(), !39384)
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !dbg !39519, !noalias !39482
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !39520
  br i1 %i.ac, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBG_5ValueEEBI_.exit.i.i, !dbg !39520

bb.f:                                             ; preds = %bb.e
    #dbg_value(i8 2, !7169, !DIExpression(), !39388)
  fence acquire, !dbg !39521
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #28
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBG_5ValueEEBI_.exit.i.i unwind label %bb.g, !dbg !39522, !noalias !39469

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds i8, ptr %i.u, i64 -32, !dbg !39515
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #25
          to label %bb.i unwind label %bb.h, !dbg !39515, !noalias !39469

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !39515, !noalias !39469
  unreachable, !dbg !39515

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ad, !dbg !39515

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBG_5ValueEEBI_.exit.i.i: ; preds = %bb.f, %bb.e, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBZ_5ValueEE9next_implKb0_EB11_.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.u, i64 -32, !dbg !39515
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag), !dbg !39515, !noalias !39469
    #dbg_value(ptr %.sroa.017.1.i.i, !39450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39317)
    #dbg_value(ptr %.sroa.6.1.i.i, !39450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39317)
    #dbg_value(i16 %i.s, !39450, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !39317)
    #dbg_value(i64 %i.v, !39450, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !39317)
    #dbg_value(ptr undef, !39444, !DIExpression(), !39275)
  %i.ah = icmp eq i64 %i.v, 0, !dbg !39496
  br i1 %i.ah, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1e_5ValueEEB1g_.exit.i, label %bb.d, !dbg !39496

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1e_5ValueEEB1g_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBG_5ValueEEBI_.exit.i.i, %bb.b
    #dbg_value(i64 64, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39390)
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39390)
    #dbg_value(i64 %i.b, !4163, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39390)
    #dbg_value(i64 %i.b, !4175, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39392)
    #dbg_value(i64 %i.b, !4180, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39394)
    #dbg_value(i64 64, !4164, !DIExpression(), !39395)
    #dbg_value(i64 64, !4176, !DIExpression(), !39392)
    #dbg_value(i64 64, !4186, !DIExpression(), !39394)
    #dbg_value(i64 16, !4165, !DIExpression(), !39395)
  %i.ai = shl i64 %i.b, 6, !dbg !39523            ; 2 uses
  %i.aj = add i64 %i.ai, 64, !dbg !39523          ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39397)
    #dbg_value(i64 %i.aj, !4190, !DIExpression(), !39399)
    #dbg_value(i64 15, !4191, !DIExpression(), !39399)
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39401)
    #dbg_value(i64 %i.aj, !4166, !DIExpression(), !39402)
    #dbg_value(i64 %i.aj, !4190, !DIExpression(), !39404)
  %i.ak = add i64 %i.b, 17, !dbg !39524
    #dbg_value(i64 %i.ak, !4191, !DIExpression(), !39404)
  %i.al = add i64 %i.ak, %i.aj, !dbg !39525       ; 4 uses
  %i.am = icmp uge i64 %i.al, %i.aj, !dbg !39525
    #dbg_value(i1 %i.am, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39406)
  %i.an = icmp ult i64 %i.al, 9223372036854775793
  tail call void @llvm.assume(i1 %i.am), !dbg !39526
  tail call void @llvm.assume(i1 %i.an), !dbg !39526
    #dbg_value(i64 16, !39435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39407)
    #dbg_value(i64 16, !39439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39408)
    #dbg_value(i64 %i.al, !39435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39407)
    #dbg_value(i64 %i.al, !39439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39408)
    #dbg_value(i64 %i.aj, !39440, !DIExpression(), !39408)
    #dbg_value(i64 %i.aj, !39483, !DIExpression(), !39411)
    #dbg_value(ptr poison, !39484, !DIExpression(), !39411)
    #dbg_value(!DIArgList(ptr poison, i64 poison, i64 poison), !39434, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39407)
    #dbg_value(ptr poison, !4207, !DIExpression(), !39413)
    #dbg_value(ptr poison, !4214, !DIExpression(), !39415)
    #dbg_value(!DIArgList(ptr poison, i64 poison, i64 poison), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39413)
    #dbg_value(!DIArgList(ptr poison, i64 poison, i64 poison), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39415)
    #dbg_value(!DIArgList(ptr poison, i64 poison, i64 poison), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39417)
    #dbg_value(!DIArgList(ptr poison, i64 poison, i64 poison), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39419)
    #dbg_value(i64 16, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39413)
    #dbg_value(i64 16, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39415)
    #dbg_value(i64 16, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39417)
    #dbg_value(i64 16, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39419)
    #dbg_value(i64 %i.al, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39413)
    #dbg_value(i64 %i.al, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39415)
    #dbg_value(i64 %i.al, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39417)
    #dbg_value(i64 %i.al, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39419)
  %i.ao = icmp eq i64 %i.al, 0, !dbg !39527
  br i1 %i.ao, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1h_5ValueENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit, label %bb.j, !dbg !39527

bb.j:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1e_5ValueEEB1g_.exit.i
  %i.ap = load ptr, ptr %0, align 8, !dbg !39528, !alias.scope !39423, !nonnull !2127, !noundef !2127
    #dbg_value(!DIArgList(ptr %i.ap, i64 -64, i64 %i.ai), !39434, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39407)
    #dbg_value(!DIArgList(ptr %i.ap, i64 -64, i64 %i.ai), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39413)
    #dbg_value(!DIArgList(ptr %i.ap, i64 -64, i64 %i.ai), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39415)
    #dbg_value(!DIArgList(ptr %i.ap, i64 -64, i64 %i.ai), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39417)
    #dbg_value(!DIArgList(ptr %i.ap, i64 -64, i64 %i.ai), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39419)
    #dbg_value(ptr %i.ap, !39484, !DIExpression(), !39411)
  %i.aq = sub nuw nsw i64 -64, %i.ai, !dbg !39529
    #dbg_value(!DIArgList(ptr %i.ap, i64 %i.aq), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39419)
    #dbg_value(!DIArgList(ptr %i.ap, i64 %i.aq), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39417)
    #dbg_value(!DIArgList(ptr %i.ap, i64 %i.aq), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39415)
    #dbg_value(!DIArgList(ptr %i.ap, i64 %i.aq), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39413)
    #dbg_value(!DIArgList(ptr %i.ap, i64 %i.aq), !39434, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39407)
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq, !dbg !39530
    #dbg_value(ptr %i.ar, !39434, !DIExpression(), !39407)
    #dbg_value(ptr %i.ar, !4211, !DIExpression(), !39413)
    #dbg_value(ptr %i.ar, !4217, !DIExpression(), !39415)
    #dbg_value(ptr %i.ar, !4220, !DIExpression(), !39417)
    #dbg_value(ptr %i.ar, !4226, !DIExpression(), !39419)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !dbg !39531, !noalias !39423
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1h_5ValueENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit, !dbg !39532

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1h_5ValueENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1e_5ValueEEB1g_.exit.i, %bb.j
  ret void, !dbg !39533
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !39534 {
bb.a:
    #dbg_value(ptr %0, !39583, !DIExpression(), !39585)
  %.val = load ptr, ptr %0, align 8, !dbg !39608  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39608
  %.val1 = load i64, ptr %i.a, align 8, !dbg !39608, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !39586, !DIExpression(), !39537)
    #dbg_value(ptr poison, !39591, !DIExpression(), !39540)
    #dbg_value(ptr poison, !39593, !DIExpression(), !39544)
    #dbg_value(ptr poison, !39599, !DIExpression(), !39549)
    #dbg_value(ptr poison, !39588, !DIExpression(), !39537)
    #dbg_value(ptr poison, !39594, !DIExpression(), !39544)
    #dbg_value(i64 64, !39589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39537)
    #dbg_value(i64 64, !39595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39544)
    #dbg_value(i64 64, !39600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39549)
    #dbg_value(i64 16, !39589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39537)
    #dbg_value(i64 16, !39595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39544)
    #dbg_value(i64 16, !39600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39549)
  %i.b = icmp eq i64 %.val1, 0, !dbg !39609
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !39610

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 64, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39551)
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39551)
    #dbg_value(i64 %.val1, !4163, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39551)
    #dbg_value(i64 %.val1, !4175, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39553)
    #dbg_value(i64 %.val1, !4180, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39555)
    #dbg_value(i64 64, !4164, !DIExpression(), !39556)
    #dbg_value(i64 64, !4176, !DIExpression(), !39553)
    #dbg_value(i64 64, !4186, !DIExpression(), !39555)
    #dbg_value(i64 16, !4165, !DIExpression(), !39556)
  %i.c = shl i64 %.val1, 6, !dbg !39611           ; 2 uses
  %i.d = add i64 %i.c, 64, !dbg !39611            ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39558)
    #dbg_value(i64 %i.d, !4190, !DIExpression(), !39560)
    #dbg_value(i64 15, !4191, !DIExpression(), !39560)
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39562)
    #dbg_value(i64 %i.d, !4166, !DIExpression(), !39563)
    #dbg_value(i64 %i.d, !4190, !DIExpression(), !39565)
  %i.e = add i64 %.val1, 17, !dbg !39612
    #dbg_value(i64 %i.e, !4191, !DIExpression(), !39565)
  %i.f = add i64 %i.e, %i.d, !dbg !39613          ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d, !dbg !39613
    #dbg_value(i1 %i.g, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39567)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g), !dbg !39614
  tail call void @llvm.assume(i1 %i.h), !dbg !39614
    #dbg_value(i64 16, !39597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39568)
    #dbg_value(i64 16, !39601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39569)
    #dbg_value(i64 %i.f, !39597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39568)
    #dbg_value(i64 %i.f, !39601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39569)
    #dbg_value(i64 %i.d, !39602, !DIExpression(), !39569)
    #dbg_value(i64 %i.d, !39605, !DIExpression(), !39572)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !39606, !DIExpression(), !39572)
    #dbg_value(!DIArgList(ptr %.val, i64 -64, i64 %i.c), !39596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39568)
    #dbg_value(ptr poison, !4207, !DIExpression(), !39574)
    #dbg_value(ptr poison, !4214, !DIExpression(), !39576)
    #dbg_value(!DIArgList(ptr %.val, i64 -64, i64 %i.c), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39574)
    #dbg_value(!DIArgList(ptr %.val, i64 -64, i64 %i.c), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39576)
    #dbg_value(!DIArgList(ptr %.val, i64 -64, i64 %i.c), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39578)
    #dbg_value(!DIArgList(ptr %.val, i64 -64, i64 %i.c), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39580)
    #dbg_value(i64 16, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39574)
    #dbg_value(i64 16, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39576)
    #dbg_value(i64 16, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39578)
    #dbg_value(i64 16, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39580)
    #dbg_value(i64 %i.f, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39574)
    #dbg_value(i64 %i.f, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39576)
    #dbg_value(i64 %i.f, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39578)
    #dbg_value(i64 %i.f, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39580)
  %i.i = icmp eq i64 %i.f, 0, !dbg !39615
  br i1 %i.i, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit, label %bb.b, !dbg !39615

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -64, %i.c, !dbg !39616
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39580)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39578)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39576)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39574)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !39596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39568)
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j, !dbg !39617
    #dbg_value(ptr %i.k, !39596, !DIExpression(), !39568)
    #dbg_value(ptr %i.k, !4211, !DIExpression(), !39574)
    #dbg_value(ptr %i.k, !4217, !DIExpression(), !39576)
    #dbg_value(ptr %i.k, !4220, !DIExpression(), !39578)
    #dbg_value(ptr %i.k, !4226, !DIExpression(), !39580)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !dbg !39618
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit, !dbg !39619

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1j_.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !39620
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReTBP_jEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !39621 {
bb.a:
    #dbg_value(ptr %0, !39670, !DIExpression(), !39672)
  %.val = load ptr, ptr %0, align 8, !dbg !39695  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39695
  %.val1 = load i64, ptr %i.a, align 8, !dbg !39695, !noundef !2127 ; 4 uses
    #dbg_value(ptr poison, !39673, !DIExpression(), !39624)
    #dbg_value(ptr poison, !39678, !DIExpression(), !39627)
    #dbg_value(ptr poison, !39680, !DIExpression(), !39631)
    #dbg_value(ptr poison, !39686, !DIExpression(), !39636)
    #dbg_value(ptr poison, !39675, !DIExpression(), !39624)
    #dbg_value(ptr poison, !39681, !DIExpression(), !39631)
    #dbg_value(i64 40, !39676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39624)
    #dbg_value(i64 40, !39682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39631)
    #dbg_value(i64 40, !39687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39636)
    #dbg_value(i64 16, !39676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39624)
    #dbg_value(i64 16, !39682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39631)
    #dbg_value(i64 16, !39687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39636)
  %i.b = icmp eq i64 %.val1, 0, !dbg !39696
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTB1d_jEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !39697

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 40, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39638)
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39638)
    #dbg_value(i64 %.val1, !4163, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39638)
    #dbg_value(i64 %.val1, !4175, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39640)
    #dbg_value(i64 %.val1, !4180, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39642)
    #dbg_value(i64 40, !4164, !DIExpression(), !39643)
    #dbg_value(i64 40, !4176, !DIExpression(), !39640)
    #dbg_value(i64 40, !4186, !DIExpression(), !39642)
    #dbg_value(i64 16, !4165, !DIExpression(), !39643)
  %i.c = mul i64 %.val1, 40, !dbg !39698
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39645)
    #dbg_value(i64 %i.c, !4190, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !39647)
    #dbg_value(i64 15, !4191, !DIExpression(), !39647)
  %i.d = icmp slt i64 %.val1, 461168601842738790, !dbg !39699
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39649)
  tail call void @llvm.assume(i1 %i.d), !dbg !39700
  %i.e = and i64 %i.c, -16, !dbg !39701           ; 2 uses
  %i.f = add i64 %i.e, 48, !dbg !39701            ; 2 uses
    #dbg_value(i64 %i.f, !4166, !DIExpression(), !39650)
    #dbg_value(i64 %i.f, !4190, !DIExpression(), !39652)
  %i.g = add nsw i64 %.val1, 17, !dbg !39702
    #dbg_value(i64 %i.g, !4191, !DIExpression(), !39652)
  %i.h = add i64 %i.g, %i.f, !dbg !39703          ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f, !dbg !39703
    #dbg_value(i1 %i.i, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39654)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i), !dbg !39704
  tail call void @llvm.assume(i1 %i.j), !dbg !39704
    #dbg_value(i64 16, !39684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39655)
    #dbg_value(i64 16, !39688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39656)
    #dbg_value(i64 %i.h, !39684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39655)
    #dbg_value(i64 %i.h, !39688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39656)
    #dbg_value(i64 %i.f, !39689, !DIExpression(), !39656)
    #dbg_value(i64 %i.f, !39692, !DIExpression(), !39659)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !39693, !DIExpression(), !39659)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !39683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39655)
    #dbg_value(ptr poison, !4207, !DIExpression(), !39661)
    #dbg_value(ptr poison, !4214, !DIExpression(), !39663)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39661)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39663)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39665)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39667)
    #dbg_value(i64 16, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39661)
    #dbg_value(i64 16, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39663)
    #dbg_value(i64 16, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39665)
    #dbg_value(i64 16, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39667)
    #dbg_value(i64 %i.h, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39661)
    #dbg_value(i64 %i.h, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39663)
    #dbg_value(i64 %i.h, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39665)
    #dbg_value(i64 %i.h, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39667)
  %i.k = icmp eq i64 %i.h, 0, !dbg !39705
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTB1d_jEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !39705

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -48, %i.e, !dbg !39706
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39667)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39665)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39663)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39661)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !39683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39655)
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l, !dbg !39707
    #dbg_value(ptr %i.m, !39683, !DIExpression(), !39655)
    #dbg_value(ptr %i.m, !4211, !DIExpression(), !39661)
    #dbg_value(ptr %i.m, !4217, !DIExpression(), !39663)
    #dbg_value(ptr %i.m, !4220, !DIExpression(), !39665)
    #dbg_value(ptr %i.m, !4226, !DIExpression(), !39667)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !dbg !39708
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTB1d_jEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !39709

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTB1d_jEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !39710
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !39711 {
bb.a:
    #dbg_value(ptr %0, !39760, !DIExpression(), !39762)
  %.val = load ptr, ptr %0, align 8, !dbg !39785  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39785
  %.val1 = load i64, ptr %i.a, align 8, !dbg !39785, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !39763, !DIExpression(), !39714)
    #dbg_value(ptr poison, !39768, !DIExpression(), !39717)
    #dbg_value(ptr poison, !39770, !DIExpression(), !39721)
    #dbg_value(ptr poison, !39776, !DIExpression(), !39726)
    #dbg_value(ptr poison, !39765, !DIExpression(), !39714)
    #dbg_value(ptr poison, !39771, !DIExpression(), !39721)
    #dbg_value(i64 16, !39766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39714)
    #dbg_value(i64 16, !39772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39721)
    #dbg_value(i64 16, !39777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39726)
    #dbg_value(i64 16, !39766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39714)
    #dbg_value(i64 16, !39772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39721)
    #dbg_value(i64 16, !39777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39726)
  %i.b = icmp eq i64 %.val1, 0, !dbg !39786
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !39787

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39728)
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39728)
    #dbg_value(i64 %.val1, !4163, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39728)
    #dbg_value(i64 %.val1, !4175, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39730)
    #dbg_value(i64 %.val1, !4180, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39732)
    #dbg_value(i64 16, !4164, !DIExpression(), !39733)
    #dbg_value(i64 16, !4176, !DIExpression(), !39730)
    #dbg_value(i64 16, !4186, !DIExpression(), !39732)
    #dbg_value(i64 16, !4165, !DIExpression(), !39733)
  %i.c = shl i64 %.val1, 4, !dbg !39788           ; 2 uses
  %i.d = add i64 %i.c, 16, !dbg !39788            ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39735)
    #dbg_value(i64 %i.d, !4190, !DIExpression(), !39737)
    #dbg_value(i64 15, !4191, !DIExpression(), !39737)
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39739)
    #dbg_value(i64 %i.d, !4166, !DIExpression(), !39740)
    #dbg_value(i64 %i.d, !4190, !DIExpression(), !39742)
  %i.e = add i64 %.val1, 17, !dbg !39789
    #dbg_value(i64 %i.e, !4191, !DIExpression(), !39742)
  %i.f = add i64 %i.e, %i.d, !dbg !39790          ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d, !dbg !39790
    #dbg_value(i1 %i.g, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39744)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g), !dbg !39791
  tail call void @llvm.assume(i1 %i.h), !dbg !39791
    #dbg_value(i64 16, !39774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39745)
    #dbg_value(i64 16, !39778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39746)
    #dbg_value(i64 %i.f, !39774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39745)
    #dbg_value(i64 %i.f, !39778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39746)
    #dbg_value(i64 %i.d, !39779, !DIExpression(), !39746)
    #dbg_value(i64 %i.d, !39782, !DIExpression(), !39749)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !39783, !DIExpression(), !39749)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !39773, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39745)
    #dbg_value(ptr poison, !4207, !DIExpression(), !39751)
    #dbg_value(ptr poison, !4214, !DIExpression(), !39753)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39751)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39753)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39755)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !39757)
    #dbg_value(i64 16, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39751)
    #dbg_value(i64 16, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39753)
    #dbg_value(i64 16, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39755)
    #dbg_value(i64 16, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39757)
    #dbg_value(i64 %i.f, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39751)
    #dbg_value(i64 %i.f, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39753)
    #dbg_value(i64 %i.f, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39755)
    #dbg_value(i64 %i.f, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39757)
  %i.i = icmp eq i64 %i.f, 0, !dbg !39792
  br i1 %i.i, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !39792

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c, !dbg !39793
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39757)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39755)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4217, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39753)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39751)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !39773, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !39745)
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j, !dbg !39794
    #dbg_value(ptr %i.k, !39773, !DIExpression(), !39745)
    #dbg_value(ptr %i.k, !4211, !DIExpression(), !39751)
    #dbg_value(ptr %i.k, !4217, !DIExpression(), !39753)
    #dbg_value(ptr %i.k, !4220, !DIExpression(), !39755)
    #dbg_value(ptr %i.k, !4226, !DIExpression(), !39757)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !dbg !39795
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit, !dbg !39796

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !39797
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !39799 {
bb.a:
    #dbg_value(ptr poison, !39864, !DIExpression(), !39811)
    #dbg_declare(ptr %1, !39861, !DIExpression(), !39888)
    #dbg_value(ptr %1, !39890, !DIExpression(), !39896)
    #dbg_value(ptr %1, !39897, !DIExpression(), !39901)
    #dbg_value(ptr %1, !39902, !DIExpression(), !39905)
    #dbg_value(ptr %1, !39906, !DIExpression(), !39909)
  %i.a = load ptr, ptr %1, align 8, !dbg !39919, !nonnull !2127, !noundef !2127 ; 5 uses
    #dbg_value(ptr %i.a, !39898, !DIExpression(), !39910)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !39920
  %i.c = load i64, ptr %i.b, align 8, !dbg !39920, !noundef !2127 ; 4 uses
    #dbg_value(ptr %i.a, !7532, !DIExpression(), !39818)
    #dbg_value(ptr %i.a, !7552, !DIExpression(), !39820)
    #dbg_value(ptr %i.a, !7552, !DIExpression(), !39822)
    #dbg_value(ptr %i.a, !7536, !DIExpression(), !39818)
    #dbg_value(i64 %i.c, !7537, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39818)
    #dbg_value(i64 %i.c, !7553, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39820)
    #dbg_value(i64 16, !7554, !DIExpression(), !39822)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !7548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !39823)
    #dbg_value(ptr %i.a, !7556, !DIExpression(), !39825)
  %.val11.i = load <16 x i8>, ptr %i.a, align 16, !dbg !39921, !noalias !39911
    #dbg_value(<2 x i64> poison, !7563, !DIExpression(), !39830)
    #dbg_value(ptr poison, !7565, !DIExpression(), !39831)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !39833)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !39834)
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !39835)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !39922
  %i.e = load i64, ptr %i.d, align 8, !dbg !39922, !noundef !2127
    #dbg_value(ptr %i.a, !39879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39912)
    #dbg_value(ptr %i.a, !39862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39913)
    #dbg_value(ptr %i.a, !39879, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !39912)
    #dbg_value(ptr %i.a, !39862, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !39913)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !39879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !39912)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !39862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !39913)
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 -1)), !39879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !39912)
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 -1)), !39862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !39913)
    #dbg_value(i64 %i.e, !39862, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !39913)
    #dbg_value(i64 %i.e, !39879, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !39912)
    #dbg_value(ptr %i.a, !39878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39912)
    #dbg_value(ptr %i.a, !39869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39914)
    #dbg_value(i64 %i.c, !39878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39912)
    #dbg_value(i64 %i.c, !39869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39914)
    #dbg_value(ptr undef, !39864, !DIExpression(), !39811)
  %i.f = icmp eq i64 %i.c, 0, !dbg !39923
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE15into_allocationB1L_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !39924

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 48, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39837)
    #dbg_value(i64 16, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39837)
    #dbg_value(i64 %i.c, !4163, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39837)
    #dbg_value(i64 %i.c, !4175, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39839)
    #dbg_value(i64 %i.c, !4180, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39841)
    #dbg_value(i64 48, !4164, !DIExpression(), !39842)
    #dbg_value(i64 48, !4176, !DIExpression(), !39839)
    #dbg_value(i64 48, !4186, !DIExpression(), !39841)
    #dbg_value(i64 16, !4165, !DIExpression(), !39842)
  %i.g = mul i64 %i.c, 48, !dbg !39925            ; 2 uses
  %i.h = add i64 %i.g, 48, !dbg !39925            ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39844)
    #dbg_value(i64 15, !4191, !DIExpression(), !39846)
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39848)
    #dbg_value(i64 %i.h, !4190, !DIExpression(), !39846)
    #dbg_value(i64 %i.h, !4166, !DIExpression(), !39849)
    #dbg_value(i64 %i.h, !4190, !DIExpression(), !39851)
  %i.i = add i64 %i.c, 17, !dbg !39926
    #dbg_value(i64 %i.i, !4191, !DIExpression(), !39851)
  %i.j = add i64 %i.i, %i.h, !dbg !39927          ; 3 uses
  %i.k = icmp uge i64 %i.j, %i.h, !dbg !39927
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39853)
  tail call void @llvm.assume(i1 %i.k), !dbg !39928
    #dbg_value(i64 %i.j, !4171, !DIExpression(), !39854)
  %i.l = icmp ult i64 %i.j, 9223372036854775793, !dbg !39929
  tail call void @llvm.assume(i1 %i.l), !dbg !39929
    #dbg_value(i64 16, !39871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39855)
    #dbg_value(i64 %i.j, !39871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39855)
    #dbg_value(i64 %i.h, !39872, !DIExpression(), !39855)
    #dbg_value(i64 %i.h, !39915, !DIExpression(), !39858)
    #dbg_value(ptr %i.a, !39916, !DIExpression(), !39858)
  %i.m = sub i64 -48, %i.g, !dbg !39930
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.m, !dbg !39931
    #dbg_value(i64 %i.j, !39885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39918)
    #dbg_value(ptr %i.n, !39885, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39918)
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE15into_allocationB1L_.exit, !dbg !39932

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE15into_allocationB1L_.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.518.0 = phi ptr [ undef, %bb.a ], [ %i.n, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ], !dbg !39933
  %.sroa.417.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ], !dbg !39933
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ], !dbg !39914
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !39934
    #dbg_value(ptr %i.o, !39879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39912)
    #dbg_value(ptr %i.o, !39862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39913)
  %i.p = icmp sgt <16 x i8> %.val11.i, splat (i8 -1), !dbg !39935
    #dbg_value(<16 x i1> %i.p, !39879, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !39912)
    #dbg_value(<16 x i1> %i.p, !39862, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !39913)
  %i.q = getelementptr i8, ptr %i.a, i64 %i.c, !dbg !39936
  %i.r = getelementptr i8, ptr %i.q, i64 1, !dbg !39936
    #dbg_value(ptr %i.r, !7548, !DIExpression(), !39823)
    #dbg_value(ptr %i.r, !39879, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39912)
    #dbg_value(ptr %i.r, !39862, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39913)
    #dbg_value(i64 %.sroa.417.0, !39885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39918)
    #dbg_value(ptr %.sroa.518.0, !39885, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39918)
    #dbg_value(i64 %.sink.i, !39885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39918)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !39937
  store ptr %i.a, ptr %i.s, align 8, !dbg !39937
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !39937
  store ptr %i.o, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !39937
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !39937
  store ptr %i.r, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !dbg !39937
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !39937
  store <16 x i1> %i.p, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !dbg !39937
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !39937
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !39937
  store i64 %.sink.i, ptr %0, align 8, !dbg !39937
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39937
  store i64 %.sroa.417.0, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !39937
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39937
  store ptr %.sroa.518.0, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !39937
  ret void, !dbg !39938
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB1N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !39940 {
bb.a:
    #dbg_value(ptr poison, !40005, !DIExpression(), !39952)
    #dbg_declare(ptr %1, !40002, !DIExpression(), !40029)
    #dbg_value(ptr %1, !40030, !DIExpression(), !40033)
    #dbg_value(ptr %1, !40034, !DIExpression(), !40038)
    #dbg_value(ptr %1, !40039, !DIExpression(), !40042)
    #dbg_value(ptr %1, !40043, !DIExpression(), !40046)
  %i.a = load ptr, ptr %1, align 8, !dbg !40056, !nonnull !2127, !noundef !2127 ; 5 uses
    #dbg_value(ptr %i.a, !40035, !DIExpression(), !40047)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !40057
  %i.c = load i64, ptr %i.b, align 8, !dbg !40057, !noundef !2127 ; 4 uses
    #dbg_value(ptr %i.a, !7266, !DIExpression(), !39959)
    #dbg_value(ptr %i.a, !7286, !DIExpression(), !39961)
    #dbg_value(ptr %i.a, !7286, !DIExpression(), !39963)
    #dbg_value(ptr %i.a, !7270, !DIExpression(), !39959)
    #dbg_value(i64 %i.c, !7271, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39959)
    #dbg_value(i64 %i.c, !7287, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !39961)
    #dbg_value(i64 16, !7288, !DIExpression(), !39963)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !7282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !39964)
    #dbg_value(ptr %i.a, !7290, !DIExpression(), !39966)
  %.val11.i = load <16 x i8>, ptr %i.a, align 16, !dbg !40058, !noalias !40048
    #dbg_value(<2 x i64> poison, !7297, !DIExpression(), !39971)
    #dbg_value(ptr poison, !7299, !DIExpression(), !39972)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !39974)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !39975)
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !39976)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !40059
  %i.e = load i64, ptr %i.d, align 8, !dbg !40059, !noundef !2127
    #dbg_value(ptr %i.a, !40020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40049)
    #dbg_value(ptr %i.a, !40003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40050)
    #dbg_value(ptr %i.a, !40020, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !40049)
    #dbg_value(ptr %i.a, !40003, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !40050)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !40020, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !40049)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !40003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !40050)
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 -1)), !40020, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !40049)
    #dbg_value(!DIArgList(<16 x i8> %.val11.i, <16 x i8> splat (i8 -1)), !40003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !40050)
    #dbg_value(i64 %i.e, !40003, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40050)
end_hunk_22
