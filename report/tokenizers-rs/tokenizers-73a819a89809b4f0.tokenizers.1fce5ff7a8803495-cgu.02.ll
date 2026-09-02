Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.02?download=true
inline.NumInlined: 1144
inline.NumDeleted: 636
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1o_8adapters3map12map_try_foldBW_INtNtB1q_6result6ResultBW_INtNtBa_5boxed3BoxDNtNtB1q_5error5ErrorNtNtB1q_6marker4SendNtB4M_4SyncEL_EEB2m_INtNtNtB1q_3ops12control_flow11ControlFlowIB3I_B2m_zEB2m_ENCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB6s_7ReplaceNtNtB6w_9tokenizer7Decoder12decode_chain0NCINvXB37_INtB37_12GenericShuntINtB35_3MapBH_B6k_EIB3I_NtNtB1q_7convert10InfallibleB47_EEB1i_8try_foldB2m_NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0B64_E0E0B5o_EB6w_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !288
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNvXs_NtNtB1o_8adapters9enumerateINtB3a_9EnumeratepEB1i_8try_fold9enumerateBW_B2m_INtNtB1q_6result6ResultB2m_zENCINvNtB3c_3map12map_try_foldTjBW_EBW_B2m_B4o_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB5J_10BPEDecoderNtNtB5N_9tokenizer7Decoder12decode_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0E0B4o_EB5N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not128 = icmp eq ptr %.promoted, %i.l
  br i1 %.not128, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %3, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val6 = load ptr, ptr %i.m, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr i8, ptr %.val, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 20 uses
  %.sroa.498.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6100.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.10104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.12106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.13107.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i64, ptr %.val6, align 8, !noalias !341
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit
  %i.w = phi i64 [ %.pre, %.lr.ph ], [ %i.ka, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ]
  %.sroa.4.0129 = phi ptr [ %2, %.lr.ph ], [ %i.jy, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ] ; 3 uses
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !343
  store ptr %1, ptr %i.i, align 8, !noalias !343
  store ptr %.sroa.4.0129, ptr %i.n, align 8, !noalias !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !343
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !343, !nonnull !6, !align !8, !noundef !6
  %.val2.i.i = load ptr, ptr %i.o, align 8, !noalias !343, !nonnull !6, !align !8, !noundef !6
  %i.z = load i64, ptr %.val.i.i, align 8, !noalias !342, !noundef !6
  %i.aa = icmp eq i64 %i.w, %i.z                  ; 5 uses
  %not..i.i.i = xor i1 %i.aa, true
  %..i.i.i = zext i1 %not..i.i.i to i64           ; 6 uses
  %i.ab = load ptr, ptr %i.p, align 8, !noalias !342, !nonnull !6, !noundef !6 ; 7 uses
  %i.ac = load i64, ptr %i.q, align 8, !noalias !342, !noundef !6 ; 5 uses
  %i.ad = load ptr, ptr %.val2.i.i, align 8, !noalias !342, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !344, !noalias !345, !noundef !6 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 1
  %or.cond.i.i.i.i = or i1 %i.aa, %i.ag
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !344, !noalias !345, !nonnull !6, !noundef !6
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !346, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !347
  store i8 %i.aj, ptr %i.f, align 1, !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !347
  store i8 32, ptr %i.e, align 1, !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !347
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store ptr %i.ab, ptr %i.c, align 8, !noalias !347
  store ptr %i.ak, ptr %i.r, align 8, !noalias !347
  store ptr %i.f, ptr %i.s, align 8, !noalias !347
  store ptr %i.e, ptr %i.t, align 8, !noalias !347
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i unwind label %.loopexit, !noalias !348

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !347
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %.not15.i.i.i.i = icmp ugt i64 %i.af, %..i.i.i
  %spec.select.i.i.i.i = select i1 %.not15.i.i.i.i, i64 0, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !347
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i.i.i unwind label %.loopexit, !noalias !342

.noexc3.i.i.i:                                    ; preds = %bb.d
  %i.al = load i64, ptr %i.a, align 8, !range !14, !noalias !347, !noundef !6
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = load i64, ptr %i.u, align 8, !range !15, !noalias !347, !noundef !6 ; 3 uses
  br i1 %i.am, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc3.i.i.i
  %i.ao = load i64, ptr %i.v, align 8, !noalias !347
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ao) #26
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp, !noalias !342

