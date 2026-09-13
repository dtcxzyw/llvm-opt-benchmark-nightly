Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.03?download=true
inline.NumInlined: 5426
inline.NumDeleted: 3862
loop-unroll.NumRuntimeUnrolled: 177
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCshigRrDowciq_6float86F8E4M3ENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapB1n_mNCNvXss_B1Z_NtB1Z_10CpuStorageNtNtB21_7backend14BackendStorage8to_dtypesO_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4g_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5t_3VecmE14extend_trustedBN_E0E0EB21_:bb.a
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_muNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_mNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypesO_0E0NCINvNvB1l_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecmE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2851
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCshigRrDowciq_6float86F8E4M3ENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapB1n_sNCNvXss_B1Z_NtB1Z_10CpuStorageNtNtB21_7backend14BackendStorage8to_dtypes13_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4h_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5u_3VecsE14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_suNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_sNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypes13_0E0NCINvNvB1l_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5H_3VecsE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub nuw i64 %i.f, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.i, align 1, !noalias !2862, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2863
  store i8 %.val15.i, ptr %i.a, align 1, !noalias !2863
  %i.j = invoke noundef float @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M36to_f32(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !2862

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef i16 @llvm.fptosi.sat.i16.f32(float %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2863
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %i.k, ptr %i.l, align 2, !noalias !2864
  %i.m = add i64 %.val10.i, 1                     ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_suNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_sNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypes13_0E0NCINvNvB1l_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5H_3VecsE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2862
  resume { ptr, i32 } %i.p

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_suNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_sNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypes13_0E0NCINvNvB1l_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5H_3VecsE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2862
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCshigRrDowciq_6float86F8E4M3ENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapB1n_xNCNvXss_B1Z_NtB1Z_10CpuStorageNtNtB21_7backend14BackendStorage8to_dtypesP_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4g_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5t_3VecxE14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_xuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_xNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypesP_0E0NCINvNvB1l_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecxE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub nuw i64 %i.f, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.i, align 1, !noalias !2873, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2874
  store i8 %.val15.i, ptr %i.a, align 1, !noalias !2874
  %i.j = invoke noundef float @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M36to_f32(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !2873

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef i64 @llvm.fptosi.sat.i64.f32(float %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2874
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i64 %i.k, ptr %i.l, align 8, !noalias !2875
  %i.m = add i64 %.val10.i, 1                     ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_xuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_xNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypesP_0E0NCINvNvB1l_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecxE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2873
  resume { ptr, i32 } %i.p

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCshigRrDowciq_6float86F8E4M3ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_xuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_xNCNvXss_B2S_NtB2S_10CpuStorageNtNtB2U_7backend14BackendStorage8to_dtypesP_0E0NCINvNvB1l_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecxE14extend_trustedINtB2b_3MapBF_B2L_EE0E0E0EB2U_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2873
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapB1n_B1n_NCINvXs4_B24_NtB24_6AffineNtB22_4Map11fB1n_E0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB1n_E14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCINvXs4_B2Z_NtB2Z_6AffineNtB2X_4Map11fBQ_E0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5m_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = getelementptr i8, ptr %i.e, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %i.l = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.bk, %bb.h ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bl, %bb.h ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.m, align 2, !noalias !2884, !noundef !4 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2885, !nonnull !4, !align !20, !noundef !4
  %.val1.i.i.i = load ptr, ptr %i.k, align 8, !noalias !2885 ; 2 uses
  %i.n = load i16, ptr %.val.i.i.i, align 2, !noalias !2885, !noundef !4 ; 3 uses
  %i.o = and i16 %.val15.i, 32767
  %i.p = icmp samesign ugt i16 %i.o, 32640
  %i.q = or i16 %.val15.i, 64
  %.sroa.0.0.in.in.i.i.i.i.i = select i1 %i.p, i16 %i.q, i16 %.val15.i
  %.sroa.0.0.in.i.i.i.i.i = zext i16 %.sroa.0.0.in.in.i.i.i.i.i to i32
  %.sroa.0.0.i.i.i.i.i = shl nuw i32 %.sroa.0.0.in.i.i.i.i.i, 16
  %i.r = and i16 %i.n, 32767
  %i.s = icmp samesign ugt i16 %i.r, 32640
  %i.t = or i16 %i.n, 64
  %.sroa.02.0.in.in.i.i.i.i.i = select i1 %i.s, i16 %i.t, i16 %i.n
  %.sroa.02.0.in.i.i.i.i.i = zext i16 %.sroa.02.0.in.in.i.i.i.i.i to i32
  %.sroa.02.0.i.i.i.i.i = shl nuw i32 %.sroa.02.0.in.i.i.i.i.i, 16
  %i.u = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  %i.v = bitcast i32 %.sroa.02.0.i.i.i.i.i to float
  %i.w = fmul float %i.u, %i.v                    ; 2 uses
  %i.x = bitcast float %i.w to i32                ; 4 uses
  %i.y = tail call float @llvm.fabs.f32(float %i.w)
  %i.z = bitcast float %i.y to i32
  %i.aa = icmp samesign ugt i32 %i.z, 2139095040
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = and i32 %i.x, 32768
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = and i32 %i.x, 98303
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond.not.i.i.i.i.i = and i1 %i.ac, %i.ae
  %i.af = lshr i32 %i.x, 16
  %i.ag = trunc nuw i32 %i.af to i16
  %i.ah = zext i1 %or.cond.not.i.i.i.i.i to i16
  %spec.select.i.i.i.i.i = add i16 %i.ah, %i.ag
  br label %_RNvXss_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtNtCsf3Ta7LF998c_4core3ops5arith3Mul3mul.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ai = lshr i32 %i.x, 16
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = or i16 %i.aj, 64
  br label %_RNvXss_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtNtCsf3Ta7LF998c_4core3ops5arith3Mul3mul.exit.i.i.i.i

_RNvXss_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtNtCsf3Ta7LF998c_4core3ops5arith3Mul3mul.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.03.0.i.i.i.i.i = phi i16 [ %i.ak, %bb.e ], [ %spec.select.i.i.i.i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.al = load i16, ptr %.val1.i.i.i, align 2, !noalias !2885, !noundef !4
  %i.am = insertelement <2 x i16> poison, i16 %.sroa.03.0.i.i.i.i.i, i64 0
  %i.an = insertelement <2 x i16> %i.am, i16 %i.al, i64 1 ; 3 uses
  %i.ao = and <2 x i16> %i.an, splat (i16 32767)
  %i.ap = icmp samesign ugt <2 x i16> %i.ao, splat (i16 32640)
  %i.aq = or <2 x i16> %i.an, splat (i16 64)
  %i.ar = select <2 x i1> %i.ap, <2 x i16> %i.aq, <2 x i16> %i.an
  %i.as = zext <2 x i16> %i.ar to <2 x i32>
  %i.at = shl nuw <2 x i32> %i.as, splat (i32 16)
  %i.au = bitcast <2 x i32> %i.at to <2 x float>
  %2 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.au) ; 2 uses
  %i.av = bitcast float %2 to i32                 ; 4 uses
  %i.aw = tail call float @llvm.fabs.f32(float %2)
  %i.ax = bitcast float %i.aw to i32
  %i.ay = icmp samesign ugt i32 %i.ax, 2139095040
  br i1 %i.ay, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXss_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtNtCsf3Ta7LF998c_4core3ops5arith3Mul3mul.exit.i.i.i.i
  %i.az = and i32 %i.av, 32768
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = and i32 %i.av, 98303
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond.not.i7.i.i.i.i = and i1 %i.ba, %i.bc
  %i.bd = lshr i32 %i.av, 16
  %i.be = trunc nuw i32 %i.bd to i16
  %i.bf = zext i1 %or.cond.not.i7.i.i.i.i to i16
  %spec.select.i8.i.i.i.i = add i16 %i.bf, %i.be
  br label %bb.h

bb.g:                                             ; preds = %_RNvXss_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtNtCsf3Ta7LF998c_4core3ops5arith3Mul3mul.exit.i.i.i.i
  %i.bg = lshr i32 %i.av, 16
  %i.bh = trunc nuw i32 %i.bg to i16
  %i.bi = or i16 %i.bh, 64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.03.0.i9.i.i.i.i = phi i16 [ %i.bi, %bb.g ], [ %spec.select.i8.i.i.i.i, %bb.f ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.l
  store i16 %.sroa.03.0.i9.i.i.i.i, ptr %i.bj, align 2, !noalias !2886
  %i.bk = add i64 %i.l, 1                         ; 2 uses
  %i.bl = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.j
  br i1 %i.bm, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCINvXs4_B2Z_NtB2Z_6AffineNtB2X_4Map11fBQ_E0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5m_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCINvXs4_B2Z_NtB2Z_6AffineNtB2X_4Map11fBQ_E0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5m_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.bk, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2884
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapB1n_B1n_NCNvXss_B24_NtB24_10CpuStorageNtNtB26_7backend14BackendStorage3elu0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4g_8for_each4callB1n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5w_3VecB1n_E14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCNvXss_B2Z_NtB2Z_10CpuStorageNtNtB31_7backend14BackendStorage3elu0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5J_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bm, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bn, %bb.n ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.k, align 2, !noalias !2895, !noundef !4
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2896, !nonnull !4, !align !7, !noundef !4
  %i.l = load i64, ptr %.val.i.i.i, align 8, !noalias !2896, !noundef !4 ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32                ; 5 uses
  %i.o = and i32 %i.n, -2147483648                ; 2 uses
  %i.p = and i32 %i.n, 2146435072                 ; 6 uses
  %i.q = and i32 %i.n, 1048575                    ; 4 uses
  %i.r = icmp eq i32 %i.p, 2146435072
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.q, 0
  %i.t = and i64 %i.l, 4294967295
  %i.u = icmp eq i64 %i.t, 0
  %or.cond.i.i.i.i.i = and i1 %i.u, %i.s
  %..i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i32 0, i32 64
  %i.v = lshr exact i32 %i.o, 16
  %i.w = lshr i32 %i.q, 13
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = or i32 %i.x, %..i.i.i.i.i
  %i.z = trunc nuw i32 %i.y to i16
  %i.aa = or disjoint i16 %i.z, 32640
  br label %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ab = lshr exact i32 %i.o, 16                 ; 4 uses
  %i.ac = lshr exact i32 %i.p, 20                 ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.p, 1205862400
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp samesign ult i32 %i.p, 940572672
  br i1 %i.ae, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = trunc nuw i32 %i.ab to i16
  %i.ag = or disjoint i16 %i.af, 32640
  br label %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ah = lshr exact i32 %i.p, 13
  %i.ai = add nuw nsw i32 %i.ah, 16384
  %i.aj = lshr i32 %i.q, 13
  %i.ak = and i32 %i.n, 4096
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = and i32 %i.n, 12287
  %i.an = icmp ne i32 %i.am, 0
  %or.cond3.not.i.i.i.i.i = and i1 %i.al, %i.an
  %i.ao = or disjoint i32 %i.ai, %i.aj
  %i.ap = or i32 %i.ao, %i.ab
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = zext i1 %or.cond3.not.i.i.i.i.i to i16
  %spec.select8.i.i.i.i.i = add i16 %i.aq, %i.ar
  br label %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.as = icmp samesign ult i32 %i.p, 924844032
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = or disjoint i32 %i.q, 1048576           ; 3 uses
  %i.au = sub nsw i32 14, %i.ac
  %i.av = and i32 %i.au, 31
  %i.aw = lshr i32 %i.at, %i.av                   ; 2 uses
  %i.ax = sub nsw i32 13, %i.ac
  %i.ay = and i32 %i.ax, 31                       ; 2 uses
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %i.at
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bc = trunc nuw i32 %i.ab to i16
  br label %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = shl i32 3, %i.ay
  %i.be = add nuw i32 %i.bd, 2097151
  %i.bf = and i32 %i.be, %i.at
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i.i.i.i = add nuw nsw i32 %i.aw, %i.bh
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.05.0.i.i.i.i.i = phi i32 [ %i.aw, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.l ]
  %i.bi = or i32 %.sroa.05.0.i.i.i.i.i, %i.ab
  %i.bj = trunc i32 %i.bi to i16
  br label %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i

_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i: ; preds = %bb.m, %bb.k, %bb.h, %bb.g, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi i16 [ %i.aa, %bb.d ], [ %i.ag, %bb.g ], [ %i.bc, %bb.k ], [ %i.bj, %bb.m ], [ %spec.select8.i.i.i.i.i, %bb.h ]
  %i.bk = invoke noundef i16 @_RINvNtCsltEA4u8Pgfu_11candle_core11cpu_backend3eluNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB4_(i16 noundef %.val15.i, i16 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.n unwind label %bb.o, !noalias !2895

bb.n:                                             ; preds = %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %i.bk, ptr %i.bl, align 2, !noalias !2897
  %i.bm = add i64 %.val10.i, 1                    ; 2 uses
  %i.bn = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.j
  br i1 %i.bo, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCNvXss_B2Z_NtB2Z_10CpuStorageNtNtB31_7backend14BackendStorage3elu0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5J_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.c

bb.o:                                             ; preds = %_RNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B12_NCNvXss_B6_NtB6_10CpuStorageNtNtB8_7backend14BackendStorage3elu0E0B8_.exit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2895
  resume { ptr, i32 } %i.bp

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCNvXss_B2Z_NtB2Z_10CpuStorageNtNtB31_7backend14BackendStorage3elu0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5J_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit: ; preds = %bb.n, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bm, %bb.n ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2895
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapB1n_B1n_NCNvXss_B24_NtB24_10CpuStorageNtNtB26_7backend14BackendStorage4powf0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4h_8for_each4callB1n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5x_3VecB1n_E14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapBQ_BQ_NCNvXss_B2Z_NtB2Z_10CpuStorageNtNtB31_7backend14BackendStorage4powf0E0NCINvNvB1q_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5K_3VecBQ_E14extend_trustedINtB2g_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterfENCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00EE9from_iterB2V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_fEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterB13_ENCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round00EE9from_iterB36_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3get(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsltEA4u8Pgfu_11candle_core7display19get_summarized_data(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_5Value9to_string(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtCsltEA4u8Pgfu_11candle_core5errorINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5ErrorEINtB6_7ContextB1h_B1T_E12with_contextB1h_NCNCNvNtNtB8_9quantized9tokenizer21value_to_string_arrays_0s_0EB8_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RINvNtCsltEA4u8Pgfu_11candle_core11cpu_backend3eluNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB4_(i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RINvNtCsltEA4u8Pgfu_11candle_core11cpu_backend3elufEB4_(float noundef, float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RINvNtCsltEA4u8Pgfu_11candle_core11cpu_backend3eludEB4_(double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M38from_f64(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RINvNtCsltEA4u8Pgfu_11candle_core11cpu_backend3eluNtCshigRrDowciq_6float86F8E4M3EB4_(i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RINvNtCsltEA4u8Pgfu_11candle_core11cpu_backend3eluNtNtCsdsILkMb8ZHY_4half8binary163f16EB4_(i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #15

; Function Attrs: nonlazybind uwtable
declare noundef float @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M36to_f32(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M38from_f32(float noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptosi.sat.i64.f32(float) #15

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXsx_NtCsltEA4u8Pgfu_11candle_core5dtypeNtCshigRrDowciq_6float86F8E4M3NtB5_9WithDType6to_f64(i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptosi.sat.i64.f64(double) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEE8grow_oneBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #19

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize() unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float>, i32 immarg) #21

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M36to_f64(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCsltEA4u8Pgfu_11candle_core3cpu3erf7erf_f64(double noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvXsV_CshigRrDowciq_6float8NtB5_6F8E4M3NtNtNtCsf3Ta7LF998c_4core3ops5arith3Neg3neg(i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #15

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvXsO_CshigRrDowciq_6float8NtB5_6F8E4M3NtNtNtCsf3Ta7LF998c_4core3ops5arith3Div3div(i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core3cpu3erf7erf_f32(float noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M33max(i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable
declare noundef float @tanhf(float noundef) unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) i16 @llvm.scmp.i16.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.fptoui.sat.v8i8.v8f32(<8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fptoui.sat.v4i32.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) <8 x i16> @llvm.scmp.v8i16.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) <4 x i16> @llvm.scmp.v4i16.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) <2 x i64> @llvm.scmp.v2i64.v2i64(<2 x i64>, <2 x i64>) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind }
attributes #29 = { cold }
attributes #30 = { noinline noreturn }
attributes #31 = { noreturn }
attributes #32 = { noinline }
attributes #33 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 1, i64 536870913}
!7 = !{i64 8}
!8 = !{i64 0, i64 3}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!10 = !{i64 -1, i64 -9223372036854775764}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = !{i8 0, i8 2}
!15 = !{i64 0, i64 2}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i64 4}
!19 = !{!"branch_weights", i32 4, i32 28}
!20 = !{i64 2}
!21 = !{i64 0, i64 14}
!22 = !{i64 0, i64 -9223372036854775807}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = distinct !{!24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceECsltEA4u8Pgfu_11candle_core"}
!25 = distinct !{!25, !24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceECsltEA4u8Pgfu_11candle_core: argument 0"}
!26 = distinct !{!26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace5InnerECsltEA4u8Pgfu_11candle_core"}
!27 = distinct !{!27, !26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace5InnerECsltEA4u8Pgfu_11candle_core: argument 0"}
!28 = !{!27, !25}
!29 = distinct !{!29, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplECsltEA4u8Pgfu_11candle_core"}
!30 = distinct !{!30, !29, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplECsltEA4u8Pgfu_11candle_core: argument 0"}
!31 = distinct !{!31, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsltEA4u8Pgfu_11candle_core"}
!32 = distinct !{!32, !31, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsltEA4u8Pgfu_11candle_core: argument 0"}
!33 = distinct !{!33, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core"}
!34 = distinct !{!34, !33, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!35 = distinct !{!35, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!36 = distinct !{!36, !35, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!37 = !{!30}
!38 = !{!32}
!39 = !{i64 0, i64 25}
!40 = !{!32, !30}
!41 = !{!34}
!42 = !{!34, !32, !30}
!43 = !{!36}
!44 = distinct !{!44, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsltEA4u8Pgfu_11candle_core"}
!45 = distinct !{!45, !44, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsltEA4u8Pgfu_11candle_core: argument 0"}
!46 = distinct !{!46, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip6result8ZipErrorECsltEA4u8Pgfu_11candle_core"}
!47 = distinct !{!47, !46, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip6result8ZipErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!48 = distinct !{!48, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core"}
!49 = distinct !{!49, !48, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!50 = distinct !{!50, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!51 = distinct !{!51, !50, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core"}
!53 = distinct !{!53, !52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!54 = distinct !{!54, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!55 = distinct !{!55, !54, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!56 = distinct !{!56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsOwuIBbUsgI_11safetensors6tensor15SafeTensorErrorECsltEA4u8Pgfu_11candle_core"}
!57 = distinct !{!57, !56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsOwuIBbUsgI_11safetensors6tensor15SafeTensorErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!60 = distinct !{!60, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!61 = distinct !{!61, !60, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!62 = distinct !{!62, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsltEA4u8Pgfu_11candle_core"}
!63 = distinct !{!63, !62, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsltEA4u8Pgfu_11candle_core: argument 0"}
!64 = distinct !{!64, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB1e_"}
!65 = distinct !{!65, !64, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB1e_: argument 0"}
!66 = distinct !{null}
!67 = distinct !{!67, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB1e_"}
!68 = distinct !{!68, !67, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB1e_: argument 0"}
!69 = distinct !{!69, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB1e_"}
!70 = distinct !{!70, !69, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB1e_: argument 0"}
!71 = distinct !{!71, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceECsltEA4u8Pgfu_11candle_core"}
!72 = distinct !{!72, !71, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceECsltEA4u8Pgfu_11candle_core: argument 0"}
!73 = distinct !{!73, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace5InnerECsltEA4u8Pgfu_11candle_core"}
!74 = distinct !{!74, !73, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace5InnerECsltEA4u8Pgfu_11candle_core: argument 0"}
!75 = !{i64 0, i64 -9223372036854775764}
!76 = !{!45}
!77 = !{!47}
!78 = !{i64 -1, i64 -9223372036854775802}
!79 = !{!49}
!80 = !{!49, !47}
!81 = !{!51}
!82 = !{!53}
!83 = !{!55}
!84 = !{!57}
!85 = !{i64 0, i64 -9223372036854775794}
!86 = !{!59}
!87 = !{!59, !57}
!88 = !{!61}
!89 = !{!63}
!90 = !{!65}
!91 = !{!68}
!92 = !{!70}
!93 = !{!74, !72}
!94 = distinct !{!94, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!95 = distinct !{!95, !94, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!96 = !{!95}
end_hunk_1
