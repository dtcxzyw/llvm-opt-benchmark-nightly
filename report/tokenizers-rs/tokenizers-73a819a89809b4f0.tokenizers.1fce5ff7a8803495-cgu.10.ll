Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNCNvXs0_NtNtB2q_10processors7robertaNtB3t_17RobertaProcessingNtB2o_13PostProcessor17process_encodingss0_00EB2k_EB2q_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE32forget_allocation_drop_remainingB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingB1K_EEB1Q_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNCNvXs0_NtNtB22_10processors7robertaNtB35_17RobertaProcessingNtB20_13PostProcessor17process_encodingss0_00EEB22_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNCNvXs0_NtNtB2q_10processors7robertaNtB3t_17RobertaProcessingNtB2o_13PostProcessor17process_encodingss0_0s_0EB2k_EB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNCNvXs0_NtNtB1Q_10processors7robertaNtB2T_17RobertaProcessingNtB1O_13PostProcessor17process_encodingss0_0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1K_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1K_E0INtNtBc_6result6ResultB5d_zEEB1Q_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNCNvXs0_NtNtB22_10processors7robertaNtB35_17RobertaProcessingNtB20_13PostProcessor17process_encodingss0_0s_0EEB22_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE32forget_allocation_drop_remainingB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingB1K_EEB1Q_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNCNvXs0_NtNtB22_10processors7robertaNtB35_17RobertaProcessingNtB20_13PostProcessor17process_encodingss0_0s_0EEB22_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringdEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Q_14UnigramTrainer10run_m_step0EB2k_EB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringdEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2h_14UnigramTrainer10run_m_step0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1K_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1K_E0INtNtBc_6result6ResultB4r_zEEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringdEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer10run_m_step0EEB2z_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringdEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtBI_6string6StringdEB1K_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringdEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer10run_m_step0EEB2z_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitINtNtB2D_7pattern6InvertRNtNtNtB2F_5utils4onig8SysRegexEE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitINtNtB1W_7pattern6InvertRNtNtNtB1Y_5utils4onig8SysRegexEE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitINtNtB2f_7pattern6InvertRNtNtNtB2h_5utils4onig8SysRegexEE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !188, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !189
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !188
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !188
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !189
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !188
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !188
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !189
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !188
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !188
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitINtNtB2f_7pattern6InvertRNtNtNtB2h_5utils4onig8SysRegexEE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitINtNtB2D_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitINtNtB1W_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitINtNtB2f_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !194, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !195
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !194
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !194
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !195
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !194
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !194
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !195
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !194
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !194
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitINtNtB2f_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitNvMNtNtB1e_4char7methodsc10is_numericE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitNvMNtNtBb_4char7methodsc10is_numericE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvMNtNtB4_4char7methodsc10is_numericE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !200, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !201
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !200
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !200
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !201
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !200
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !200
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !201
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !200
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !200
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvMNtNtB4_4char7methodsc10is_numericE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitNvMNtNtB1e_4char7methodsc13is_whitespaceE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitNvMNtNtBb_4char7methodsc13is_whitespaceE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvMNtNtB4_4char7methodsc13is_whitespaceE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !206, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !207
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !206
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !206
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !207
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !206
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !206
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !207
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !206
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !206
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvMNtNtB4_4char7methodsc13is_whitespaceE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitNvNtNtB2F_14pre_tokenizers11punctuation7is_puncE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitNvNtNtB1Y_14pre_tokenizers11punctuation7is_puncE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvNtNtB2h_14pre_tokenizers11punctuation7is_puncE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !212, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !213
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !212
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !212
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !213
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !212
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !212
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !213
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !212
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !212
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvNtNtB2h_14pre_tokenizers11punctuation7is_puncE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitNvNtNtB2F_14pre_tokenizers4bert12is_bert_puncE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitNvNtNtB1Y_14pre_tokenizers4bert12is_bert_puncE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvNtNtB2h_14pre_tokenizers4bert12is_bert_puncE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !218, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !219
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !218
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !218
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !219
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !218
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !218
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !219
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !218
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !218
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitNvNtNtB2h_14pre_tokenizers4bert12is_bert_puncE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitRNtNtNtB2F_5utils4onig8SysRegexE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitRNtNtNtB1Y_5utils4onig8SysRegexE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitRNtNtNtB2h_5utils4onig8SysRegexE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !224, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !225
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !224
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !224
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !225
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !224
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !224
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !225
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !224
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !224
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitRNtNtNtB2h_5utils4onig8SysRegexE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2B_16NormalizedString5splitcE0EB2k_EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1U_16NormalizedString5splitcE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1Y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitcE0EEB2h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !230, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.k = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.l = load <2 x i64>, ptr %i.i, align 8, !noalias !231
  store <2 x i64> %i.l, ptr %i.j, align 8, !noalias !230
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !230
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.o = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !noalias !231
  store <2 x i64> %i.p, ptr %i.n, align 8, !noalias !230
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !230
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !noalias !231
  store <2 x i64> %i.s, ptr %i.r, align 8, !noalias !230
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !230
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.w, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2d_16NormalizedString5splitcE0EEB2h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB2A_6InvertRNtNtNtB2E_5utils4onig8SysRegexENtB2A_7Pattern12find_matches0EB2k_EB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB1T_6InvertRNtNtNtB1X_5utils4onig8SysRegexENtB1T_7Pattern12find_matches0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1X_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB2c_6InvertRNtNtNtB2g_5utils4onig8SysRegexENtB2c_7Pattern12find_matches0EEB2g_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !236, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.q, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.53.0.copyload.i.i = load i8, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !237
  %i.j = xor i8 %.sroa.53.0.copyload.i.i, 1
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.l = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.m = load <2 x i64>, ptr %i.i, align 8, !noalias !237
  store <2 x i64> %i.m, ptr %i.k, align 8, !noalias !236
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !236
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.l ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.53.0.copyload.i.i.1 = load i8, ptr %.sroa.53.0..sroa_idx.i.i.1, align 8, !noalias !237
  %i.o = xor i8 %.sroa.53.0.copyload.i.i.1, 1
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.l ; 2 uses
  %i.q = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.r = load <2 x i64>, ptr %i.n, align 8, !noalias !237
  store <2 x i64> %i.r, ptr %i.p, align 8, !noalias !236
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i8 %i.o, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !236
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.53.0.copyload.i.i.epil = load i8, ptr %.sroa.53.0..sroa_idx.i.i.epil, align 8, !noalias !237
  %i.t = xor i8 %.sroa.53.0.copyload.i.i.epil, 1
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.v = load <2 x i64>, ptr %i.s, align 8, !noalias !237
  store <2 x i64> %i.v, ptr %i.u, align 8, !noalias !236
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !236
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.x, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.z, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB2c_6InvertRNtNtNtB2g_5utils4onig8SysRegexENtB2c_7Pattern12find_matches0EEB2g_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB2A_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB2A_7Pattern12find_matches0EB2k_EB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB1T_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB1T_7Pattern12find_matches0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1X_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 6 uses

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.f, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB2c_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB2c_7Pattern12find_matches0EEB2g_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !242, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.q, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.53.0.copyload.i.i = load i8, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !243
  %i.j = xor i8 %.sroa.53.0.copyload.i.i, 1
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i ; 2 uses
  %i.l = or disjoint i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.m = load <2 x i64>, ptr %i.i, align 8, !noalias !243
  store <2 x i64> %i.m, ptr %i.k, align 8, !noalias !242
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !242
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.l ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.53.0.copyload.i.i.1 = load i8, ptr %.sroa.53.0..sroa_idx.i.i.1, align 8, !noalias !243
  %i.o = xor i8 %.sroa.53.0.copyload.i.i.1, 1
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.l ; 2 uses
  %i.q = add nuw i64 %.sroa.0.01.i, 2             ; 2 uses
  %i.r = load <2 x i64>, ptr %i.n, align 8, !noalias !243
  store <2 x i64> %i.r, ptr %i.p, align 8, !noalias !242
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i8 %i.o, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !242
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.53.0.copyload.i.i.epil = load i8, ptr %.sroa.53.0..sroa_idx.i.i.epil, align 8, !noalias !243
  %i.t = xor i8 %.sroa.53.0.copyload.i.i.epil, 1
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.01.i.epil.init ; 2 uses
  %i.v = load <2 x i64>, ptr %i.s, align 8, !noalias !243
  store <2 x i64> %i.v, ptr %i.u, align 8, !noalias !242
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !242
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.x, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTjjEbEB1K_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %.loopexit
  store i64 %i.c, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.z, align 8
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB2c_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB2c_7Pattern12find_matches0EEB2g_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2b_13pre_tokenizerNtB34_18PreTokenizedString13into_encodings0_00ETmNtNtB1t_6string6StringTjjEINtNtB8_6option6OptionmEmENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i64, ptr %1, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !266, !noalias !267, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !266, !noalias !267, !nonnull !5, !noundef !5 ; 4 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.l, ptr %i.i, align 8, !alias.scope !266, !noalias !267
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.j, align 8, !noalias !268 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i, i64 40, i1 false), !noalias !269
  store i64 %.sroa.0.0.copyload1.i.i, ptr %i.d, align 8, !noalias !269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !272
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !271, !noalias !273, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !271, !noalias !273, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.q, align 8, !noalias !272
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.p, ptr %i.r, align 8, !noalias !272
  store i64 1, ptr %i.b, align 8, !noalias !272
  invoke void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !274

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #28
          to label %common.resume unwind label %bb.h, !noalias !275

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !272
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !276, !noalias !274 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !range !9, !alias.scope !277, !noalias !272, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !277, !noalias !272
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !277, !noalias !272
  %i.aa = add i64 %i.x, %.val.i.i.i
  %i.ab = add i64 %i.z, %.val.i.i.i
  %.pn3.i.i.i.i = select i1 %i.v, i64 %i.aa, i64 %i.n ; 3 uses
  %.pn1.i.i.i.i = select i1 %i.v, i64 %i.ab, i64 %i.p ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !272
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !276, !noalias !274, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !274, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1I_13pre_tokenizerNtB2B_18PreTokenizedString13into_encodings0_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1K_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  invoke void @_RNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB5_26BytesToCharOffsetConverter7convert(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad, i64 noundef %.pn3.i.i.i.i, i64 noundef %.pn1.i.i.i.i)
          to label %bb.g unwind label %bb.d, !noalias !274

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !range !9, !noalias !272, !noundef !5
  %i.ag = trunc nuw i64 %i.af to i1               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !272
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !272
  %.sroa.4.1.i.i.i = select i1 %i.ag, i64 %i.ak, i64 %.pn1.i.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.ag, i64 %i.ai, i64 %.pn3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1I_13pre_tokenizerNtB2B_18PreTokenizedString13into_encodings0_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1K_.exit