.noexc4.i.i.i:                                    ; preds = %bb.e
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %.noexc3.i.i.i
  %i.ap = load ptr, ptr %i.v, align 8, !noalias !347, !nonnull !6, !noundef !6
  %i.aq = icmp ule i64 %spec.select.i.i.i.i, %i.an
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !347
  store i64 %i.an, ptr %i.d, align 8, !noalias !347
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !347
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !347
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc6stringRNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3str7pattern7Pattern13into_searcher(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.g unwind label %bb.f, !noalias !346

.loopexit134.i.i.i.i:                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit134.split.i.loopexit.split-lp.i.i.i, %.loopexit134.split.i.loopexit.i.i.i, %.loopexit134.split.us.i.i.i.i, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.us.i.i.i.i, %.loopexit134.split.us.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit134.split.i.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit134.split.i.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body.i.i.i unwind label %bb.be, !noalias !346

bb.f:                                             ; preds = %.loopexit.i.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

bb.g:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %.sroa.097.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !347
  %.sroa.498.0.copyload.i.i.i.i = load i64, ptr %.sroa.498.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 27 uses
  %.sroa.6100.0.copyload.i.i.i.i = load i64, ptr %.sroa.6100.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 5 uses
  %.sroa.7101.0.copyload.i.i.i.i = load i64, ptr %.sroa.7101.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 2 uses
  %.sroa.8102.0.copyload.i.i.i.i = load i64, ptr %.sroa.8102.0..sroa_idx.i.i.i.i, align 8, !noalias !347
  %.sroa.10104.0.copyload.i.i.i.i = load i64, ptr %.sroa.10104.0..sroa_idx.i.i.i.i, align 8, !noalias !347
  %.sroa.12106.0.copyload.i.i.i.i = load ptr, ptr %.sroa.12106.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 17 uses
  %.sroa.13107.0.copyload.i.i.i.i = load i64, ptr %.sroa.13107.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 42 uses
  %.sroa.14.0.copyload.i.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 5 uses
  %.sroa.15.0.copyload.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !347
  %i.as = trunc nuw i64 %.sroa.097.0.copyload.i.i.i.i to i1
  %i.at = add nsw i64 %.sroa.15.0.copyload.i.i.i.i, -1 ; 3 uses
  br i1 %i.as, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i.i.i.i) ]
  %i.au = sub i64 %.sroa.15.0.copyload.i.i.i.i, %.sroa.6100.0.copyload.i.i.i.i
  %umax49.i48.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.498.0.copyload.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %i.av = add i64 %.sroa.498.0.copyload.i.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.av, %.sroa.15.0.copyload.i.i.i.i
  %.first_iter.i.fr.i.i.i = freeze i1 %.first_iter.i.i.i.i
  %.not129.us.i.i.i.i = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.498.0.copyload.i.i.i.i
  %exitcond.not.i50.us.i.i.i.i438.not = icmp ult i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  %invariant.op635 = sub i64 1, %.sroa.498.0.copyload.i.i.i.i
  %.not129.us.i.us.i.i.i441 = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.y, %.split.us.i.i.i.i
  %.sroa.3072.0.us.i.i.i.i = phi i64 [ %.sroa.10104.0.copyload.i.i.i.i, %.split.us.i.i.i.i ], [ %.sroa.3072.1.us.i.i.i.i, %bb.y ] ; 2 uses
  %.sroa.18.0.us.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i, %.split.us.i.i.i.i ], [ %.sroa.11110.1.us.i.i.i.i, %bb.y ] ; 3 uses
  %.sroa.04.0.us.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i ], [ %.sroa.11110.1.us.i.i.i.i, %bb.y ] ; 7 uses
  %i.aw = icmp eq i64 %.sroa.3072.0.us.i.i.i.i, -1
  %i.ax = add i64 %.sroa.18.0.us.i.i.i.i, %i.at   ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %.sroa.13107.0.copyload.i.i.i.i ; 2 uses
  br i1 %i.aw, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  br i1 %i.ay, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i37.us.i.i.i.i:                            ; preds = %bb.i, %.sink.split.i.us.i.i.i.i
  %i.az = phi i64 [ %.sink.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.3072.0.us.i.i.i.i, %bb.i ] ; 3 uses
  %i.ba = phi i64 [ %i.bz, %.sink.split.i.us.i.i.i.i ], [ %i.ax, %bb.i ]
  %i.bb = phi i64 [ %.ph71.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.18.0.us.i.i.i.i, %bb.i ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !349, !noalias !351, !noundef !6
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %4 = lshr i64 %.sroa.7101.0.copyload.i.i.i.i, %i.bf
  %5 = trunc i64 %4 to i1
  br i1 %5, label %bb.j, label %6

6:                                                ; preds = %.lr.ph.i37.us.i.i.i.i
  %7 = add i64 %i.bb, %.sroa.15.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i37.us.i.i.i.i
  %.sroa.0.0.i.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 %.sroa.498.0.copyload.i.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %exitcond.not.i.us.i.i.i.i431.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i431.not, label %.lr.ph434, label %.preheader131.us.i.i.i.i.preheader

bb.k:                                             ; preds = %bb.l
  %i.bg = add i64 %.sroa.02.0.i.us.i.i.i.i432, 1  ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.bg, %umax49.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader131.us.i.i.i.i.preheader, label %.lr.ph434

.preheader131.us.i.i.i.i.preheader:               ; preds = %bb.k, %bb.j
  %i.bh = icmp ult i64 %i.az, %.sroa.498.0.copyload.i.i.i.i
  br i1 %i.bh, label %.lr.ph436, label %.loopexit.i.us.i.i.i.i

.lr.ph434:                                        ; preds = %bb.j, %bb.k
  %.sroa.02.0.i.us.i.i.i.i432 = phi i64 [ %i.bg, %bb.k ], [ %.sroa.0.0.i.i.us.i.i.i.i, %bb.j ] ; 4 uses
  %i.bi = add i64 %.sroa.02.0.i.us.i.i.i.i432, %i.bb ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bj, label %bb.l, label %.split187.us.i.i.i.i

bb.l:                                             ; preds = %.lr.ph434
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i.us.i.i.i.i432
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !350, !noalias !352, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !349, !noalias !351, !noundef !6
  %.not21.i.us.i.i.i.i = icmp eq i8 %i.bl, %i.bn
  br i1 %.not21.i.us.i.i.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.bb, %invariant.op
  %i.bo = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i.i432
  br label %.sink.split.i.us.i.i.i.i

.preheader131.us.i.i.i.i:                         ; preds = %bb.o
  %i.bp = icmp ult i64 %i.az, %i.bq
  br i1 %i.bp, label %.lr.ph436, label %.loopexit.i.us.i.i.i.i

.lr.ph436:                                        ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader131.us.i.i.i.i
  %.sroa.2.0.i.us.i.i.i.i435 = phi i64 [ %i.bq, %.preheader131.us.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader131.us.i.i.i.i.preheader ]
  %i.bq = add i64 %.sroa.2.0.i.us.i.i.i.i435, -1  ; 6 uses
  %i.br = icmp ult i64 %i.bq, %.sroa.15.0.copyload.i.i.i.i
  br i1 %i.br, label %bb.n, label %.split191.us.invoke.i.i.i.i

bb.n:                                             ; preds = %.lr.ph436
  %i.bs = add i64 %i.bq, %i.bb                    ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bt, label %bb.o, label %.split191.us.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !350, !noalias !352, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !349, !noalias !351, !noundef !6
  %.not.i38.us.i.i.i.i = icmp eq i8 %i.bv, %i.bx
  br i1 %.not.i38.us.i.i.i.i, label %.preheader131.us.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %i.bb, %.sroa.6100.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

.sink.split.i.us.i.i.i.i:                         ; preds = %bb.p, %bb.m, %6
  %.sink.i.us.i.i.i.i = phi i64 [ %i.au, %bb.p ], [ 0, %bb.m ], [ 0, %6 ]
  %.ph71.i.us.i.i.i.i = phi i64 [ %i.by, %bb.p ], [ %i.bo, %bb.m ], [ %7, %6 ] ; 2 uses
  %i.bz = add i64 %.ph71.i.us.i.i.i.i, %i.at      ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.ca, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

bb.q:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  br i1 %i.ay, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i45.us.i.i.i.i:                            ; preds = %bb.q, %bb.u
  %i.cb = phi i64 [ %i.cy, %bb.u ], [ %i.ax, %bb.q ]
  %i.cc = phi i64 [ %i.cx, %bb.u ], [ %.sroa.18.0.us.i.i.i.i, %bb.q ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !353, !noalias !355, !noundef !6
  %i.cf = and i8 %i.ce, 63
  %i.cg = zext nneg i8 %i.cf to i64
  %8 = lshr i64 %.sroa.7101.0.copyload.i.i.i.i, %i.cg
  %9 = trunc i64 %8 to i1
  br i1 %9, label %.preheader.i.i.i.i.preheader, label %10

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i45.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i438.not, label %.lr.ph440, label %.preheader.us.i.preheader.i.i.i

10:                                               ; preds = %.lr.ph.i45.us.i.i.i.i
  %11 = add i64 %i.cc, %.sroa.15.0.copyload.i.i.i.i
  br label %bb.u

.preheader.i.i.i.i:                               ; preds = %bb.s
  %i.ch = add i64 %.sroa.02.0.i49.us.i.i.i.i439, 1 ; 2 uses
  %exitcond.not.i50.us.i.i.i.i = icmp eq i64 %i.ch, %umax49.i48.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i, label %.preheader.us.i.preheader.i.i.i, label %.lr.ph440

.preheader.us.i.preheader.i.i.i:                  ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i.i, label %.preheader.us.i.us.i.i.i.preheader, label %.preheader.us.i.preheader.split.i.i.i

.preheader.us.i.us.i.i.i.preheader:               ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.us.i.i.i441, label %.loopexit.i.us.i.i.i.i, label %.lr.ph443

.preheader.us.i.us.i.i.i:                         ; preds = %bb.r
  %.not129.us.i.us.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not129.us.i.us.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.lr.ph443

.lr.ph443:                                        ; preds = %.preheader.us.i.us.i.i.i.preheader, %.preheader.us.i.us.i.i.i
  %.sroa.2.0.i53.us.i.us.i.i.i442 = phi i64 [ %i.ci, %.preheader.us.i.us.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.us.i.us.i.i.i.preheader ]
  %i.ci = add i64 %.sroa.2.0.i53.us.i.us.i.i.i442, -1 ; 4 uses
  %i.cj = add i64 %i.ci, %i.cc                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.ck, label %bb.r, label %.split191.us.invoke.i.i.i.i

bb.r:                                             ; preds = %.lr.ph443
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.ci
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !354, !noalias !356, !noundef !6
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cj
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !353, !noalias !355, !noundef !6
  %.not.i54.us.i.us.i.i.i = icmp eq i8 %i.cm, %i.co
  br i1 %.not.i54.us.i.us.i.i.i, label %.preheader.us.i.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.r
  %i.cp = add i64 %i.cc, %.sroa.6100.0.copyload.i.i.i.i
  br label %bb.u

.preheader.us.i.preheader.split.i.i.i:            ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.split191.us.invoke.i.i.i.i

.lr.ph440:                                        ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.sroa.02.0.i49.us.i.i.i.i439 = phi i64 [ %i.ch, %.preheader.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %i.cq = add i64 %.sroa.02.0.i49.us.i.i.i.i439, %i.cc ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cr, label %bb.s, label %.split198.us.i.i.i.i

bb.s:                                             ; preds = %.lr.ph440
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i49.us.i.i.i.i439
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !354, !noalias !356, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !353, !noalias !355, !noundef !6
  %.not21.i52.us.i.i.i.i = icmp eq i8 %i.ct, %i.cv
  br i1 %.not21.i52.us.i.i.i.i, label %.preheader.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass328.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.cc, %invariant.op635
  %i.cw = add i64 %.reass328.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i49.us.i.i.i.i439
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.us.i.i.i, %10
  %i.cx = phi i64 [ %i.cw, %bb.t ], [ %11, %10 ], [ %i.cp, %.split.us.i.i.i ] ; 2 uses
  %i.cy = add i64 %i.cx, %i.at                    ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cz, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.us.i.i.i.i:                           ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader.us.i.us.i.i.i.preheader, %.preheader131.us.i.i.i.i, %.preheader.us.i.us.i.i.i, %.preheader.us.i.preheader.split.i.i.i
  %.sroa.7109.1.us.i.i.i.i = phi i64 [ %i.cc, %.preheader.us.i.preheader.split.i.i.i ], [ %i.cc, %.preheader.us.i.us.i.i.i ], [ %i.bb, %.preheader131.us.i.i.i.i ], [ %i.cc, %.preheader.us.i.us.i.i.i.preheader ], [ %i.bb, %.preheader131.us.i.i.i.i.preheader ] ; 3 uses
  %.sroa.3072.1.us.i.i.i.i = phi i64 [ -1, %.preheader.us.i.preheader.split.i.i.i ], [ -1, %.preheader.us.i.us.i.i.i ], [ 0, %.preheader131.us.i.i.i.i ], [ -1, %.preheader.us.i.us.i.i.i.preheader ], [ 0, %.preheader131.us.i.i.i.i.preheader ]
  %.sroa.11110.1.us.i.i.i.i = add i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.0.us.i.i.i.i
  %gepdiff.us.i.i.i.i = sub nuw nsw i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.04.0.us.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.us.i.i.i.i)
          to label %.noexc29.us.i.i.i.i unwind label %.loopexit134.split.us.i.i.i.i, !noalias !346

.noexc29.us.i.i.i.i:                              ; preds = %.loopexit.i.us.i.i.i.i
  %i.db = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !357, !noalias !347, !noundef !6 ; 3 uses
  %i.dc = icmp sgt i64 %i.db, -1
  call void @llvm.assume(i1 %i.dc)
  %.not.i27.us.i.i.i.i = icmp eq i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.04.0.us.i.i.i.i
  br i1 %.not.i27.us.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc29.us.i.i.i.i
  %i.dd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !357, !noalias !347, !nonnull !6, !noundef !6
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull readonly align 1 %i.da, i64 %gepdiff.us.i.i.i.i, i1 false), !noalias !346
  %.pre.i28.us.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !357, !noalias !347
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc29.us.i.i.i.i
  %i.df = phi i64 [ %.pre.i28.us.i.i.i.i, %bb.v ], [ %i.db, %.noexc29.us.i.i.i.i ]
  %i.dg = add i64 %i.df, %gepdiff.us.i.i.i.i
  store i64 %i.dg, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !357, !noalias !347
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.us.i.i.i.i unwind label %.loopexit134.split.us.i.i.i.i, !noalias !346

.noexc33.us.i.i.i.i:                              ; preds = %bb.w
  %i.dh = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !358, !noalias !347, !noundef !6 ; 3 uses
  %i.di = icmp sgt i64 %i.dh, -1
  call void @llvm.assume(i1 %i.di)
  br i1 %i.aa, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc33.us.i.i.i.i
  %i.dj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !358, !noalias !347, !nonnull !6, !noundef !6
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 32, ptr %i.dk, align 1, !noalias !346
  %.pre.i32.us.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !358, !noalias !347
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc33.us.i.i.i.i
  %i.dl = phi i64 [ %.pre.i32.us.i.i.i.i, %bb.x ], [ %i.dh, %.noexc33.us.i.i.i.i ]
  %i.dm = add i64 %i.dl, %..i.i.i
  store i64 %i.dm, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !358, !noalias !347
  br label %bb.h

.loopexit134.split.us.i.i.i.i:                    ; preds = %bb.w, %.loopexit.i.us.i.i.i.i
  %lpad.loopexit.us.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.g
  %i.dn = and i64 %.sroa.6100.0.copyload.i.i.i.i, 65536
  %.not128.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not128.i.i.i.i, label %.lr.ph.i.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i:                           ; preds = %.split.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i) ]
  %i.do = trunc i64 %.sroa.6100.0.copyload.i.i.i.i to i1 ; 2 uses
  %i.dp = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  br i1 %i.dp, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.peel.i.i.i = icmp ult i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.peel.i.peel.i.i.i, label %bb.aa, label %.split.i.i.i.peel.i.peel.i.i.i

