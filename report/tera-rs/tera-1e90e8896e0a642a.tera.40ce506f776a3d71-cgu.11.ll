Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.11?download=true
inline.NumInlined: 436
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push:bb.a
    #dbg_value(ptr %i.h, !2550, !DIExpression(), !18929)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b, !dbg !18948 ; 9 uses
    #dbg_value(i32 %1, !2572, !DIExpression(), !18901)
    #dbg_value(ptr %i.i, !2575, !DIExpression(), !18901)
    #dbg_value(ptr %i.i, !2582, !DIExpression(), !18903)
    #dbg_value(ptr %i.i, !2582, !DIExpression(), !18905)
    #dbg_value(ptr %i.i, !2582, !DIExpression(), !18907)
    #dbg_value(ptr %i.i, !2582, !DIExpression(), !18909)
    #dbg_value(ptr %i.i, !2582, !DIExpression(), !18911)
    #dbg_value(ptr %i.i, !2582, !DIExpression(), !18913)
    #dbg_value(i64 1, !2583, !DIExpression(), !18903)
    #dbg_value(i64 1, !2583, !DIExpression(), !18905)
    #dbg_value(i64 1, !2583, !DIExpression(), !18907)
    #dbg_value(i64 2, !2583, !DIExpression(), !18909)
    #dbg_value(i64 2, !2583, !DIExpression(), !18911)
    #dbg_value(i64 3, !2583, !DIExpression(), !18913)
    #dbg_value(i64 poison, !2576, !DIExpression(), !18914)
  %i.j = trunc i32 %1 to i8, !dbg !18949
  %i.k = and i8 %i.j, 63, !dbg !18949
  %i.l = or disjoint i8 %i.k, -128, !dbg !18949   ; 3 uses
    #dbg_value(i8 %i.l, !2577, !DIExpression(), !18915)
  %i.m = lshr i32 %1, 6, !dbg !18950
  %i.n = trunc i32 %i.m to i8, !dbg !18951        ; 2 uses
  %i.o = and i8 %i.n, 63, !dbg !18951
  %i.p = or disjoint i8 %i.o, -128, !dbg !18951   ; 2 uses
    #dbg_value(i8 %i.p, !2578, !DIExpression(), !18916)
  %i.q = lshr i32 %1, 12, !dbg !18952
  %i.r = trunc i32 %i.q to i8, !dbg !18953        ; 2 uses
  %i.s = and i8 %i.r, 63, !dbg !18953
  %i.t = or disjoint i8 %i.s, -128, !dbg !18953
    #dbg_value(i8 %i.t, !2579, !DIExpression(), !18917)
  %i.u = lshr i32 %1, 18, !dbg !18954
  %i.v = trunc nuw nsw i32 %i.u to i8, !dbg !18955
  %i.w = or disjoint i8 %i.v, -16, !dbg !18955
    #dbg_value(i8 %i.w, !2580, !DIExpression(), !18918)
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !18956

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 1, !2524, !DIExpression(), !18932)
    #dbg_value(i64 1, !2535, !DIExpression(), !18923)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1), !dbg !18946
    #dbg_value(ptr %0, !2556, !DIExpression(), !18934)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18947
  %i.y = load ptr, ptr %i.x, align 8, !dbg !18947, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.y, !2550, !DIExpression(), !18929)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b, !dbg !18948
    #dbg_value(i32 %1, !2572, !DIExpression(), !18901)
    #dbg_value(ptr %i.z, !2575, !DIExpression(), !18901)
    #dbg_value(ptr %i.z, !2582, !DIExpression(), !18903)
    #dbg_value(ptr %i.z, !2582, !DIExpression(), !18905)
    #dbg_value(ptr %i.z, !2582, !DIExpression(), !18907)
    #dbg_value(ptr %i.z, !2582, !DIExpression(), !18909)
    #dbg_value(ptr %i.z, !2582, !DIExpression(), !18911)
    #dbg_value(ptr %i.z, !2582, !DIExpression(), !18913)
    #dbg_value(i64 1, !2583, !DIExpression(), !18903)
    #dbg_value(i64 1, !2583, !DIExpression(), !18905)
    #dbg_value(i64 1, !2583, !DIExpression(), !18907)
    #dbg_value(i64 2, !2583, !DIExpression(), !18909)
    #dbg_value(i64 2, !2583, !DIExpression(), !18911)
    #dbg_value(i64 3, !2583, !DIExpression(), !18913)
    #dbg_value(i64 1, !2576, !DIExpression(), !18914)
  %i.aa = trunc nuw nsw i32 %1 to i8, !dbg !18957
  store i8 %i.aa, ptr %i.z, align 1, !dbg !18957
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods25encode_utf8_raw_unchecked.exit, !dbg !18958

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64, !dbg !18959
  store i8 %i.ab, ptr %i.i, align 1, !dbg !18959
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !18960
  store i8 %i.l, ptr %i.ac, align 1, !dbg !18961
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods25encode_utf8_raw_unchecked.exit, !dbg !18962

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g, !dbg !18963

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32, !dbg !18964
  store i8 %i.ad, ptr %i.i, align 1, !dbg !18964
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !18965
  store i8 %i.p, ptr %i.ae, align 1, !dbg !18966
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !18967
  store i8 %i.l, ptr %i.af, align 1, !dbg !18968
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods25encode_utf8_raw_unchecked.exit, !dbg !18962

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1, !dbg !18969
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !18970
  store i8 %i.t, ptr %i.ag, align 1, !dbg !18971
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !18972
  store i8 %i.p, ptr %i.ah, align 1, !dbg !18973
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3, !dbg !18974
  store i8 %i.l, ptr %i.ai, align 1, !dbg !18975
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods25encode_utf8_raw_unchecked.exit, !dbg !18976