bb.h:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !275
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.d ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i, %bb.b
  store i64 -1, ptr %i.e, align 8, !alias.scope !278, !noalias !279
  br label %bb.m

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1I_13pre_tokenizerNtB2B_18PreTokenizedString13into_encodings0_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1K_.exit: ; preds = %bb.e, %bb.g
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.4.1.i.i.i, %bb.g ], [ %.pn1.i.i.i.i, %bb.e ]
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.g ], [ %.pn3.i.i.i.i, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !271, !noalias !273, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !279
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = load i32, ptr %i.ao, align 8, !range !20, !alias.scope !276, !noalias !274, !noundef !5
  %.not6.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !276, !noalias !274
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !276, !noalias !274
  %i.au = trunc i64 %i.at to i32
  %.sroa.5.0.i.i.i = select i1 %.not6.i.i.i, i32 %i.au, i32 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !276, !noalias !274, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !269
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !278, !noalias !279
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !278, !noalias !279
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !alias.scope !278, !noalias !279
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !278, !noalias !279
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %i.an, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !278, !noalias !279
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 %i.aw, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !278, !noalias !279
  %.pr = load i64, ptr %i.e, align 8
  %.not6 = icmp eq i64 %.pr, -1
  br i1 %.not6, label %bb.l, label %bb.k

end_hunk_0
begin_hunk_1_@_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2b_13pre_tokenizerNtB34_18PreTokenizedString13into_encodings_00ETmNtNtB1t_6string6StringTjjEINtNtB8_6option6OptionmEmENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2d_:bb.a
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %common.resume unwind label %bb.i, !noalias !303

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !303
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.u, %bb.h ], [ %i.y, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !303
  unreachable

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1I_13pre_tokenizerNtB2B_18PreTokenizedString13into_encodings_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1K_.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !301
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !305, !noalias !306
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.t, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !305, !noalias !306
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !305, !noalias !306
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 0, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !alias.scope !305, !noalias !306
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !305, !noalias !306
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.l, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !305, !noalias !306
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !305, !noalias !306
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1I_13pre_tokenizerNtB2B_18PreTokenizedString13into_encodings_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1K_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2k_13pre_tokenizerNtB3d_18PreTokenizedString13into_encodings_00EEEB2m_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.b, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i
  store i64 -1, ptr %i.c, align 8, !alias.scope !305, !noalias !306
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2k_13pre_tokenizerNtB3d_18PreTokenizedString13into_encodings_00EEEB2m_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.c) #28
          to label %common.resume unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2k_13pre_tokenizerNtB3d_18PreTokenizedString13into_encodings_00EEEB2m_.exit: ; preds = %bb.o
  store ptr null, ptr %1, align 8
  br label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1G_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEEB3b_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !5
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB2a_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE0EB3F_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2g_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB2a_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE0EB3F_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB2a_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE0EB3F_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazy7destroyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !5
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE0ECs2JiOgHzbbc7_10tokenizers.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE0ECs2JiOgHzbbc7_10tokenizers.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs1D9TkrBnOxz_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE0ECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #5 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !319, !noalias !320
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !319, !noalias !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !320, !noalias !317
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !320, !noalias !317
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !319, !noalias !320
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !319, !noalias !320
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !320, !noalias !317
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !320, !noalias !317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !317, !noalias !318
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !318, !noalias !317
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !317, !noalias !318
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !318, !noalias !317
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !317, !noalias !318
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !318, !noalias !317
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !317, !noalias !318
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !318, !noalias !317
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !321, !noalias !322
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !322, !noalias !321
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !321, !noalias !322
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !322, !noalias !321
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !316
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtB5_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtB3c_8SequenceNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @18, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtB5_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtB26_8SequenceNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @18, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB5_13LowercaseTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB3a_13LowercaseTypeNtB22_11Deserialize11deserialize9___VisitorEB3e_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @21, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB5_13LowercaseTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.e = load i8, ptr %0, align 8, !range !18, !alias.scope !327, !noundef !5
  switch i8 %i.e, label %bb.b [
    i8 3, label %.noexc.i
    i8 5, label %bb.e
  ], !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !327
  invoke void @_RNvMsm_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB7_5Value10unexpected(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !327

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 -1, ptr %i.g, align 8, !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !327
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB2S_13LowercaseTypeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d), !noalias !327
  %i.h = load i8, ptr %i.a, align 8, !range !14, !noalias !328, !noundef !5
  %i.i = icmp eq i8 %i.h, -2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !328, !nonnull !5, !align !7, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !327
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = tail call noundef align 8 ptr @_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB2W_13LowercaseTypeNtB1O_11Deserialize11deserialize9___VisitorEB30_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @21, i64 noundef 1)
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB24_13LowercaseTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi ptr [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !327
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB24_13LowercaseTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.c) #28
          to label %.thread.i unwind label %bb.j, !noalias !327

