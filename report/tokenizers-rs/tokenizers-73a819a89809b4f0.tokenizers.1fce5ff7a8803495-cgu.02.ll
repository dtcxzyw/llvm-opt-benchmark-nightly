Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.02?download=true
inline.NumInlined: 1144
inline.NumDeleted: 636
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1o_8adapters3map12map_try_foldBW_INtNtB1q_6result6ResultBW_INtNtBa_5boxed3BoxDNtNtB1q_5error5ErrorNtNtB1q_6marker4SendNtB4M_4SyncEL_EEB2m_INtNtNtB1q_3ops12control_flow11ControlFlowIB3I_B2m_zEB2m_ENCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB6s_7ReplaceNtNtB6w_9tokenizer7Decoder12decode_chain0NCINvXB37_INtB37_12GenericShuntINtB35_3MapBH_B6k_EIB3I_NtNtB1q_7convert10InfallibleB47_EEB1i_8try_foldB2m_NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0B64_E0E0B5o_EB6w_:bb.a
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bq)
          to label %.noexc30.i.i unwind label %.loopexit.i.i, !noalias !267

.noexc30.i.i:                                     ; preds = %bb.z
  %i.bs = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !289, !noalias !267, !noundef !4 ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  call void @llvm.assume(i1 %i.bt)
  %.not.i28.i.i = icmp eq i64 %.sroa.53.0.copyload.i.i, %.sroa.02.0.copyload.i.i
  br i1 %.not.i28.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit31.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc30.i.i
  %i.bu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !289, !noalias !267, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.br, i64 %i.bq, i1 false), !noalias !267
  %.pre.i29.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !289, !noalias !267
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit31.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit31.i.i: ; preds = %bb.aa, %.noexc30.i.i
  %i.bw = phi i64 [ %.pre.i29.i.i, %bb.aa ], [ %i.bs, %.noexc30.i.i ]
  %i.bx = add i64 %i.bw, %i.bq
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w, %.split7.i.i.i, %bb.u, %.split.i.i.i, %bb.q
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag, i64 noundef %.sroa.02.0.copyload.i.i, i64 noundef %.sroa.53.0.copyload.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #26
          to label %bb.ac unwind label %.loopexit.split-lp.i.i, !noalias !267

bb.ac:                                            ; preds = %bb.ab, %bb.d
  unreachable

bb.ad:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit31.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %storemerge.i.i = phi i64 [ %i.bx, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit31.i.i ], [ %i.bp, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  store i64 %storemerge.i.i, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !267
  %i.by = icmp eq ptr %i.as, %i.ap
  br i1 %i.by, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.ae:                                            ; preds = %bb.m, %bb.f, %.body.i.i
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !269
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !267
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit34.i.i unwind label %bb.af, !noalias !269

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ar unwind label %bb.ag, !noalias !269

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !269
  unreachable

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit34.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_RNCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB7_7ReplaceNtNtBb_9tokenizer7Decoder12decode_chain0Bb_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit34.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  store ptr %2, ptr %i.a, align 8, !noalias !292
  store ptr %.sroa.4.089, ptr %i.v, align 8, !noalias !292
  %i.cd = icmp eq i64 %.sroa.01.0.i, -1
  br i1 %i.cd, label %bb.ai, label %bb.au

bb.ai:                                            ; preds = %_RNCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB7_7ReplaceNtNtBb_9tokenizer7Decoder12decode_chain0Bb_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !292, !noundef !4 ; 4 uses
  %i.cf = getelementptr i8, ptr %.val.le, i64 8   ; 3 uses
  %.val6.i.i = load ptr, ptr %i.cf, align 8, !noalias !292 ; 6 uses
  %i.cg = icmp eq ptr %.val.i.i, null
  br i1 %i.cg, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.ch = load ptr, ptr %.val6.i.i, align 8, !invariant.load !4, !noalias !292 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void %i.ch(ptr noundef nonnull %.val.i.i)
          to label %bb.al unwind label %bb.an, !noalias !292

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !19, !invariant.load !4, !noalias !292 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !range !20, !invariant.load !4, !noalias !292
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cj, i64 noundef range(i64 1, 536870913) %i.cm) #25, !noalias !292
  br label %bb.at

bb.an:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !19, !invariant.load !4, !noalias !292 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !20, !invariant.load !4, !noalias !292
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #25, !noalias !292
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr %.sroa.5.0.i, ptr %.val.le, align 8, !noalias !292
  store ptr %.sroa.72.0.i, ptr %i.cf, align 8, !noalias !292
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.a) #24
          to label %.body.i unwind label %bb.aq, !noalias !292

bb.aq:                                            ; preds = %bb.ap
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !292
  unreachable

.body.i:                                          ; preds = %bb.ar, %bb.ap
  %eh.lpad-body5.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.ar ], [ %i.cn, %bb.ap ]
  resume { ptr, i32 } %eh.lpad-body5.i

bb.ar:                                            ; preds = %bb.ah, %bb.af, %bb.o, %.body.i.i
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.cc, %bb.ah ], [ %i.at, %bb.o ], [ %i.ca, %bb.af ], [ %.pn18.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.i) #24
          to label %.body.i unwind label %bb.as, !noalias !260

bb.as:                                            ; preds = %bb.ar
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !260
  unreachable