_RNvNtNtCsf3Ta7LF998c_4core4char7methods25encode_utf8_raw_unchecked.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.011 = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
    #dbg_value(ptr %0, !2587, !DIExpression(), !18939)
  %i.aj = add nuw i64 %.sroa.0.011, %i.b, !dbg !18977
    #dbg_value(i64 %i.aj, !2591, !DIExpression(), !18940)
  store i64 %i.aj, ptr %i.a, align 8, !dbg !18978
  ret void, !dbg !18979
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !18980 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 16 uses
    #dbg_declare(ptr %1, !19011, !DIExpression(), !19014)
    #dbg_value(ptr %2, !19012, !DIExpression(), !19015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19016), !dbg !19028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19017), !dbg !19028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19018), !dbg !19028
    #dbg_declare(ptr %1, !2919, !DIExpression(), !18986)
    #dbg_value(ptr %2, !2923, !DIExpression(), !18987)
    #dbg_value(ptr %2, !2926, !DIExpression(), !18989)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !19029
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !19029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19030, !alias.scope !19019, !noalias !19018
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !19030
  store i64 0, ptr %i.d, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.4.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !19030
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx16.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.5.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !19030
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !19030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx17.i, i8 0, i64 16, i1 false), !dbg !19030, !alias.scope !19016, !noalias !19020
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !19030
  store i64 0, ptr %.sroa.520.0..sroa_idx.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !19030
  %i.f = load <2 x i64>, ptr %2, align 8, !dbg !19029, !alias.scope !19018, !noalias !19019
  store <2 x i64> %i.f, ptr %i.e, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !19030
  %i.g = load <2 x i64>, ptr %i.b, align 8, !dbg !19029, !alias.scope !19018, !noalias !19019
  store <2 x i64> %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !19030
  %i.h = load <2 x i64>, ptr %i.c, align 8, !dbg !19029, !alias.scope !19018, !noalias !19019
  store <2 x i64> %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !19030
  store i64 0, ptr %i.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !19030
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !19030
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !19030, !alias.scope !19016, !noalias !19020
    #dbg_declare(ptr %i.a, !19021, !DIExpression(), !18993)
    #dbg_value(i64 8, !2935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18995)
    #dbg_value(i64 8, !2942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18997)
    #dbg_value(i64 8, !2959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18999)
    #dbg_value(i64 144, !2935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18995)
    #dbg_value(i64 144, !2942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18997)
    #dbg_value(i64 144, !2959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18999)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2957, !DIExpression(), !18997)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2963, !DIExpression(), !18999)
    #dbg_value(i8 0, !2964, !DIExpression(), !18999)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19001)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19003)
    #dbg_value(i64 144, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19001)
    #dbg_value(i64 144, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19003)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19001)
    #dbg_value(i64 144, !2971, !DIExpression(), !19004)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19031, !noalias !19027
  %i.j = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 144, i64 noundef 8) #26, !dbg !19032, !noalias !19027 ; 3 uses
  %i.k = icmp eq ptr %i.j, null, !dbg !19033
  br i1 %i.k, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_.exit, !dbg !19034, !prof !1461

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #22
          to label %.noexc unwind label %bb.c, !dbg !19035

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !19035

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.a) #23
          to label %bb.e unwind label %bb.d, !dbg !19036

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19037
  unreachable, !dbg !19037

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l, !dbg !19037

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.j, !19025, !DIExpression(), !19007)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.j, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !dbg !19038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19039
  store i8 1, ptr %0, align 8, !dbg !19040
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19040
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !19040
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !19040
  store ptr null, ptr %i.n, align 8, !dbg !19040
  ret void, !dbg !19041
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEE13new_uninit_inB1T_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19046 {
bb.a:
    #dbg_declare(ptr poison, !19077, !DIExpression(), !19082)
    #dbg_value(i64 8, !19078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19083)
    #dbg_value(i64 640, !19078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19083)
    #dbg_declare(ptr poison, !19084, !DIExpression(), !19058)
    #dbg_value(i64 8, !19099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19059)
    #dbg_value(i64 640, !19099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19059)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19061)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19063)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19061)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19063)
    #dbg_value(i64 640, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19061)
    #dbg_value(i64 640, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19063)
    #dbg_value(i8 0, !3060, !DIExpression(), !19063)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19065)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19067)
    #dbg_value(i64 640, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19065)
    #dbg_value(i64 640, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19067)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19065)
    #dbg_value(i64 640, !2971, !DIExpression(), !19068)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19108
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 640, i64 noundef range(i64 8, 17) 8) #26, !dbg !19109 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19110
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19111, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #22, !dbg !19112
  unreachable, !dbg !19112

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19113
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs5yXxDE1DkoT_4tera() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19118 {
bb.a:
    #dbg_declare(ptr poison, !19149, !DIExpression(), !19154)
    #dbg_value(i64 8, !19150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19155)
    #dbg_value(i64 376, !19150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19155)
    #dbg_declare(ptr poison, !19156, !DIExpression(), !19130)
    #dbg_value(i64 8, !19171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19131)
    #dbg_value(i64 376, !19171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19131)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19133)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19135)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19133)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19135)
    #dbg_value(i64 376, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19133)
    #dbg_value(i64 376, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19135)
    #dbg_value(i8 0, !3060, !DIExpression(), !19135)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19137)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19139)
    #dbg_value(i64 376, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19137)
    #dbg_value(i64 376, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19139)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19137)
    #dbg_value(i64 376, !2971, !DIExpression(), !19140)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19180
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 376, i64 noundef range(i64 8, 17) 8) #26, !dbg !19181 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19182
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19183, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #22, !dbg !19184
  unreachable, !dbg !19184

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19185
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE13new_uninit_inB1T_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19190 {
bb.a:
    #dbg_declare(ptr poison, !19221, !DIExpression(), !19226)
    #dbg_value(i64 8, !19222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19227)
    #dbg_value(i64 640, !19222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19227)
    #dbg_declare(ptr poison, !19228, !DIExpression(), !19202)
    #dbg_value(i64 8, !19243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19203)
    #dbg_value(i64 640, !19243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19203)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19205)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19207)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19205)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19207)
    #dbg_value(i64 640, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19205)
    #dbg_value(i64 640, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19207)
    #dbg_value(i8 0, !3060, !DIExpression(), !19207)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19209)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19211)
    #dbg_value(i64 640, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19209)
    #dbg_value(i64 640, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19211)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19209)
    #dbg_value(i64 640, !2971, !DIExpression(), !19212)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19252
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 640, i64 noundef range(i64 8, 17) 8) #26, !dbg !19253 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19254
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19255, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #22, !dbg !19256
  unreachable, !dbg !19256

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19257
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEE13new_uninit_inB1V_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19262 {
bb.a:
    #dbg_declare(ptr poison, !19293, !DIExpression(), !19298)
    #dbg_value(i64 8, !19294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19299)
    #dbg_value(i64 1080, !19294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19299)
    #dbg_declare(ptr poison, !19300, !DIExpression(), !19274)
    #dbg_value(i64 8, !19315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19275)
    #dbg_value(i64 1080, !19315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19275)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19277)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19279)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19277)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19279)
    #dbg_value(i64 1080, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19277)
    #dbg_value(i64 1080, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19279)
    #dbg_value(i8 0, !3060, !DIExpression(), !19279)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19281)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19283)
    #dbg_value(i64 1080, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19281)
    #dbg_value(i64 1080, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19283)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19281)
    #dbg_value(i64 1080, !2971, !DIExpression(), !19284)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19324
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1080) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 1080, i64 noundef range(i64 8, 17) 8) #26, !dbg !19325 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19326
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19327, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1080) #22, !dbg !19328
  unreachable, !dbg !19328

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19329
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEE13new_uninit_inB1V_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19334 {
bb.a:
    #dbg_declare(ptr poison, !19365, !DIExpression(), !19370)
    #dbg_value(i64 8, !19366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19371)
    #dbg_value(i64 728, !19366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19371)
    #dbg_declare(ptr poison, !19372, !DIExpression(), !19346)
    #dbg_value(i64 8, !19387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19347)
    #dbg_value(i64 728, !19387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19347)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19349)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19351)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19349)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(i64 728, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19349)
    #dbg_value(i64 728, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(i8 0, !3060, !DIExpression(), !19351)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19353)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19355)
    #dbg_value(i64 728, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19353)
    #dbg_value(i64 728, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19355)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19353)
    #dbg_value(i64 728, !2971, !DIExpression(), !19356)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19396
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 728, i64 noundef range(i64 8, 17) 8) #26, !dbg !19397 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19398
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19399, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #22, !dbg !19400
  unreachable, !dbg !19400

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19401
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtB6_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEE13new_uninit_inB1O_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19406 {
bb.a:
    #dbg_declare(ptr poison, !19437, !DIExpression(), !19442)
    #dbg_value(i64 8, !19438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19443)
    #dbg_value(i64 544, !19438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19443)
    #dbg_declare(ptr poison, !19444, !DIExpression(), !19418)
    #dbg_value(i64 8, !19459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19419)
    #dbg_value(i64 544, !19459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19419)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19421)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19423)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19421)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19423)
    #dbg_value(i64 544, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19421)
    #dbg_value(i64 544, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19423)
    #dbg_value(i8 0, !3060, !DIExpression(), !19423)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19425)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19427)
    #dbg_value(i64 544, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19425)
    #dbg_value(i64 544, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19427)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19425)
    #dbg_value(i64 544, !2971, !DIExpression(), !19428)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19468
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 544, i64 noundef range(i64 8, 17) 8) #26, !dbg !19469 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19470
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19471, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #22, !dbg !19472
  unreachable, !dbg !19472

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19473
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs5yXxDE1DkoT_4tera() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19478 {
bb.a:
    #dbg_declare(ptr poison, !19509, !DIExpression(), !19514)
    #dbg_value(i64 8, !19510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19515)
    #dbg_value(i64 280, !19510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19515)
    #dbg_declare(ptr poison, !19516, !DIExpression(), !19490)
    #dbg_value(i64 8, !19531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19491)
    #dbg_value(i64 280, !19531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19491)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19493)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19495)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19493)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19495)
    #dbg_value(i64 280, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19493)
    #dbg_value(i64 280, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19495)
    #dbg_value(i8 0, !3060, !DIExpression(), !19495)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19497)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19499)
    #dbg_value(i64 280, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19497)
    #dbg_value(i64 280, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19499)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19497)
    #dbg_value(i64 280, !2971, !DIExpression(), !19500)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19540
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 280, i64 noundef range(i64 8, 17) 8) #26, !dbg !19541 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19542
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19543, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #22, !dbg !19544
  unreachable, !dbg !19544

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19545
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEE13new_uninit_inB1O_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19550 {
bb.a:
    #dbg_declare(ptr poison, !19581, !DIExpression(), !19586)
    #dbg_value(i64 8, !19582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19587)
    #dbg_value(i64 544, !19582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19587)
    #dbg_declare(ptr poison, !19588, !DIExpression(), !19562)
    #dbg_value(i64 8, !19603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19563)
    #dbg_value(i64 544, !19603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19563)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19565)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19567)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19565)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19567)
    #dbg_value(i64 544, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19565)
    #dbg_value(i64 544, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19567)
    #dbg_value(i8 0, !3060, !DIExpression(), !19567)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19569)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19571)
    #dbg_value(i64 544, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19569)
    #dbg_value(i64 544, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19571)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19569)
    #dbg_value(i64 544, !2971, !DIExpression(), !19572)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19612
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 544, i64 noundef range(i64 8, 17) 8) #26, !dbg !19613 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19614
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19615, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #22, !dbg !19616
  unreachable, !dbg !19616

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19617
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEE13new_uninit_inB1Q_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19622 {
bb.a:
    #dbg_declare(ptr poison, !19653, !DIExpression(), !19658)
    #dbg_value(i64 8, !19654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19659)
    #dbg_value(i64 984, !19654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19659)
    #dbg_declare(ptr poison, !19660, !DIExpression(), !19634)
    #dbg_value(i64 8, !19675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 984, !19675, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19637)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19639)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19637)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19639)
    #dbg_value(i64 984, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19637)
    #dbg_value(i64 984, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19639)
    #dbg_value(i8 0, !3060, !DIExpression(), !19639)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19641)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(i64 984, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19641)
    #dbg_value(i64 984, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19641)
    #dbg_value(i64 984, !2971, !DIExpression(), !19644)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19684
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(984) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 984, i64 noundef range(i64 8, 17) 8) #26, !dbg !19685 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19686
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19687, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 984) #22, !dbg !19688
  unreachable, !dbg !19688

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19689
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEE13new_uninit_inB1Q_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19694 {
bb.a:
    #dbg_declare(ptr poison, !19725, !DIExpression(), !19730)
    #dbg_value(i64 8, !19726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19731)
    #dbg_value(i64 632, !19726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19731)
    #dbg_declare(ptr poison, !19732, !DIExpression(), !19706)
    #dbg_value(i64 8, !19747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19707)
    #dbg_value(i64 632, !19747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19707)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19709)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19711)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19709)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19711)
    #dbg_value(i64 632, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19709)
    #dbg_value(i64 632, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19711)
    #dbg_value(i8 0, !3060, !DIExpression(), !19711)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19713)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19715)
    #dbg_value(i64 632, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19713)
    #dbg_value(i64 632, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19715)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19713)
    #dbg_value(i64 632, !2971, !DIExpression(), !19716)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19756
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 632, i64 noundef range(i64 8, 17) 8) #26, !dbg !19757 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19758
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19759, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #22, !dbg !19760
  unreachable, !dbg !19760

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19761
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE13new_uninit_inCs5yXxDE1DkoT_4tera() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19764 {
bb.a:
    #dbg_declare(ptr poison, !19790, !DIExpression(), !19794)
    #dbg_value(i64 8, !19791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19795)
    #dbg_value(i64 24, !19791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19795)
    #dbg_declare(ptr poison, !19796, !DIExpression(), !19776)
    #dbg_value(i64 8, !19811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19777)
    #dbg_value(i64 24, !19811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19777)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19779)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19781)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19779)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19781)
    #dbg_value(i64 24, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19779)
    #dbg_value(i64 24, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19781)
    #dbg_value(i8 0, !3060, !DIExpression(), !19781)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19783)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19785)
    #dbg_value(i64 24, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19783)
    #dbg_value(i64 24, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19785)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19783)
    #dbg_value(i64 24, !2971, !DIExpression(), !19786)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19820
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 24, i64 noundef range(i64 8, 17) 8) #26, !dbg !19821 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19822
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19823, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !dbg !19824
  unreachable, !dbg !19824

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19825
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtCs5yXxDE1DkoT_4tera5value5ValueE13new_uninit_inBK_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19828 {
bb.a:
    #dbg_declare(ptr poison, !19854, !DIExpression(), !19858)
    #dbg_value(i64 8, !19855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19859)
    #dbg_value(i64 24, !19855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19859)
    #dbg_declare(ptr poison, !19860, !DIExpression(), !19840)
    #dbg_value(i64 8, !19875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19841)
    #dbg_value(i64 24, !19875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19841)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19843)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19845)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19843)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19845)
    #dbg_value(i64 24, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19843)
    #dbg_value(i64 24, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19845)
    #dbg_value(i8 0, !3060, !DIExpression(), !19845)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19847)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19849)
    #dbg_value(i64 24, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19847)
    #dbg_value(i64 24, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19849)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19847)
    #dbg_value(i64 24, !2971, !DIExpression(), !19850)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19884
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 24, i64 noundef range(i64 8, 17) 8) #26, !dbg !19885 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19886
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19887, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !dbg !19888
  unreachable, !dbg !19888

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19889
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE13new_uninit_inBK_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19894 {
bb.a:
    #dbg_declare(ptr poison, !19925, !DIExpression(), !19929)
    #dbg_value(i64 8, !19926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19930)
    #dbg_value(i64 144, !19926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19930)
    #dbg_declare(ptr poison, !19931, !DIExpression(), !19906)
    #dbg_value(i64 8, !19946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19907)
    #dbg_value(i64 144, !19946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19907)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19909)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19911)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19909)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19911)
    #dbg_value(i64 144, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19909)
    #dbg_value(i64 144, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19911)
    #dbg_value(i8 0, !3060, !DIExpression(), !19911)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19913)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19915)
    #dbg_value(i64 144, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19913)
    #dbg_value(i64 144, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19915)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19913)
    #dbg_value(i64 144, !2971, !DIExpression(), !19916)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19955
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 144, i64 noundef range(i64 8, 17) 8) #26, !dbg !19956 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !19957
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !19958, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #22, !dbg !19959
  unreachable, !dbg !19959

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !19960
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast12FunctionCallE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19965 {
bb.a:
    #dbg_declare(ptr poison, !19996, !DIExpression(), !20001)
    #dbg_value(i64 8, !19997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20002)
    #dbg_value(i64 48, !19997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20002)
    #dbg_declare(ptr poison, !20003, !DIExpression(), !19977)
    #dbg_value(i64 8, !20018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19978)
    #dbg_value(i64 48, !20018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19978)
    #dbg_value(ptr poison, !3054, !DIExpression(), !19980)
    #dbg_value(ptr poison, !3058, !DIExpression(), !19982)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19980)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19982)
    #dbg_value(i64 48, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19980)
    #dbg_value(i64 48, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19982)
    #dbg_value(i8 0, !3060, !DIExpression(), !19982)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19984)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19986)
    #dbg_value(i64 48, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19984)
    #dbg_value(i64 48, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19986)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19984)
    #dbg_value(i64 48, !2971, !DIExpression(), !19987)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20027
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 48, i64 noundef range(i64 8, 17) 8) #26, !dbg !20028 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20029
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20030, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22, !dbg !20031
  unreachable, !dbg !20031

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20032
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast13ComponentCallE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20037 {
bb.a:
    #dbg_declare(ptr poison, !20068, !DIExpression(), !20073)
    #dbg_value(i64 8, !20069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20074)
    #dbg_value(i64 80, !20069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20074)
    #dbg_declare(ptr poison, !20075, !DIExpression(), !20049)
    #dbg_value(i64 8, !20090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20050)
    #dbg_value(i64 80, !20090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20050)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20052)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20054)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20052)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20054)
    #dbg_value(i64 80, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20052)
    #dbg_value(i64 80, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20054)
    #dbg_value(i8 0, !3060, !DIExpression(), !20054)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20056)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20058)
    #dbg_value(i64 80, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20056)
    #dbg_value(i64 80, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20058)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20056)
    #dbg_value(i64 80, !2971, !DIExpression(), !20059)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20099
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 80, i64 noundef range(i64 8, 17) 8) #26, !dbg !20100 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20101
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20102, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #22, !dbg !20103
  unreachable, !dbg !20103

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20104
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast14UnaryOperationE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20109 {
bb.a:
    #dbg_declare(ptr poison, !20140, !DIExpression(), !20145)
    #dbg_value(i64 8, !20141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20146)
    #dbg_value(i64 72, !20141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20146)
    #dbg_declare(ptr poison, !20147, !DIExpression(), !20121)
    #dbg_value(i64 8, !20162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20122)
    #dbg_value(i64 72, !20162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20122)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20124)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20126)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20124)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20126)
    #dbg_value(i64 72, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20124)
    #dbg_value(i64 72, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20126)
    #dbg_value(i8 0, !3060, !DIExpression(), !20126)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20128)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20130)
    #dbg_value(i64 72, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20128)
    #dbg_value(i64 72, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20130)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20128)
    #dbg_value(i64 72, !2971, !DIExpression(), !20131)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20171
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 72, i64 noundef range(i64 8, 17) 8) #26, !dbg !20172 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20173
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20174, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22, !dbg !20175
  unreachable, !dbg !20175

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20176
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast15BinaryOperationE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20181 {
bb.a:
    #dbg_declare(ptr poison, !20212, !DIExpression(), !20217)
    #dbg_value(i64 8, !20213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20218)
    #dbg_value(i64 136, !20213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20218)
    #dbg_declare(ptr poison, !20219, !DIExpression(), !20193)
    #dbg_value(i64 8, !20234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20194)
    #dbg_value(i64 136, !20234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20194)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20196)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20198)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20196)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20198)
    #dbg_value(i64 136, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20196)
    #dbg_value(i64 136, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20198)
    #dbg_value(i8 0, !3060, !DIExpression(), !20198)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20200)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20202)
    #dbg_value(i64 136, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20200)
    #dbg_value(i64 136, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20202)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20200)
    #dbg_value(i64 136, !2971, !DIExpression(), !20203)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20243
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 136, i64 noundef range(i64 8, 17) 8) #26, !dbg !20244 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20245
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20246, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #22, !dbg !20247
  unreachable, !dbg !20247

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20248
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ListComprehensionE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20253 {
bb.a:
    #dbg_declare(ptr poison, !20284, !DIExpression(), !20289)
    #dbg_value(i64 8, !20285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20290)
    #dbg_value(i64 240, !20285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20290)
    #dbg_declare(ptr poison, !20291, !DIExpression(), !20265)
    #dbg_value(i64 8, !20306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20266)
    #dbg_value(i64 240, !20306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20266)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20268)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20270)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20268)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(i64 240, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20268)
    #dbg_value(i64 240, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(i8 0, !3060, !DIExpression(), !20270)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20272)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20274)
    #dbg_value(i64 240, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20272)
    #dbg_value(i64 240, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20274)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20272)
    #dbg_value(i64 240, !2971, !DIExpression(), !20275)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20315
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(240) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 240, i64 noundef range(i64 8, 17) 8) #26, !dbg !20316 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20317
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20318, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 240) #22, !dbg !20319
  unreachable, !dbg !20319

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20320
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast3MapE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20325 {
bb.a:
    #dbg_declare(ptr poison, !20356, !DIExpression(), !20361)
    #dbg_value(i64 8, !20357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20362)
    #dbg_value(i64 24, !20357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20362)
    #dbg_declare(ptr poison, !20363, !DIExpression(), !20337)
    #dbg_value(i64 8, !20378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20338)
    #dbg_value(i64 24, !20378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20338)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20340)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20342)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20340)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20342)
    #dbg_value(i64 24, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20340)
    #dbg_value(i64 24, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20342)
    #dbg_value(i8 0, !3060, !DIExpression(), !20342)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20344)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20346)
    #dbg_value(i64 24, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20344)
    #dbg_value(i64 24, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20346)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20344)
    #dbg_value(i64 24, !2971, !DIExpression(), !20347)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20387
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 24, i64 noundef range(i64 8, 17) 8) #26, !dbg !20388 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20389
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20390, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !dbg !20391
  unreachable, !dbg !20391

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20392
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast3VarE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20397 {
bb.a:
    #dbg_declare(ptr poison, !20428, !DIExpression(), !20433)
    #dbg_value(i64 8, !20429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(i64 24, !20429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_declare(ptr poison, !20435, !DIExpression(), !20409)
    #dbg_value(i64 8, !20450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20410)
    #dbg_value(i64 24, !20450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20410)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20412)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20414)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20412)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20414)
    #dbg_value(i64 24, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20412)
    #dbg_value(i64 24, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20414)
    #dbg_value(i8 0, !3060, !DIExpression(), !20414)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20416)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20418)
    #dbg_value(i64 24, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20416)
    #dbg_value(i64 24, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20418)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20416)
    #dbg_value(i64 24, !2971, !DIExpression(), !20419)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20459
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 24, i64 noundef range(i64 8, 17) 8) #26, !dbg !20460 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20461
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20462, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !dbg !20463
  unreachable, !dbg !20463

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20464
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4TestE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20469 {
bb.a:
    #dbg_declare(ptr poison, !20500, !DIExpression(), !20505)
    #dbg_value(i64 8, !20501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20506)
    #dbg_value(i64 112, !20501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20506)
    #dbg_declare(ptr poison, !20507, !DIExpression(), !20481)
    #dbg_value(i64 8, !20522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20482)
    #dbg_value(i64 112, !20522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20482)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20484)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20486)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20484)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20486)
    #dbg_value(i64 112, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20484)
    #dbg_value(i64 112, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20486)
    #dbg_value(i8 0, !3060, !DIExpression(), !20486)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20488)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20490)
    #dbg_value(i64 112, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20488)
    #dbg_value(i64 112, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20490)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20488)
    #dbg_value(i64 112, !2971, !DIExpression(), !20491)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20531
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 112, i64 noundef range(i64 8, 17) 8) #26, !dbg !20532 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20533
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20534, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22, !dbg !20535
  unreachable, !dbg !20535

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20536
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast5ArrayE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20541 {
bb.a:
    #dbg_declare(ptr poison, !20572, !DIExpression(), !20577)
    #dbg_value(i64 8, !20573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20578)
    #dbg_value(i64 24, !20573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20578)
    #dbg_declare(ptr poison, !20579, !DIExpression(), !20553)
    #dbg_value(i64 8, !20594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20554)
    #dbg_value(i64 24, !20594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20554)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20556)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20558)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20556)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20558)
    #dbg_value(i64 24, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20556)
    #dbg_value(i64 24, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20558)
    #dbg_value(i8 0, !3060, !DIExpression(), !20558)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20560)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20562)
    #dbg_value(i64 24, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20560)
    #dbg_value(i64 24, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20562)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20560)
    #dbg_value(i64 24, !2971, !DIExpression(), !20563)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20603
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 24, i64 noundef range(i64 8, 17) 8) #26, !dbg !20604 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20605
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20606, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !dbg !20607
  unreachable, !dbg !20607

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20608
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast5SliceE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20613 {
bb.a:
    #dbg_declare(ptr poison, !20644, !DIExpression(), !20649)
    #dbg_value(i64 8, !20645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20650)
    #dbg_value(i64 264, !20645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20650)
    #dbg_declare(ptr poison, !20651, !DIExpression(), !20625)
    #dbg_value(i64 8, !20666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20626)
    #dbg_value(i64 264, !20666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20626)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20628)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20630)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20628)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20630)
    #dbg_value(i64 264, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20628)
    #dbg_value(i64 264, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20630)
    #dbg_value(i8 0, !3060, !DIExpression(), !20630)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20632)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20634)
    #dbg_value(i64 264, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20632)
    #dbg_value(i64 264, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20634)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20632)
    #dbg_value(i64 264, !2971, !DIExpression(), !20635)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20675
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(264) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 264, i64 noundef range(i64 8, 17) 8) #26, !dbg !20676 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20677
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20678, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 264) #22, !dbg !20679
  unreachable, !dbg !20679

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20680
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast6FilterE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20685 {
bb.a:
    #dbg_declare(ptr poison, !20716, !DIExpression(), !20721)
    #dbg_value(i64 8, !20717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20722)
    #dbg_value(i64 112, !20717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20722)
    #dbg_declare(ptr poison, !20723, !DIExpression(), !20697)
    #dbg_value(i64 8, !20738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20698)
    #dbg_value(i64 112, !20738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20698)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20700)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20702)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20700)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20702)
    #dbg_value(i64 112, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20700)
    #dbg_value(i64 112, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20702)
    #dbg_value(i8 0, !3060, !DIExpression(), !20702)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20704)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20706)
    #dbg_value(i64 112, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20704)
    #dbg_value(i64 112, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20706)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20704)
    #dbg_value(i64 112, !2971, !DIExpression(), !20707)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20747
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 112, i64 noundef range(i64 8, 17) 8) #26, !dbg !20748 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20749
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20750, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22, !dbg !20751
  unreachable, !dbg !20751

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20752
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast7GetAttrE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20757 {
bb.a:
    #dbg_declare(ptr poison, !20788, !DIExpression(), !20793)
    #dbg_value(i64 8, !20789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20794)
    #dbg_value(i64 96, !20789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20794)
    #dbg_declare(ptr poison, !20795, !DIExpression(), !20769)
    #dbg_value(i64 8, !20810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20770)
    #dbg_value(i64 96, !20810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20770)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20772)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20774)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20772)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20774)
    #dbg_value(i64 96, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20772)
    #dbg_value(i64 96, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20774)
    #dbg_value(i8 0, !3060, !DIExpression(), !20774)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20776)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(i64 96, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20776)
    #dbg_value(i64 96, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20778)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20776)
    #dbg_value(i64 96, !2971, !DIExpression(), !20779)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20819
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 96, i64 noundef range(i64 8, 17) 8) #26, !dbg !20820 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20821
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20822, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #22, !dbg !20823
  unreachable, !dbg !20823

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20824
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast7GetItemE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20829 {
bb.a:
    #dbg_declare(ptr poison, !20860, !DIExpression(), !20865)
    #dbg_value(i64 8, !20861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20866)
    #dbg_value(i64 136, !20861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20866)
    #dbg_declare(ptr poison, !20867, !DIExpression(), !20841)
    #dbg_value(i64 8, !20882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20842)
    #dbg_value(i64 136, !20882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20842)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20844)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20846)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20844)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20846)
    #dbg_value(i64 136, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20844)
    #dbg_value(i64 136, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20846)
    #dbg_value(i8 0, !3060, !DIExpression(), !20846)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20848)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20850)
    #dbg_value(i64 136, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20848)
    #dbg_value(i64 136, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20850)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20848)
    #dbg_value(i64 136, !2971, !DIExpression(), !20851)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20891
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 136, i64 noundef range(i64 8, 17) 8) #26, !dbg !20892 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20893
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20894, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #22, !dbg !20895
  unreachable, !dbg !20895

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20896
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast7TernaryE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20901 {
bb.a:
    #dbg_declare(ptr poison, !20932, !DIExpression(), !20937)
    #dbg_value(i64 8, !20933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20938)
    #dbg_value(i64 192, !20933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20938)
    #dbg_declare(ptr poison, !20939, !DIExpression(), !20913)
    #dbg_value(i64 8, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20914)
    #dbg_value(i64 192, !20954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20914)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20916)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20918)
    #dbg_value(i64 8, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20916)
    #dbg_value(i64 8, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20918)
    #dbg_value(i64 192, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20916)
    #dbg_value(i64 192, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20918)
    #dbg_value(i8 0, !3060, !DIExpression(), !20918)
    #dbg_value(i64 8, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20920)
    #dbg_value(i64 8, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20922)
    #dbg_value(i64 192, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20920)
    #dbg_value(i64 192, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20922)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20920)
    #dbg_value(i64 192, !2971, !DIExpression(), !20923)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !20963
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 192, i64 noundef range(i64 8, 17) 8) #26, !dbg !20964 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !20965
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !20966, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #22, !dbg !20967
  unreachable, !dbg !20967

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !20968
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxnE13new_uninit_inCs5yXxDE1DkoT_4tera() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20973 {
bb.a:
    #dbg_declare(ptr poison, !21005, !DIExpression(), !21009)
    #dbg_value(i64 16, !21006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21010)
    #dbg_value(i64 16, !21006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21010)
    #dbg_declare(ptr poison, !21011, !DIExpression(), !20985)
    #dbg_value(i64 16, !21026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(i64 16, !21026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20986)
    #dbg_value(ptr poison, !3054, !DIExpression(), !20988)
    #dbg_value(ptr poison, !3058, !DIExpression(), !20990)
    #dbg_value(i64 16, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(i64 16, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20990)
    #dbg_value(i64 16, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 16, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20990)
    #dbg_value(i8 0, !3060, !DIExpression(), !20990)
    #dbg_value(i64 16, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20992)
    #dbg_value(i64 16, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20994)
    #dbg_value(i64 16, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20992)
    #dbg_value(i64 16, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20994)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20992)
    #dbg_value(i64 16, !2971, !DIExpression(), !20995)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !21035
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 16, i64 noundef range(i64 8, 17) 16) #26, !dbg !21036 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !21037
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !21038, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 16) #22, !dbg !21039
  unreachable, !dbg !21039

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !21040
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxoE13new_uninit_inCs5yXxDE1DkoT_4tera() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21045 {
bb.a:
    #dbg_declare(ptr poison, !21077, !DIExpression(), !21081)
    #dbg_value(i64 16, !21078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21082)
    #dbg_value(i64 16, !21078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21082)
    #dbg_declare(ptr poison, !21083, !DIExpression(), !21057)
    #dbg_value(i64 16, !21098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21058)
    #dbg_value(i64 16, !21098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21058)
    #dbg_value(ptr poison, !3054, !DIExpression(), !21060)
    #dbg_value(ptr poison, !3058, !DIExpression(), !21062)
    #dbg_value(i64 16, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21060)
    #dbg_value(i64 16, !3059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21062)
    #dbg_value(i64 16, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21060)
    #dbg_value(i64 16, !3059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21062)
    #dbg_value(i8 0, !3060, !DIExpression(), !21062)
    #dbg_value(i64 16, !2966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21064)
    #dbg_value(i64 16, !2986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21066)
    #dbg_value(i64 16, !2966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21064)
    #dbg_value(i64 16, !2986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21066)
    #dbg_value(i1 false, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21064)
    #dbg_value(i64 16, !2971, !DIExpression(), !21067)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !21107
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1081) 16, i64 noundef range(i64 8, 17) 16) #26, !dbg !21108 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !21109
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !21110, !prof !1461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 16) #22, !dbg !21111
  unreachable, !dbg !21111

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !21112
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMsr_NtCsf3Ta7LF998c_4core3numx27from_ascii_bytes_radix_impl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 !dbg !21140 {
bb.a:
    #dbg_value(ptr %1, !21201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21241)
    #dbg_value(ptr %1, !21205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21242)
    #dbg_value(i64 %2, !21201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21241)
    #dbg_value(i64 %2, !21205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21242)
    #dbg_value(i32 10, !21202, !DIExpression(), !21241)
    #dbg_value(i8 1, !21203, !DIExpression(), !21243)
    #dbg_value(i8 1, !21244, !DIExpression(), !21251)
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ], !dbg !21360

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !21361
  store i8 0, ptr %i.a, align 1, !dbg !21361
  br label %bb.c, !dbg !21362