bb.h:                                             ; preds = %bb.b
  %i.p = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @58, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.i unwind label %bb.g, !noalias !327

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !327
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.c), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB24_13LowercaseTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread.i:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.o

_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB24_13LowercaseTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit: ; preds = %bb.f, %bb.e, %bb.i
  %.sroa.0.1.i = phi ptr [ %i.p, %bb.i ], [ %.sroa.0.1.i.i, %bb.f ], [ %i.n, %bb.e ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels1_1__NtB5_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels1_1__NtB3a_13ByteLevelTypeNtB22_11Deserialize11deserialize9___VisitorEB3e_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @24, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels1_1__NtB5_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.e = load i8, ptr %0, align 8, !range !18, !alias.scope !333, !noundef !5
  switch i8 %i.e, label %bb.b [
    i8 3, label %.noexc.i
    i8 5, label %bb.e
  ], !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !333
  invoke void @_RNvMsm_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB7_5Value10unexpected(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !333

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 -1, ptr %i.g, align 8, !noalias !333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels1_1__NtB2S_13ByteLevelTypeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d), !noalias !333
  %i.h = load i8, ptr %i.a, align 8, !range !14, !noalias !334, !noundef !5
  %i.i = icmp eq i8 %i.h, -2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !334, !nonnull !5, !align !7, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !333
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.o, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtBX_4iter6traits7collect6ExtendTjBQ_EE6extendINtNtNtB2v_8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterjBQ_ENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4N_8Encoding10merge_with0EEB4R_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.n)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cj = load i64, ptr %1, align 8, !range !16, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cm = icmp ult i64 %i.cl, 2305843009213693952
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cl
  store ptr %i.ci, ptr %i.i, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.cj, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ci, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.cn, ptr %i.cq, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendmINtNtB7_9into_iter8IntoItermEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cv = load i64, ptr %i.cs, align 8, !range !16, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cy = icmp ult i64 %i.cx, 2305843009213693952
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cx
  store ptr %i.cu, ptr %i.h, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.cv, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cu, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.cz, ptr %i.dc, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendmINtNtB7_9into_iter8IntoItermEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !16, !noundef !5
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dj = load i64, ptr %i.di, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dk = icmp ult i64 %i.dj, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.dj
  store ptr %i.dg, ptr %i.g, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.dh, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.dg, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.dl, ptr %i.do, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtB9_6string6StringEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !16, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dv = load i64, ptr %i.du, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dw = icmp ult i64 %i.dv, 1152921504606846976
  call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dv
  store ptr %i.ds, ptr %i.f, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dt, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ds, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.dx, ptr %i.ea, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br i1 %2, label %bb.ai, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit, label %bb.ao

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit: ; preds = %bb.ai, %bb.ap, %bb.ao, %bb.ah
  %storemerge = phi i64 [ 0, %bb.ah ], [ %.val.i, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ai ]
  store i64 %storemerge, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %i.eg = load i64, ptr %i.ed, align 8, !range !16, !noundef !5 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !5 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, 576460752303423488
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.ei
  store ptr %i.ef, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.eg, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ek, ptr %.sroa.6.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.el, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.em = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding10merge_withs0_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1R_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %.noexc.i unwind label %bb.ak, !noalias !757 ; 10 uses

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEB1K_EECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %i.fx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEB1K_EECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.en, %bb.ak ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.thread67 unwind label %bb.an, !noalias !757