._crit_edge:                                      ; preds = %bb.au, %bb.a, %bb.at
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.089, %bb.at ], [ %3, %bb.a ], [ %i.cx, %bb.au ]
  %storemerge = phi i64 [ 1, %bb.at ], [ 0, %bb.a ], [ 0, %bb.au ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cw, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.at:                                            ; preds = %bb.ai, %bb.al, %bb.am
  store ptr %.sroa.5.0.i, ptr %.val.le, align 8, !noalias !292
  store ptr %.sroa.72.0.i, ptr %i.cf, align 8, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !260
  br label %._crit_edge

bb.au:                                            ; preds = %_RNCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB7_7ReplaceNtNtBb_9tokenizer7Decoder12decode_chain0Bb_.exit.i
  store i64 %.sroa.01.0.i, ptr %.sroa.4.089, align 8, !noalias !292
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.089, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !292
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.089, i64 16
  store ptr %.sroa.72.0.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !292
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.4.089, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !260
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
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.not128 = icmp eq ptr %.promoted, %i.l
  br i1 %.not128, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %3, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val6 = load ptr, ptr %i.m, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr i8, ptr %.val, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
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
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre = load i64, ptr %.val6, align 8, !noalias !296
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit
  %i.t = phi i64 [ %.pre, %.lr.ph ], [ %i.jv, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ]
  %.sroa.4.0129 = phi ptr [ %2, %.lr.ph ], [ %i.jt, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ] ; 3 uses
  %i.u = phi ptr [ %.promoted, %.lr.ph ], [ %i.v, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !305
  store ptr %1, ptr %i.i, align 8, !noalias !305
  store ptr %.sroa.4.0129, ptr %i.n, align 8, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !305
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !305, !nonnull !4, !align !18, !noundef !4
  %.val2.i.i = load ptr, ptr %i.o, align 8, !noalias !305, !nonnull !4, !align !18, !noundef !4
  %i.w = load i64, ptr %.val.i.i, align 8, !noalias !299, !noundef !4
  %7 = icmp ne i64 %i.t, %i.w                     ; 5 uses
  %..i.i.i = zext i1 %7 to i64                    ; 6 uses
  %i.x = load ptr, ptr %i.p, align 8, !noalias !299, !nonnull !4, !noundef !4 ; 7 uses
  %i.y = load i64, ptr %i.q, align 8, !noalias !299, !noundef !4 ; 5 uses
  %i.z = load ptr, ptr %.val2.i.i, align 8, !noalias !299, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !306, !noalias !309, !noundef !4 ; 2 uses
  %8 = icmp eq i64 %i.ab, 1
  %or.cond.i.i.i.i = and i1 %7, %8
  br i1 %or.cond.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !306, !noalias !309, !nonnull !4, !noundef !4
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !315, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !316
  store i8 %i.ae, ptr %i.f, align 1, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !316
  store i8 32, ptr %i.e, align 1, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !316
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store ptr %i.x, ptr %i.c, align 8, !noalias !316
  store ptr %i.af, ptr %4, align 8, !noalias !316
  store ptr %i.f, ptr %5, align 8, !noalias !316
  store ptr %i.e, ptr %6, align 8, !noalias !316
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i unwind label %.loopexit, !noalias !317

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !316
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %.not15.i.i.i.i = icmp ugt i64 %i.ab, %..i.i.i
  %spec.select.i.i.i.i = select i1 %.not15.i.i.i.i, i64 0, i64 %i.y ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !316
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i.i.i unwind label %.loopexit, !noalias !299

.noexc3.i.i.i:                                    ; preds = %bb.d
  %i.ag = load i64, ptr %i.a, align 8, !range !270, !noalias !316, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = load i64, ptr %i.r, align 8, !range !271, !noalias !316, !noundef !4 ; 3 uses
  br i1 %i.ah, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, !prof !272

bb.e:                                             ; preds = %.noexc3.i.i.i
  %i.aj = load i64, ptr %i.s, align 8, !noalias !316
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.aj) #26
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp, !noalias !299

.noexc4.i.i.i:                                    ; preds = %bb.e
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %.noexc3.i.i.i
  %i.ak = load ptr, ptr %i.s, align 8, !noalias !316, !nonnull !4, !noundef !4
  %i.al = icmp ule i64 %spec.select.i.i.i.i, %i.ai
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !316
  store i64 %i.ai, ptr %i.d, align 8, !noalias !316
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !316
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !316
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc6stringRNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3str7pattern7Pattern13into_searcher(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %bb.g unwind label %bb.f, !noalias !315

.loopexit134.i.i.i.i:                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit134.split.i.loopexit.split-lp.i.i.i, %.loopexit134.split.i.loopexit.i.i.i, %.loopexit134.split.us.i.i.i.i, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.f ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.us.i.i.i.i, %.loopexit134.split.us.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit134.split.i.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit134.split.i.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body.i.i.i unwind label %bb.be, !noalias !315

bb.f:                                             ; preds = %.loopexit.i.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

bb.g:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %.sroa.097.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !316
  %.sroa.498.0.copyload.i.i.i.i = load i64, ptr %.sroa.498.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 27 uses
  %.sroa.6100.0.copyload.i.i.i.i = load i64, ptr %.sroa.6100.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 5 uses
  %.sroa.7101.0.copyload.i.i.i.i = load i64, ptr %.sroa.7101.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 2 uses
  %.sroa.8102.0.copyload.i.i.i.i = load i64, ptr %.sroa.8102.0..sroa_idx.i.i.i.i, align 8, !noalias !316
  %.sroa.10104.0.copyload.i.i.i.i = load i64, ptr %.sroa.10104.0..sroa_idx.i.i.i.i, align 8, !noalias !316
  %.sroa.12106.0.copyload.i.i.i.i = load ptr, ptr %.sroa.12106.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 17 uses
  %.sroa.13107.0.copyload.i.i.i.i = load i64, ptr %.sroa.13107.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 42 uses
  %.sroa.14.0.copyload.i.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 5 uses
  %.sroa.15.0.copyload.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !316
  %i.an = trunc nuw i64 %.sroa.097.0.copyload.i.i.i.i to i1
  %i.ao = add nsw i64 %.sroa.15.0.copyload.i.i.i.i, -1 ; 3 uses
  br i1 %i.an, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i.i.i.i) ]
  %i.ap = sub i64 %.sroa.15.0.copyload.i.i.i.i, %.sroa.6100.0.copyload.i.i.i.i
  %umax49.i48.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.498.0.copyload.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %i.aq = add i64 %.sroa.498.0.copyload.i.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.aq, %.sroa.15.0.copyload.i.i.i.i
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
  %i.ar = icmp eq i64 %.sroa.3072.0.us.i.i.i.i, -1
  %i.as = add i64 %.sroa.18.0.us.i.i.i.i, %i.ao   ; 3 uses
  %i.at = icmp ult i64 %i.as, %.sroa.13107.0.copyload.i.i.i.i ; 2 uses
  br i1 %i.ar, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  br i1 %i.at, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i37.us.i.i.i.i:                            ; preds = %bb.i, %.sink.split.i.us.i.i.i.i
  %i.au = phi i64 [ %.sink.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.3072.0.us.i.i.i.i, %bb.i ] ; 3 uses
  %i.av = phi i64 [ %i.bu, %.sink.split.i.us.i.i.i.i ], [ %i.as, %bb.i ]
  %i.aw = phi i64 [ %.ph71.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.18.0.us.i.i.i.i, %bb.i ] ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !318, !noalias !323, !noundef !4
  %i.az = and i8 %i.ay, 63
  %i.ba = zext nneg i8 %i.az to i64
  %9 = lshr i64 %.sroa.7101.0.copyload.i.i.i.i, %i.ba
  %10 = trunc i64 %9 to i1
  br i1 %10, label %bb.j, label %11