bb.c:                                             ; preds = %.loopexit145, %bb.v, %bb.w, %bb.p, %bb.y, %bb.n, %bb.m, %.loopexit150, %bb.e, %.loopexit, %bb.b
  %.sink = phi i8 [ 1, %.loopexit145 ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.p ], [ 1, %bb.y ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %.loopexit150 ], [ 1, %bb.e ], [ 0, %.loopexit ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !21241
  ret void, !dbg !21363

bb.d:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !dbg !21364, !noundef !975 ; 2 uses
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ], !dbg !21364

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !21365
  store i8 1, ptr %i.c, align 1, !dbg !21365
  br label %bb.c, !dbg !21366

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %1, align 1, !dbg !21364
  br label %bb.f, !dbg !21364

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.d ], !dbg !21364
  switch i8 %i.d, label %bb.q [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ], !dbg !21364

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !21367
  %i.f = add nsw i64 %2, -1, !dbg !21367
    #dbg_value(i8 1, !21204, !DIExpression(), !21242)
    #dbg_value(ptr %i.e, !21201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21241)
    #dbg_value(ptr %i.e, !21205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21242)
    #dbg_value(i64 %i.f, !21201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21241)
    #dbg_value(i64 %i.f, !21205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21242)
  br label %bb.q, !dbg !21368

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !21369 ; 2 uses
  %i.h = add nsw i64 %2, -1, !dbg !21369          ; 3 uses
    #dbg_value(i8 0, !21204, !DIExpression(), !21242)
    #dbg_value(ptr %i.g, !21201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21241)
    #dbg_value(ptr %i.g, !21205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21242)
    #dbg_value(i64 %i.h, !21201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21241)
    #dbg_value(i64 %i.h, !21205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21242)
    #dbg_value(i64 0, !21209, !DIExpression(), !21254)
    #dbg_value(i64 0, !21256, !DIExpression(), !21267)
    #dbg_value(i64 0, !21268, !DIExpression(), !21277)
    #dbg_value(i64 0, !21278, !DIExpression(), !21284)
    #dbg_value(i64 0, !21285, !DIExpression(), !21289)
    #dbg_value(i64 0, !21256, !DIExpression(), !21292)
    #dbg_value(i64 0, !21268, !DIExpression(), !21295)
    #dbg_value(i64 0, !21296, !DIExpression(), !21303)
    #dbg_value(i64 0, !21304, !DIExpression(), !21308)
    #dbg_value(i32 10, !21247, !DIExpression(), !21251)
    #dbg_value(ptr %i.g, !21248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21251)
    #dbg_value(i64 %i.h, !21248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21251)
  %i.i = icmp samesign ult i64 %2, 17, !dbg !21370
    #dbg_value(ptr %i.g, !21205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21242)
    #dbg_value(ptr %i.g, !21205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21242)
    #dbg_value(ptr %i.g, !21201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21241)
    #dbg_value(ptr %i.g, !21201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21241)
    #dbg_value(i64 %i.h, !21205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21242)
    #dbg_value(i64 %i.h, !21205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21242)
    #dbg_value(i64 %i.h, !21201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21241)
    #dbg_value(i64 %i.h, !21201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21241)
    #dbg_value(i64 0, !21304, !DIExpression(), !21308)
    #dbg_value(i64 0, !21304, !DIExpression(), !21308)
    #dbg_value(i64 0, !21296, !DIExpression(), !21303)
    #dbg_value(i64 0, !21296, !DIExpression(), !21303)
    #dbg_value(i64 0, !21285, !DIExpression(), !21289)
    #dbg_value(i64 0, !21285, !DIExpression(), !21289)
    #dbg_value(i64 0, !21278, !DIExpression(), !21284)
    #dbg_value(i64 0, !21278, !DIExpression(), !21284)
    #dbg_value(i64 0, !21268, !DIExpression(), !21277)
    #dbg_value(i64 0, !21268, !DIExpression(), !21277)
    #dbg_value(i64 0, !21256, !DIExpression(), !21267)
    #dbg_value(i64 0, !21256, !DIExpression(), !21267)
    #dbg_value(i64 0, !21209, !DIExpression(), !21254)
    #dbg_value(i64 0, !21209, !DIExpression(), !21254)
  br i1 %i.i, label %.preheader146, label %.lr.ph, !dbg !21250