bb.ak:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.noexc.i:                                         ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit
  %.not.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %.val.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !758, !noalias !757, !nonnull !5, !noundef !5 ; 7 uses
  %.val6.i.i = load ptr, ptr %i.el, align 8, !alias.scope !758, !noalias !757, !nonnull !5, !align !7, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.em, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.eo = shl i64 %i.em, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ef, i64 %i.eo ; 2 uses
  %scevgep190 = getelementptr i8, ptr %.val.i.i, i64 %i.eo
  %scevgep191 = getelementptr i8, ptr %.val6.i.i, i64 8
  %bound0 = icmp ult ptr %i.ef, %scevgep190
  %bound1 = icmp ult ptr %.val.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0192 = icmp ult ptr %i.ef, %scevgep191
  %bound1193 = icmp ult ptr %.val6.i.i, %scevgep
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx = or i1 %found.conflict, %found.conflict194
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.em, -2                      ; 3 uses
  %i.ep = load i64, ptr %.val6.i.i, align 8, !alias.scope !759, !noalias !757, !noundef !5
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.eq = or disjoint i64 %index, 1               ; 2 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %index
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.eq
  %wide.load = load <2 x i64>, ptr %i.er, align 8, !alias.scope !760, !noalias !757
  %wide.load195 = load <2 x i64>, ptr %i.es, align 8, !alias.scope !760, !noalias !757
  %i.et = add <2 x i64> %broadcast.splat, %wide.load
  %i.eu = add <2 x i64> %broadcast.splat, %wide.load195
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %index
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eq
  store <2 x i64> %i.et, ptr %i.ev, align 8, !alias.scope !761, !noalias !762
  store <2 x i64> %i.eu, ptr %i.ew, align 8, !alias.scope !761, !noalias !762
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.01.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.01.i.i.ph, 1
  %xtraiter = and i64 %i.em, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.sroa.0.01.i.i.ph
  %i.ez = load i64, ptr %.val6.i.i, align 8, !noalias !757, !noundef !5
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.0.01.i.i.ph
  %i.fb = or disjoint i64 %.sroa.0.01.i.i.ph, 1
  %i.fc = load <2 x i64>, ptr %i.ey, align 8, !noalias !757
  %i.fd = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fe = shufflevector <2 x i64> %i.fd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ff = add <2 x i64> %i.fe, %i.fc
  store <2 x i64> %i.ff, ptr %i.fa, align 8, !noalias !763
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.01.i.i.unr = phi i64 [ %.sroa.0.01.i.i.ph, %scalar.ph.preheader ], [ %i.fb, %scalar.ph.prol ]
  %i.fg = icmp eq i64 %i.em, %.neg
  br i1 %i.fg, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.01.i.i = phi i64 [ %i.fs, %scalar.ph ], [ %.sroa.0.01.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.sroa.0.01.i.i
  %i.fi = load i64, ptr %.val6.i.i, align 8, !noalias !757, !noundef !5
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.0.01.i.i
  %i.fk = add nuw i64 %.sroa.0.01.i.i, 1          ; 2 uses
  %i.fl = load <2 x i64>, ptr %i.fh, align 8, !noalias !757
  %i.fm = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fn = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fo = add <2 x i64> %i.fn, %i.fl
  store <2 x i64> %i.fo, ptr %i.fj, align 8, !noalias !763
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.fk
  %i.fq = load i64, ptr %.val6.i.i, align 8, !noalias !757, !noundef !5
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.fk
  %i.fs = add nuw i64 %.sroa.0.01.i.i, 2          ; 2 uses
  %i.ft = load <2 x i64>, ptr %i.fp, align 8, !noalias !757
  %i.fu = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %i.fv = shufflevector <2 x i64> %i.fu, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fw = add <2 x i64> %i.fv, %i.ft
  store <2 x i64> %i.fw, ptr %i.fr, align 8, !noalias !763
  %exitcond.not.i.i.1 = icmp eq i64 %i.fs, %i.em
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !746

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc.i
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjjEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.am unwind label %bb.al, !noalias !757

bb.al:                                            ; preds = %.loopexit.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !764
  store i64 %i.eg, ptr %i.a, align 8, !noalias !764
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ef, ptr %i.fy, align 8, !noalias !764
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEB1K_EECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.an, !noalias !757

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEB1K_EECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !764
  br label %bb.aj

bb.am:                                            ; preds = %.loopexit.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !757
  unreachable

bb.ao:                                            ; preds = %bb.ai
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !5, !noundef !5
  %i.gc = getelementptr [16 x i8], ptr %i.gb, i64 %i.ec ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %.not.i = icmp eq ptr %i.gd, null
  br i1 %.not.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ge = getelementptr i8, ptr %i.gc, i64 -8
  %.val.i = load i64, ptr %i.ge, align 8, !alias.scope !765, !noundef !5
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit: ; preds = %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gg = icmp ult i64 %i.em, 576460752303423488
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.em
  store ptr %i.ef, ptr %i.e, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.eg, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ef, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.gh, ptr %i.gk, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecTjjEEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gp = load i64, ptr %i.gm, align 8, !range !16, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gs = icmp ult i64 %i.gr, 2305843009213693952
  call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gr
  store ptr %i.go, ptr %i.d, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.gp, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.go, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.gt, ptr %i.gw, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendmINtNtB7_9into_iter8IntoItermEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.hb = load i64, ptr %i.gy, align 8, !range !16, !noundef !5
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.hd = load i64, ptr %i.hc, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.he = icmp ult i64 %i.hd, 2305843009213693952
  call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hd
  store ptr %i.ha, ptr %i.c, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.hb, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ha, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.hf, ptr %i.hi, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendmINtNtB7_9into_iter8IntoItermEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread166 unwind label %bb.av

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread166

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit: ; preds = %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit37 unwind label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.bo, %bb.bp, %bb.ax
  %common.resume.op = phi { ptr, i32 } [ %i.hn, %bb.ax ], [ %.pn246498121130147154165170, %bb.bp ], [ %.pn246498121130147154165170, %bb.bo ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit37: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit
end_hunk_2