11:                                               ; preds = %.lr.ph.i37.us.i.i.i.i
  %12 = add i64 %i.aw, %.sroa.15.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i37.us.i.i.i.i
  %.sroa.0.0.i.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.498.0.copyload.i.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %exitcond.not.i.us.i.i.i.i431.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i431.not, label %.lr.ph434, label %.preheader131.us.i.i.i.i.preheader

bb.k:                                             ; preds = %bb.l
  %i.bb = add i64 %.sroa.02.0.i.us.i.i.i.i432, 1  ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.bb, %umax49.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader131.us.i.i.i.i.preheader, label %.lr.ph434

.preheader131.us.i.i.i.i.preheader:               ; preds = %bb.k, %bb.j
  %i.bc = icmp ult i64 %i.au, %.sroa.498.0.copyload.i.i.i.i
  br i1 %i.bc, label %.lr.ph436, label %.loopexit.i.us.i.i.i.i

.lr.ph434:                                        ; preds = %bb.j, %bb.k
  %.sroa.02.0.i.us.i.i.i.i432 = phi i64 [ %i.bb, %bb.k ], [ %.sroa.0.0.i.i.us.i.i.i.i, %bb.j ] ; 4 uses
  %i.bd = add i64 %.sroa.02.0.i.us.i.i.i.i432, %i.aw ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.be, label %bb.l, label %.split187.us.i.i.i.i

bb.l:                                             ; preds = %.lr.ph434
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i.us.i.i.i.i432
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !321, !noalias !326, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !318, !noalias !323, !noundef !4
  %.not21.i.us.i.i.i.i = icmp eq i8 %i.bg, %i.bi
  br i1 %.not21.i.us.i.i.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.aw, %invariant.op
  %i.bj = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i.i432
  br label %.sink.split.i.us.i.i.i.i

.preheader131.us.i.i.i.i:                         ; preds = %bb.o
  %i.bk = icmp ult i64 %i.au, %i.bl
  br i1 %i.bk, label %.lr.ph436, label %.loopexit.i.us.i.i.i.i

.lr.ph436:                                        ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader131.us.i.i.i.i
  %.sroa.2.0.i.us.i.i.i.i435 = phi i64 [ %i.bl, %.preheader131.us.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader131.us.i.i.i.i.preheader ]
  %i.bl = add i64 %.sroa.2.0.i.us.i.i.i.i435, -1  ; 6 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.15.0.copyload.i.i.i.i
  br i1 %i.bm, label %bb.n, label %.split191.us.invoke.i.i.i.i

bb.n:                                             ; preds = %.lr.ph436
  %i.bn = add i64 %i.bl, %i.aw                    ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bo, label %bb.o, label %.split191.us.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.bl
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !321, !noalias !326, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !318, !noalias !323, !noundef !4
  %.not.i38.us.i.i.i.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i38.us.i.i.i.i, label %.preheader131.us.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add i64 %i.aw, %.sroa.6100.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

.sink.split.i.us.i.i.i.i:                         ; preds = %bb.p, %bb.m, %11
  %.sink.i.us.i.i.i.i = phi i64 [ %i.ap, %bb.p ], [ 0, %bb.m ], [ 0, %11 ]
  %.ph71.i.us.i.i.i.i = phi i64 [ %i.bt, %bb.p ], [ %i.bj, %bb.m ], [ %12, %11 ] ; 2 uses
  %i.bu = add i64 %.ph71.i.us.i.i.i.i, %i.ao      ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bv, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

bb.q:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  br i1 %i.at, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i45.us.i.i.i.i:                            ; preds = %bb.q, %bb.u
  %i.bw = phi i64 [ %i.ct, %bb.u ], [ %i.as, %bb.q ]
  %i.bx = phi i64 [ %i.cs, %bb.u ], [ %.sroa.18.0.us.i.i.i.i, %bb.q ] ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !327, !noalias !332, !noundef !4
  %i.ca = and i8 %i.bz, 63
  %i.cb = zext nneg i8 %i.ca to i64
  %13 = lshr i64 %.sroa.7101.0.copyload.i.i.i.i, %i.cb
  %14 = trunc i64 %13 to i1
  br i1 %14, label %.preheader.i.i.i.i.preheader, label %15

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i45.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i438.not, label %.lr.ph440, label %.preheader.us.i.preheader.i.i.i

15:                                               ; preds = %.lr.ph.i45.us.i.i.i.i
  %16 = add i64 %i.bx, %.sroa.15.0.copyload.i.i.i.i
  br label %bb.u

.preheader.i.i.i.i:                               ; preds = %bb.s
  %i.cc = add i64 %.sroa.02.0.i49.us.i.i.i.i439, 1 ; 2 uses
  %exitcond.not.i50.us.i.i.i.i = icmp eq i64 %i.cc, %umax49.i48.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i, label %.preheader.us.i.preheader.i.i.i, label %.lr.ph440