.preheader146:                                    ; preds = %bb.h
  %.not135169 = icmp eq i64 %i.h, 0, !dbg !21371
  br i1 %.not135169, label %.loopexit, label %.lr.ph173, !dbg !21371

.loopexit:                                        ; preds = %bb.l, %bb.o, %bb.u, %bb.x, %.preheader146, %.preheader
  %.sroa.084.1 = phi i64 [ %i.ak, %bb.o ], [ %i.bn, %bb.x ], [ %i.bc, %bb.u ], [ 0, %.preheader ], [ 0, %.preheader146 ], [ %i.z, %bb.l ], !dbg !21372
    #dbg_value(i64 %.sroa.084.1, !21304, !DIExpression(), !21308)
    #dbg_value(i64 %.sroa.084.1, !21296, !DIExpression(), !21303)
    #dbg_value(i64 %.sroa.084.1, !21285, !DIExpression(), !21289)
    #dbg_value(i64 %.sroa.084.1, !21278, !DIExpression(), !21284)
    #dbg_value(i64 %.sroa.084.1, !21268, !DIExpression(), !21277)
    #dbg_value(i64 %.sroa.084.1, !21256, !DIExpression(), !21267)
    #dbg_value(i64 %.sroa.084.1, !21209, !DIExpression(), !21254)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21373
  store i64 %.sroa.084.1, ptr %i.j, align 8, !dbg !21373
  br label %bb.c, !dbg !21363

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %.sroa.0.1168 = phi ptr [ %i.k, %bb.l ], [ %i.g, %bb.h ] ; 2 uses
  %.sroa.26.1167 = phi i64 [ %i.l, %bb.l ], [ %i.h, %bb.h ]
  %.sroa.084.0166 = phi i64 [ %i.z, %bb.l ], [ 0, %bb.h ]
    #dbg_value(i64 %.sroa.084.0166, !21304, !DIExpression(), !21308)
    #dbg_value(ptr %.sroa.0.1168, !21225, !DIExpression(), !21309)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.1168, i64 1, !dbg !21374
  %i.l = add nsw i64 %.sroa.26.1167, -1, !dbg !21374 ; 2 uses
    #dbg_value(ptr %i.k, !21226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21309)
    #dbg_value(i64 %i.l, !21226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21309)
    #dbg_value(i64 10, !21260, !DIExpression(), !21292)
    #dbg_value(i64 10, !21274, !DIExpression(), !21295)
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0166, i64 10), !dbg !21375 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0, !dbg !21375
  %i.o = extractvalue { i64, i1 } %i.m, 1, !dbg !21375
    #dbg_value(i64 %i.n, !21263, !DIExpression(), !21310)
    #dbg_value(i1 %i.o, !21264, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21310)
    #dbg_value(i1 %i.o, !21312, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21319)
  %i.p = load i8, ptr %.sroa.0.1168, align 1, !dbg !21376, !noundef !975 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.i, !dbg !21377, !prof !1461