.split.i.i.i.peel.i.peel.i.i.i:                   ; preds = %bb.z
  %i.dq = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.dq, label %bb.ab, label %.loopexit262.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.498.0.copyload.i.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %bb.ab, label %.loopexit262.i.i.i.i

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.i.peel.i.peel.i.i.i, %.lr.ph.i.lr.ph.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.498.0.copyload.i.i.i.i ; 4 uses
  %i.dv = icmp samesign eq i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.dv, label %.loopexit263.i.peel.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i8, ptr %i.du, align 1, !noalias !361, !noundef !6 ; 5 uses
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %bb.ad, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i: ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dz = and i8 %i.dw, 31
  %i.ea = zext nneg i8 %i.dz to i32               ; 3 uses
  %i.eb = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 1
  %i.ec = icmp samesign ne i64 %i.eb, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i8, ptr %i.dy, align 1, !noalias !361, !noundef !6
  %i.ee = shl nuw nsw i32 %i.ea, 6
  %i.ef = and i8 %i.ed, 63
  %i.eg = zext nneg i8 %i.ef to i32               ; 2 uses
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = icmp samesign ugt i8 %i.dw, -33
  br i1 %i.ei, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i, label %bb.ae

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ek = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 2
  %i.el = icmp samesign ne i64 %i.ek, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.el)
  %i.em = load i8, ptr %i.ej, align 1, !noalias !361, !noundef !6
  %i.en = shl nuw nsw i32 %i.eg, 6
  %i.eo = and i8 %i.em, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.en, %i.ep            ; 2 uses
  %i.er = shl nuw nsw i32 %i.ea, 12
  %i.es = or disjoint i32 %i.eq, %i.er
  %i.et = icmp samesign ugt i8 %i.dw, -17
  br i1 %i.et, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i, label %bb.ae

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  %i.ev = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 3
  %i.ew = icmp samesign ne i64 %i.ev, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load i8, ptr %i.eu, align 1, !noalias !361, !noundef !6
  %i.ey = shl nuw nsw i32 %i.ea, 18
  %i.ez = and i32 %i.ey, 1835008
  %i.fa = shl nuw nsw i32 %i.eq, 6
  %i.fb = and i8 %i.ex, 63
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.ez
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = zext nneg i8 %i.dw to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i = phi i32 [ %i.es, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i ], [ %i.fe, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i ], [ %i.eh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i ], [ %i.ff, %bb.ad ] ; 4 uses
  %i.fg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fg)
  br i1 %i.do, label %.loopexit.i.i.peel.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 128
  br i1 %i.fh, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 2048
  br i1 %i.fi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 65536
  %..i.i.peel.i.peel.i.i.i = select i1 %i.fj, i64 3, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.01.0.i.i.peel.i.peel.i.i.i = phi i64 [ 2, %bb.ag ], [ %..i.i.peel.i.peel.i.i.i, %bb.ah ], [ 1, %bb.af ]
  %i.fk = add i64 %.sroa.01.0.i.i.peel.i.peel.i.i.i, %.sroa.498.0.copyload.i.i.i.i ; 15 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i.i.peel.i.i.i = icmp ult i64 %i.fk, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.peel.i.i.i, label %bb.ak, label %.split.i.i.i.i.peel.i.i.i

.split.i.i.i.i.peel.i.i.i:                        ; preds = %bb.aj
  %i.fm = icmp eq i64 %i.fk, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.fm, label %bb.al, label %.loopexit262.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.fk
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.fp = icmp sgt i8 %i.fo, -65
  br i1 %i.fp, label %bb.al, label %.loopexit262.i.i.i.i

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.i.peel.i.i.i, %bb.ai
  %i.fq = icmp samesign eq i64 %i.fk, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.fq, label %.loopexit.i.i.peel.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.fk
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !361, !noundef !6 ; 3 uses
  %i.ft = icmp sgt i8 %i.fs, -1
  br i1 %i.ft, label %.loopexit.i.i.peel.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i: ; preds = %bb.am
  %i.fu = add nuw nsw i64 %i.fk, 1
  %i.fv = icmp samesign ne i64 %i.fu, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i8 %i.fs, -33
  br i1 %i.fw, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i, label %.loopexit.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i
  %i.fx = add nuw nsw i64 %i.fk, 2
end_hunk_0