.preheader.us.i.preheader.i.i.i:                  ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i.i, label %.preheader.us.i.us.i.i.i.preheader, label %.preheader.us.i.preheader.split.i.i.i

.preheader.us.i.us.i.i.i.preheader:               ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.us.i.i.i441, label %.loopexit.i.us.i.i.i.i, label %.lr.ph443

.preheader.us.i.us.i.i.i:                         ; preds = %bb.r
  %.not129.us.i.us.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not129.us.i.us.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.lr.ph443

.lr.ph443:                                        ; preds = %.preheader.us.i.us.i.i.i.preheader, %.preheader.us.i.us.i.i.i
  %.sroa.2.0.i53.us.i.us.i.i.i442 = phi i64 [ %i.cd, %.preheader.us.i.us.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.us.i.us.i.i.i.preheader ]
  %i.cd = add i64 %.sroa.2.0.i53.us.i.us.i.i.i442, -1 ; 4 uses
  %i.ce = add i64 %i.cd, %i.bx                    ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cf, label %bb.r, label %.split191.us.invoke.i.i.i.i

bb.r:                                             ; preds = %.lr.ph443
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !330, !noalias !335, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ce
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !327, !noalias !332, !noundef !4
  %.not.i54.us.i.us.i.i.i = icmp eq i8 %i.ch, %i.cj
  br i1 %.not.i54.us.i.us.i.i.i, label %.preheader.us.i.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.r
  %i.ck = add i64 %i.bx, %.sroa.6100.0.copyload.i.i.i.i
  br label %bb.u

.preheader.us.i.preheader.split.i.i.i:            ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.split191.us.invoke.i.i.i.i

.lr.ph440:                                        ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.sroa.02.0.i49.us.i.i.i.i439 = phi i64 [ %i.cc, %.preheader.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %i.cl = add i64 %.sroa.02.0.i49.us.i.i.i.i439, %i.bx ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cm, label %bb.s, label %.split198.us.i.i.i.i

bb.s:                                             ; preds = %.lr.ph440
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i49.us.i.i.i.i439
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !330, !noalias !335, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cl
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !327, !noalias !332, !noundef !4
  %.not21.i52.us.i.i.i.i = icmp eq i8 %i.co, %i.cq
  br i1 %.not21.i52.us.i.i.i.i, label %.preheader.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass328.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.bx, %invariant.op635
  %i.cr = add i64 %.reass328.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i49.us.i.i.i.i439
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.us.i.i.i, %15
  %i.cs = phi i64 [ %i.cr, %bb.t ], [ %16, %15 ], [ %i.ck, %.split.us.i.i.i ] ; 2 uses
  %i.ct = add i64 %i.cs, %i.ao                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cu, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.us.i.i.i.i:                           ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader.us.i.us.i.i.i.preheader, %.preheader131.us.i.i.i.i, %.preheader.us.i.us.i.i.i, %.preheader.us.i.preheader.split.i.i.i
  %.sroa.7109.1.us.i.i.i.i = phi i64 [ %i.bx, %.preheader.us.i.preheader.split.i.i.i ], [ %i.bx, %.preheader.us.i.us.i.i.i ], [ %i.aw, %.preheader131.us.i.i.i.i ], [ %i.bx, %.preheader.us.i.us.i.i.i.preheader ], [ %i.aw, %.preheader131.us.i.i.i.i.preheader ] ; 3 uses
  %.sroa.3072.1.us.i.i.i.i = phi i64 [ -1, %.preheader.us.i.preheader.split.i.i.i ], [ -1, %.preheader.us.i.us.i.i.i ], [ 0, %.preheader131.us.i.i.i.i ], [ -1, %.preheader.us.i.us.i.i.i.preheader ], [ 0, %.preheader131.us.i.i.i.i.preheader ]
  %.sroa.11110.1.us.i.i.i.i = add i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.04.0.us.i.i.i.i
  %gepdiff.us.i.i.i.i = sub nuw nsw i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.04.0.us.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.us.i.i.i.i)
          to label %.noexc29.us.i.i.i.i unwind label %.loopexit134.split.us.i.i.i.i, !noalias !315

.noexc29.us.i.i.i.i:                              ; preds = %.loopexit.i.us.i.i.i.i
  %i.cw = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316, !noundef !4 ; 3 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  %.not.i27.us.i.i.i.i = icmp eq i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.04.0.us.i.i.i.i
  br i1 %.not.i27.us.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc29.us.i.i.i.i
  %i.cy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %i.cv, i64 %gepdiff.us.i.i.i.i, i1 false), !noalias !315
  %.pre.i28.us.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc29.us.i.i.i.i
  %i.da = phi i64 [ %.pre.i28.us.i.i.i.i, %bb.v ], [ %i.cw, %.noexc29.us.i.i.i.i ]
  %i.db = add i64 %i.da, %gepdiff.us.i.i.i.i
  store i64 %i.db, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.us.i.i.i.i unwind label %.loopexit134.split.us.i.i.i.i, !noalias !315

.noexc33.us.i.i.i.i:                              ; preds = %bb.w
  %i.dc = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316, !noundef !4 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  br i1 %7, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc33.us.i.i.i.i
  %i.de = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316, !nonnull !4, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 32, ptr %i.df, align 1, !noalias !315
  %.pre.i32.us.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc33.us.i.i.i.i
  %i.dg = phi i64 [ %.pre.i32.us.i.i.i.i, %bb.x ], [ %i.dc, %.noexc33.us.i.i.i.i ]
  %i.dh = add i64 %i.dg, %..i.i.i
  store i64 %i.dh, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316
  br label %bb.h

.loopexit134.split.us.i.i.i.i:                    ; preds = %bb.w, %.loopexit.i.us.i.i.i.i
  %lpad.loopexit.us.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.g
  %i.di = and i64 %.sroa.6100.0.copyload.i.i.i.i, 65536
  %.not128.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not128.i.i.i.i, label %.lr.ph.i.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i:                           ; preds = %.split.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i) ]
  %i.dj = trunc i64 %.sroa.6100.0.copyload.i.i.i.i to i1 ; 2 uses
  %i.dk = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  br i1 %i.dk, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.peel.i.i.i = icmp ult i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.peel.i.peel.i.i.i, label %bb.aa, label %.split.i.i.i.peel.i.peel.i.i.i