bb.i:                                             ; preds = %.lr.ph
    #dbg_value(i64 %i.n, !21227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21320)
    #dbg_value(i64 1, !21227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21320)
  %i.q = zext i8 %i.p to i32, !dbg !21378
    #dbg_value(i32 %i.q, !21321, !DIExpression(), !21157)
    #dbg_value(i32 10, !21324, !DIExpression(), !21157)
    #dbg_value(i32 65, !21327, !DIExpression(), !21160)
    #dbg_value(i32 48, !21327, !DIExpression(), !21162)
    #dbg_value(i32 %i.q, !21331, !DIExpression(), !21162)
  %i.r = add nsw i32 %i.q, -48, !dbg !21379       ; 2 uses
    #dbg_value(i32 %i.r, !21325, !DIExpression(), !21163)
  %i.s = icmp ult i32 %i.r, 10, !dbg !21380
  br i1 %i.s, label %bb.k, label %.loopexit150, !dbg !21381

bb.j:                                             ; preds = %.lr.ph
    #dbg_value(i64 poison, !21227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21320)
    #dbg_value(i64 poison, !21227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21320)
    #dbg_value(i8 %i.p, !21321, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21165)
    #dbg_value(i32 10, !21324, !DIExpression(), !21165)
    #dbg_value(i32 65, !21327, !DIExpression(), !21167)
    #dbg_value(i32 48, !21327, !DIExpression(), !21169)
    #dbg_value(i8 %i.p, !21331, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21169)
    #dbg_value(i8 %i.p, !21325, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !21170)
  %i.t = add i8 %i.p, -48, !dbg !21382
  %i.u = icmp ult i8 %i.t, 10, !dbg !21382
  br i1 %i.u, label %bb.n, label %.loopexit150, !dbg !21381
end_hunk_0