.split.i.i.i.peel.i.peel.i.i.i:                   ; preds = %bb.z
  %i.dl = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.dl, label %bb.ab, label %.loopexit262.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.498.0.copyload.i.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !342, !noalias !345, !noundef !4
  %i.do = icmp sgt i8 %i.dn, -65
  br i1 %i.do, label %bb.ab, label %.loopexit262.i.i.i.i

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.i.peel.i.peel.i.i.i, %.lr.ph.i.lr.ph.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.498.0.copyload.i.i.i.i ; 4 uses
  %i.dq = icmp samesign eq i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.dq, label %.loopexit263.i.peel.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i8, ptr %i.dp, align 1, !noalias !352, !noundef !4 ; 5 uses
  %i.ds = icmp sgt i8 %i.dr, -1
  br i1 %i.ds, label %bb.ad, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i: ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.du = and i8 %i.dr, 31
  %i.dv = zext nneg i8 %i.du to i32               ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 1
  %i.dx = icmp samesign ne i64 %i.dw, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load i8, ptr %i.dt, align 1, !noalias !352, !noundef !4
  %i.dz = shl nuw nsw i32 %i.dv, 6
  %i.ea = and i8 %i.dy, 63
  %i.eb = zext nneg i8 %i.ea to i32               ; 2 uses
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = icmp samesign ugt i8 %i.dr, -33
  br i1 %i.ed, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i, label %bb.ae

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.ef = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 2
  %i.eg = icmp samesign ne i64 %i.ef, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i8, ptr %i.ee, align 1, !noalias !352, !noundef !4
  %i.ei = shl nuw nsw i32 %i.eb, 6
  %i.ej = and i8 %i.eh, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = or disjoint i32 %i.ei, %i.ek            ; 2 uses
  %i.em = shl nuw nsw i32 %i.dv, 12
  %i.en = or disjoint i32 %i.el, %i.em
  %i.eo = icmp samesign ugt i8 %i.dr, -17
  br i1 %i.eo, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i, label %bb.ae

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.eq = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 3
  %i.er = icmp samesign ne i64 %i.eq, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.er)
  %i.es = load i8, ptr %i.ep, align 1, !noalias !352, !noundef !4
  %i.et = shl nuw nsw i32 %i.dv, 18
  %i.eu = and i32 %i.et, 1835008
  %i.ev = shl nuw nsw i32 %i.el, 6
  %i.ew = and i8 %i.es, 63
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = or disjoint i32 %i.ey, %i.eu
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fa = zext nneg i8 %i.dr to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i = phi i32 [ %i.en, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i ], [ %i.ez, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i ], [ %i.ec, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i ], [ %i.fa, %bb.ad ] ; 4 uses
  %i.fb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fb)
  br i1 %i.dj, label %.loopexit.i.i.peel.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 128
  br i1 %i.fc, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 2048
  br i1 %i.fd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 65536
  %..i.i.peel.i.peel.i.i.i = select i1 %i.fe, i64 3, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.01.0.i.i.peel.i.peel.i.i.i = phi i64 [ 2, %bb.ag ], [ %..i.i.peel.i.peel.i.i.i, %bb.ah ], [ 1, %bb.af ]
  %i.ff = add i64 %.sroa.01.0.i.i.peel.i.peel.i.i.i, %.sroa.498.0.copyload.i.i.i.i ; 15 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i.i.peel.i.i.i = icmp ult i64 %i.ff, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.peel.i.i.i, label %bb.ak, label %.split.i.i.i.i.peel.i.i.i

.split.i.i.i.i.peel.i.i.i:                        ; preds = %bb.aj
  %i.fh = icmp eq i64 %i.ff, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.fh, label %bb.al, label %.loopexit262.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ff
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !342, !noalias !345, !noundef !4
  %i.fk = icmp sgt i8 %i.fj, -65
  br i1 %i.fk, label %bb.al, label %.loopexit262.i.i.i.i

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.i.peel.i.i.i, %bb.ai
  %i.fl = icmp samesign eq i64 %i.ff, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.fl, label %.loopexit.i.i.peel.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ff
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !352, !noundef !4 ; 3 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %.loopexit.i.i.peel.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i: ; preds = %bb.am
  %i.fp = add nuw nsw i64 %i.ff, 1
  %i.fq = icmp samesign ne i64 %i.fp, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i, label %.loopexit.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i
  %i.fs = add nuw nsw i64 %i.ff, 2
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp samesign ugt i8 %i.fn, -17
  br i1 %i.fu, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i.i.i, label %.loopexit.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i
  %i.fv = add nuw nsw i64 %i.ff, 3
  %i.fw = icmp samesign ne i64 %i.fv, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.fw)
  br label %.loopexit.i.i.peel.i.i.i

.loopexit263.i.peel.i.i.i:                        ; preds = %bb.ab
  br i1 %i.dj, label %.loopexit.i.i.peel.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.peel.i.i.i:                         ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i.i.i, %bb.am, %.loopexit263.i.peel.i.i.i, %bb.al, %bb.ae
  %.sroa.465.1260.i.peel.i.i.i = phi i64 [ %.sroa.498.0.copyload.i.i.i.i, %.loopexit263.i.peel.i.i.i ], [ %.sroa.13107.0.copyload.i.i.i.i, %bb.al ], [ %.sroa.498.0.copyload.i.i.i.i, %bb.ae ], [ %i.ff, %bb.am ], [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i.i.i ], [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i ], [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i ] ; 6 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.465.1260.i.peel.i.i.i)
          to label %.noexc29.i.peel.i.i.i unwind label %.loopexit134.split.i.loopexit.split-lp.i.i.i, !noalias !315

.noexc29.i.peel.i.i.i:                            ; preds = %.loopexit.i.i.peel.i.i.i
  %i.fx = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316, !noundef !4 ; 3 uses
  %i.fy = icmp sgt i64 %i.fx, -1
  call void @llvm.assume(i1 %i.fy)
  %.not.i27.i.peel.i.i.i = icmp eq i64 %.sroa.465.1260.i.peel.i.i.i, 0
  br i1 %.not.i27.i.peel.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc29.i.peel.i.i.i
  %i.fz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316, !nonnull !4, !noundef !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr nonnull readonly align 1 %i.x, i64 %.sroa.465.1260.i.peel.i.i.i, i1 false), !noalias !315
  %.pre.i28.i.peel.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.noexc29.i.peel.i.i.i
  %i.gb = phi i64 [ %.pre.i28.i.peel.i.i.i, %bb.an ], [ %i.fx, %.noexc29.i.peel.i.i.i ]
  %i.gc = add i64 %i.gb, %.sroa.465.1260.i.peel.i.i.i
  store i64 %i.gc, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.i.peel.i.i.i unwind label %.loopexit134.split.i.loopexit.split-lp.i.i.i, !noalias !315

.noexc33.i.peel.i.i.i:                            ; preds = %bb.ao
  %i.gd = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316, !noundef !4 ; 3 uses
  %i.ge = icmp sgt i64 %i.gd, -1
  call void @llvm.assume(i1 %i.ge)
  br i1 %7, label %.lr.ph.i.i.i.i.i.sink.split, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.sink.split:                      ; preds = %.noexc33.i.peel.i.i.i, %bb.bd
  %.sink447 = phi i64 [ %i.jl, %bb.bd ], [ %i.gd, %.noexc33.i.peel.i.i.i ]
  %.sroa.04.0213.i.i.i.i.ph = phi i64 [ %.sroa.465.1260.i.i.i.i, %bb.bd ], [ %.sroa.465.1260.i.peel.i.i.i, %.noexc33.i.peel.i.i.i ]
  %i.gf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316, !nonnull !4, !noundef !4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sink447
  store i8 32, ptr %i.gg, align 1, !noalias !315
  %.pre.i32.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc33.i.peel.i.i.i, %.lr.ph.i.i.i.i.i.sink.split
  %.pn.i.i.i.ph = phi i64 [ %.pre.i32.i.i.i.i, %.lr.ph.i.i.i.i.i.sink.split ], [ %i.gd, %.noexc33.i.peel.i.i.i ]
  %.sroa.04.0213.i.i.i.i.ph457 = phi i64 [ %.sroa.04.0213.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.sink.split ], [ %.sroa.465.1260.i.peel.i.i.i, %.noexc33.i.peel.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.noexc33.i.i.i.i
  %.pn.i.i.i = phi i64 [ %i.jl, %.noexc33.i.i.i.i ], [ %.pn.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.04.0213.i.i.i.i = phi i64 [ %.sroa.465.1260.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.04.0213.i.i.i.i.ph457, %.lr.ph.i.i.i.i.i.preheader ] ; 14 uses
  %storemerge.i.i.i = add i64 %.pn.i.i.i, %..i.i.i
  store i64 %storemerge.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316
  %i.gh = icmp eq i64 %.sroa.04.0213.i.i.i.i, 0
  br i1 %i.gh, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.sroa.04.0213.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.aq, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.ap
  %i.gi = icmp eq i64 %.sroa.04.0213.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.gi, label %bb.ar, label %.loopexit262.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.04.0213.i.i.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !342, !noalias !345, !noundef !4
  %i.gl = icmp sgt i8 %i.gk, -65
  br i1 %i.gl, label %bb.ar, label %.loopexit262.i.i.i.i

bb.ar:                                            ; preds = %bb.aq, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.04.0213.i.i.i.i ; 4 uses
  %i.gn = icmp samesign eq i64 %.sroa.04.0213.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.gn, label %.loopexit.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.go = load i8, ptr %i.gm, align 1, !noalias !352, !noundef !4 ; 4 uses
  %i.gp = icmp sgt i8 %i.go, -1
  br i1 %i.gp, label %.thread.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.as
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gr = and i8 %i.go, 31
  %i.gs = zext nneg i8 %i.gr to i32               ; 3 uses
  %i.gt = add nuw nsw i64 %.sroa.04.0213.i.i.i.i, 1
  %i.gu = icmp samesign ne i64 %i.gt, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.gu)
  %i.gv = load i8, ptr %i.gq, align 1, !noalias !352, !noundef !4
  %i.gw = shl nuw nsw i32 %i.gs, 6
  %i.gx = and i8 %i.gv, 63
  %i.gy = zext nneg i8 %i.gx to i32               ; 2 uses
  %i.gz = or disjoint i32 %i.gw, %i.gy
  %i.ha = icmp samesign ugt i8 %i.go, -33
  br i1 %i.ha, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i, label %bb.at

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.hc = add nuw nsw i64 %.sroa.04.0213.i.i.i.i, 2
  %i.hd = icmp samesign ne i64 %i.hc, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.hd)
  %i.he = load i8, ptr %i.hb, align 1, !noalias !352, !noundef !4
  %i.hf = shl nuw nsw i32 %i.gy, 6
  %i.hg = and i8 %i.he, 63
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = or disjoint i32 %i.hf, %i.hh            ; 2 uses
  %i.hj = shl nuw nsw i32 %i.gs, 12
  %i.hk = or disjoint i32 %i.hi, %i.hj
  %i.hl = icmp samesign ugt i8 %i.go, -17
  br i1 %i.hl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i, label %bb.at

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  %i.hn = add nuw nsw i64 %.sroa.04.0213.i.i.i.i, 3
  %i.ho = icmp samesign ne i64 %i.hn, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ho)
  %i.hp = load i8, ptr %i.hm, align 1, !noalias !352, !noundef !4
  %i.hq = shl nuw nsw i32 %i.gs, 18
  %i.hr = and i32 %i.hq, 1835008
  %i.hs = shl nuw nsw i32 %i.hi, 6
  %i.ht = and i8 %i.hp, 63
  %i.hu = zext nneg i8 %i.ht to i32
  %i.hv = or disjoint i32 %i.hs, %i.hu
  %i.hw = or disjoint i32 %i.hv, %i.hr
  br label %bb.at

bb.at:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.hk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i ], [ %i.hw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i ], [ %i.gz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i ] ; 4 uses
  %i.hx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.hy, label %.thread.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.hz, label %.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.ia, i64 3, i64 4
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.au ], [ %..i.i.peel.i.i.i.i, %bb.av ], [ 1, %bb.at ], [ 1, %bb.as ]
  %i.ib = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.sroa.04.0213.i.i.i.i ; 15 uses
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.thread.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ib, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ax, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.aw
  %i.id = icmp eq i64 %i.ib, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.id, label %bb.ay, label %.loopexit262.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ib
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !342, !noalias !345, !noundef !4
  %i.ig = icmp sgt i8 %i.if, -65
  br i1 %i.ig, label %bb.ay, label %.loopexit262.i.i.i.i

bb.ay:                                            ; preds = %bb.ax, %.split.i.i.i.i.i.i.i, %.thread.i.i.i
  %i.ih = icmp samesign eq i64 %i.ib, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.ih, label %.loopexit.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ib
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !352, !noundef !4 ; 3 uses
  %i.ik = icmp sgt i8 %i.ij, -1
  br i1 %i.ik, label %.loopexit.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.il = add nuw nsw i64 %i.ib, 1
  %i.im = icmp samesign ne i64 %i.il, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.im)
  %i.in = icmp samesign ugt i8 %i.ij, -33
  br i1 %i.in, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i
  %i.io = add nuw nsw i64 %i.ib, 2
  %i.ip = icmp samesign ne i64 %i.io, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp samesign ugt i8 %i.ij, -17
  br i1 %i.iq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i
  %i.ir = add nuw nsw i64 %i.ib, 3
  %i.is = icmp samesign ne i64 %i.ir, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.is)
  br label %.loopexit.i.i.i.i.i

.loopexit262.i.i.i.i:                             ; preds = %bb.ak, %.split.i.i.i.i.peel.i.i.i, %bb.aa, %.split.i.i.i.peel.i.peel.i.i.i, %bb.ax, %.split.i.i.i.i.i.i.i, %bb.aq, %.split.i.i.i.peel.i.i.i.i
  %.sroa.465.1.lcssa.i.i.i.i = phi i64 [ %i.ib, %bb.ax ], [ %.sroa.04.0213.i.i.i.i, %bb.aq ], [ %.sroa.04.0213.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %i.ib, %.split.i.i.i.i.i.i.i ], [ %i.ff, %bb.ak ], [ %i.ff, %.split.i.i.i.i.peel.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %bb.aa ], [ %.sroa.498.0.copyload.i.i.i.i, %.split.i.i.i.peel.i.peel.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.12106.0.copyload.i.i.i.i, i64 noundef %.sroa.13107.0.copyload.i.i.i.i, i64 noundef %.sroa.465.1.lcssa.i.i.i.i, i64 noundef %.sroa.13107.0.copyload.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #26
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !315

.noexc.i.i.i.i:                                   ; preds = %.loopexit262.i.i.i.i
  unreachable

.split198.us.i.i.i.i:                             ; preds = %.lr.ph440
  %i.it = add i64 %i.bx, %.sroa.498.0.copyload.i.i.i.i
  %umax.i51.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13107.0.copyload.i.i.i.i, i64 %i.it)
  br label %.split191.us.invoke.i.i.i.i

.split191.us.invoke.i.i.i.i:                      ; preds = %.preheader.us.i.preheader.split.i.i.i, %bb.n, %.lr.ph436, %.lr.ph443, %.split187.us.i.i.i.i, %.split198.us.i.i.i.i
  %i.iu = phi i64 [ %umax.i51.i.i.i.i, %.split198.us.i.i.i.i ], [ %i.ce, %.lr.ph443 ], [ %umax.i.i.i.i.i, %.split187.us.i.i.i.i ], [ %i.bn, %bb.n ], [ %i.bl, %.lr.ph436 ], [ %i.aq, %.preheader.us.i.preheader.split.i.i.i ]
  %i.iv = phi i64 [ %.sroa.13107.0.copyload.i.i.i.i, %.split198.us.i.i.i.i ], [ %.sroa.13107.0.copyload.i.i.i.i, %.lr.ph443 ], [ %.sroa.13107.0.copyload.i.i.i.i, %.split187.us.i.i.i.i ], [ %.sroa.13107.0.copyload.i.i.i.i, %bb.n ], [ %.sroa.15.0.copyload.i.i.i.i, %.lr.ph436 ], [ %.sroa.15.0.copyload.i.i.i.i, %.preheader.us.i.preheader.split.i.i.i ]
  %i.iw = phi ptr [ @3, %.split198.us.i.i.i.i ], [ @2, %.lr.ph443 ], [ @3, %.split187.us.i.i.i.i ], [ @2, %bb.n ], [ @1, %.lr.ph436 ], [ @1, %.preheader.us.i.preheader.split.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.iu, i64 noundef range(i64 0, -9223372036854775808) %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iw) #26
          to label %.split191.us.cont.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !315

.split191.us.cont.i.i.i.i:                        ; preds = %.split191.us.invoke.i.i.i.i
  unreachable

.split187.us.i.i.i.i:                             ; preds = %.lr.ph434
  %i.ix = add i64 %i.aw, %.sroa.0.0.i.i.us.i.i.i.i
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13107.0.copyload.i.i.i.i, i64 %i.ix)
  br label %.split191.us.invoke.i.i.i.i

.loopexit134.split.i.loopexit.i.i.i:              ; preds = %bb.bc, %.loopexit.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

.loopexit134.split.i.loopexit.split-lp.i.i.i:     ; preds = %bb.ao, %.loopexit.i.i.peel.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.split191.us.invoke.i.i.i.i, %.loopexit262.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit134.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.ar, %bb.q, %bb.i, %.sink.split.i.us.i.i.i.i, %bb.u, %.loopexit263.i.peel.i.i.i, %.split.i.i.i.i
  %.sroa.04.0175.i.i.i.i = phi i64 [ 0, %.loopexit263.i.peel.i.i.i ], [ 0, %.split.i.i.i.i ], [ %.sroa.04.0.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.04.0.us.i.i.i.i, %bb.u ], [ %.sroa.04.0.us.i.i.i.i, %bb.q ], [ %.sroa.04.0.us.i.i.i.i, %bb.i ], [ %.sroa.13107.0.copyload.i.i.i.i, %bb.ar ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.04.0175.i.i.i.i
  %gepdiff130.i.i.i.i = sub nuw nsw i64 %i.y, %.sroa.04.0175.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff130.i.i.i.i)
          to label %.noexc26.i.i.i.i unwind label %bb.f, !noalias !315

.noexc26.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i
  %i.iz = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !355, !noalias !316, !noundef !4 ; 3 uses
  %i.ja = icmp sgt i64 %i.iz, -1
  call void @llvm.assume(i1 %i.ja)
  %.not.i.i.i.i.i = icmp eq i64 %i.y, %.sroa.04.0175.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc26.i.i.i.i
  %i.jb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !355, !noalias !316, !nonnull !4, !noundef !4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull readonly align 1 %i.iy, i64 %gepdiff130.i.i.i.i, i1 false), !noalias !315
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !355, !noalias !316
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.noexc26.i.i.i.i
  %i.jd = phi i64 [ %.pre.i.i.i.i.i, %bb.ba ], [ %i.iz, %.noexc26.i.i.i.i ]
  %i.je = add i64 %i.jd, %gepdiff130.i.i.i.i
  store i64 %i.je, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !355, !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !316
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, %bb.az, %bb.ay
  %.sroa.465.1260.i.i.i.i = phi i64 [ %.sroa.13107.0.copyload.i.i.i.i, %bb.ay ], [ %i.ib, %bb.az ], [ %i.ib, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i ], [ %i.ib, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i ], [ %i.ib, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i ] ; 3 uses
  %gepdiff.i.i.i.i = sub nuw nsw i64 %.sroa.465.1260.i.i.i.i, %.sroa.04.0213.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.i.i.i.i)
          to label %bb.bc unwind label %.loopexit134.split.i.loopexit.i.i.i, !noalias !315

bb.bc:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.04.0213.i.i.i.i
  %i.jg = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316, !noundef !4 ; 2 uses
  %i.jh = icmp sgt i64 %i.jg, -1
  call void @llvm.assume(i1 %i.jh)
  %i.ji = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316, !nonnull !4, !noundef !4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jj, ptr nonnull readonly align 1 %i.jf, i64 %gepdiff.i.i.i.i, i1 false), !noalias !315
  %.pre.i28.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316
  %i.jk = add i64 %.pre.i28.i.i.i.i, %gepdiff.i.i.i.i
  store i64 %i.jk, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !336, !noalias !316
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.i.i.i.i unwind label %.loopexit134.split.i.loopexit.i.i.i, !noalias !315

.noexc33.i.i.i.i:                                 ; preds = %bb.bc
  %i.jl = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339, !noalias !316, !noundef !4 ; 3 uses
  %i.jm = icmp sgt i64 %i.jl, -1
  call void @llvm.assume(i1 %i.jm)
  br i1 %7, label %bb.bd, label %.lr.ph.i.i.i.i.i, !llvm.loop !359

bb.bd:                                            ; preds = %.noexc33.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.sink.split, !llvm.loop !359

bb.be:                                            ; preds = %.loopexit134.i.i.i.i
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !315
  unreachable

.loopexit:                                        ; preds = %bb.c, %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit134.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.loopexit134.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i unwind label %bb.bh, !noalias !299

_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.bb, %.noexc.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.bf, !noalias !299

bb.bf:                                            ; preds = %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.bg, !noalias !299

bb.bg:                                            ; preds = %bb.bf
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !299
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit unwind label %bb.bi, !noalias !305

bb.bh:                                            ; preds = %.body.i.i.i
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !299
  unreachable

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bj:                                            ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

.body.i.i:                                        ; preds = %bb.bi, %bb.bf, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jr, %bb.bi ], [ %i.jo, %bb.bf ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.i) #24
          to label %bb.bj unwind label %bb.bk, !noalias !305

bb.bk:                                            ; preds = %.body.i.i
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !305
  unreachable

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0129, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !305
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.4.0129, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !305
  %i.ju = load i64, ptr %.val6, align 8, !noalias !296, !noundef !4
  %i.jv = add i64 %i.ju, 1                        ; 2 uses
  store i64 %i.jv, ptr %.val6, align 8, !noalias !296
  %.not = icmp eq ptr %i.v, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.jt, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ]
  %i.jw = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.jx = insertvalue { ptr, ptr } %i.jw, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.jx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1i_4find5checkBW_QNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapBH_E0E0INtNtNtB1q_3ops12control_flow11ControlFlowBW_EEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.d
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.h = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB2e_6string6StringEE0INtB7_5FnMutTRB2U_EE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !361

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #24
          to label %common.resume.i unwind label %bb.h, !noalias !361

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit.thread unwind label %bb.f, !noalias !361

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.g, !noalias !361

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !361
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !361
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit: ; preds = %bb.d
  %.sroa.05.0.copyload = load i64, ptr %i.a, align 8, !alias.scope !364, !noalias !366 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !alias.scope !364, !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %.sroa.05.0.copyload, -1
  br i1 %.not.i, label %bb.j, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %storemerge = phi i64 [ %.sroa.05.0.copyload, %bb.i ], [ -1, %bb.a ], [ -1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %._crit_edge

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit.thread, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldTINtB8_3VecmEIB2J_NtNtBa_6string6StringEIB2J_TjjEEENCNvMNtBY_8encodingNtB3B_8Encoding11from_tokens0EB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [120 x i8], align 8               ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.j, align 8        ; 2 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.i
  br i1 %.not.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
