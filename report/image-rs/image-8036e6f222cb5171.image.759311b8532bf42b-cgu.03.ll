Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvMNtNtCsdsTQD3x2eOp_3exr5block6readerINtB3_6ReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13filter_chunksNCINvMNtNtNtB7_5image4read5imageINtB1W_9ReadImageFdEuINtNtB1Y_6layers19ReadFirstValidLayerINtNtB1Y_17specific_channels13CollectPixelsINtB3l_19ReadOptionalChannelINtB3l_19ReadRequiredChannelIB4s_IB4s_NtNtB20_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB6o_14OpenExrDecoderBP_ENtNtNtB6s_2io7decoder12ImageDecoder10read_images0_0NCB6j_s1_0EEE11from_chunksINtB20_5LayerINtB20_16SpecificChannelsB5I_TNtNtNtB7_4meta9attribute18ChannelDescriptionB9o_B9o_INtNtBW_6option6OptionB9o_EEEEBP_E0EB6s_:bb.a
  store i64 2, ptr %i.cj, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @4 to i64), ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 18, ptr %.sroa.693.0..sroa_idx, align 8
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  %i.ck = zext nneg i32 %.sroa.565.0.copyload to i64
  %i.cl = zext nneg i32 %.sroa.666.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.097, i64 16, i1 false)
  store i64 %.sroa.10.16.copyload, ptr %.sroa.698.0..sroa_idx101, align 8
  store i64 %.sroa.11.16.copyload, ptr %.sroa.7103.0..sroa_idx106, align 8
  store i64 %i.ck, ptr %i.bd, align 8
  store i64 %i.cl, ptr %.sroa.529.0..sroa_idx, align 8
  store <2 x i64> %i.cf, ptr %.sroa.630.0..sroa_idx, align 8
  store i64 %.sroa.10.16.copyload, ptr %.sroa.832.0..sroa_idx, align 8
  store i64 %.sroa.11.16.copyload, ptr %.sroa.933.0..sroa_idx, align 8
  store i64 %.sroa.8152.0236, ptr %.sroa.1034.0..sroa_idx, align 8
  %i.cm = invoke noundef zeroext i1 @_RNvXs2_NtNtNtCsdsTQD3x2eOp_3exr5image4read6layersINtB5_21FirstValidLayerReaderINtNtB7_17specific_channels22SpecificChannelsReaderINtNtCs4wP2HXfJTCR_5alloc3vec3VecfERNCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2K_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB2O_2io7decoder12ImageDecoder10read_images1_0INtNtB9_9recursive9RecursiveIB5m_IB5m_IB5m_NtB5o_8NoneMoreINtB1h_12SampleReaderfEEB6h_EB6h_EINtB1h_20OptionalSampleReaderfEETffffEEENtNtB7_5image12LayersReader12filter_blockB2O_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1240) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4296) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.bd)
          to label %_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit unwind label %.loopexit

_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit
  %i.cn = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k, i64 noundef %.sroa.8152.0236, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.aj unwind label %.loopexit ; 2 uses

bb.ai:                                            ; preds = %_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097)
  %i.co = icmp eq ptr %i.bz, %.sroa.09.sroa.4.0.copyload
  br i1 %i.co, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, label %.lr.ph

bb.aj:                                            ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !12 ; 2 uses
  %i.cr = icmp ult i64 %.sroa.13.0234, %i.cq
  br i1 %i.cr, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !12, !noundef !12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.13.0234
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !12
  %i.cw = load i64, ptr %i.as, align 8, !alias.scope !81, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.h, align 8, !range !59, !alias.scope !81, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.al, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs3s7QNvxKlGF_10num_bigint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #38
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.al, %bb.ak
  %i.cz = load ptr, ptr %i.ar, align 8, !alias.scope !81, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cw
  store i64 %i.cv, ptr %i.da, align 8
  %i.db = add i64 %i.cw, 1
  store i64 %i.db, ptr %i.as, align 8, !alias.scope !81
  br label %bb.ai

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.13.0234, i64 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %bb.an unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.am, %bb.l
  unreachable

bb.ao:                                            ; preds = %bb.af, %bb.ad
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097)
  %i.dc = icmp eq i64 %.sroa.09.sroa.3.0.copyload, 0
  br i1 %i.dc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.sroa.0.0.copyload) ]
  %i.dd = mul nuw i64 %.sroa.09.sroa.3.0.copyload, 48
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.sroa.0.0.copyload, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !84
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit, %bb.h
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144 unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread, %.body, %bb.ax, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144: ; preds = %bb.aq, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4344) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144
  %i.df = landingpad { ptr, i32 }
          cleanup
  %.val2.i145 = load i8, ptr %i.l, align 8, !range !90, !alias.scope !87, !noundef !12
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val3.i146 = load ptr, ptr %i.dg, align 8, !alias.scope !87
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val2.i145, ptr %.val3.i146) #37
          to label %common.resume unwind label %bb.aw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144
  %.val.i147 = load i8, ptr %i.l, align 8, !range !90, !alias.scope !87, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val1.i148 = load ptr, ptr %i.dh, align 8, !alias.scope !87 ; 4 uses
  %i.di = icmp eq i8 %.val.i147, 1
  br i1 %i.di, label %bb.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.at:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i148) ]
  %i.dj = ptrtoint ptr %.val1.i148 to i64         ; 2 uses
  %i.dk = and i64 %i.dj, 3
  switch i64 %i.dk, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
    i64 3, label %bb.au
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
    i64 1, label %bb.av
  ], !prof !91

default.unreachable:                              ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.dl = icmp ult ptr %.val1.i148, inttoptr (i64 188978561024 to ptr)
  %i.dm = and i64 %i.dj, 1095216660480
  %i.dn = icmp ne i64 %i.dm, 1095216660480
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.assume(i1 %i.dn)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.do = getelementptr i8, ptr %.val1.i148, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !92, !noalias !87
  store i8 3, ptr %i.b, align 8, !alias.scope !92, !noalias !87
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dp)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.aw:                                            ; preds = %bb.as
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.ax, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %i.df, %bb.as ], [ %.pn118208, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209: ; preds = %bb.aq, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %.body, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209
  %.pn118208 = phi { ptr, i32 } [ %lpad.thr_comm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209 ], [ %.pn116, %.body ]
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4296) %1)
          to label %bb.ax unwind label %bb.ar

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread
  %.val127 = load i8, ptr %i.l, align 8, !range !90, !noundef !12
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val128 = load ptr, ptr %i.dr, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val127, ptr %.val128) #37
          to label %common.resume unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1g_25ParallelBlockDecompressorINtB1g_22OnProgressChunksReaderINtB1g_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0ECsa5QsYiPB8Gl_5image(ptr nofree noundef nonnull readonly align 128 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 10 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.520.0..sroa_idx, i64 96, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..sroa_idx, i64 16, i1 false)
  %i.f = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 16
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.9.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.520.0..sroa_idx, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !95
  %i.g = load ptr, ptr %.sroa.10.0..sroa_idx15, align 16, !alias.scope !101, !noalias !100, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.j = load i8, ptr %i.i, align 8, !range !102, !alias.scope !101, !noalias !100, !noundef !12
  %i.k = trunc nuw i8 %i.j to i1
  invoke fastcc void @_RNvMNtCsdsTQD3x2eOp_3exr5blockNtB2_17UncompressedBlock16decompress_chunk(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4296) %i.h, i1 noundef zeroext %i.k)
          to label %bb.d unwind label %bb.b, !noalias !95

bb.b:                                             ; preds = %bb.k, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.g, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.m = load ptr, ptr %.sroa.10.0..sroa_idx15, align 16, !alias.scope !109, !noalias !100, !nonnull !12, !noundef !12
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !110
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.c:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.10.0..sroa_idx15) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.n, !noalias !100

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  invoke void @_RNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.e unwind label %bb.b, !noalias !100

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.b, align 8, !range !111, !alias.scope !112, !noalias !95, !noundef !12
  switch i64 %i.p, label %bb.f [
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
    i64 -1, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.i unwind label %bb.g, !noalias !100

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !115, !noalias !95 ; 2 uses
  %i.r = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %.body.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !126, !noalias !95, !nonnull !12, !noundef !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !127
  br label %.body.i.i.i

bb.i:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !115, !noalias !95 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !126, !noalias !95, !nonnull !12, !noundef !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !130
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.k:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.b, !noalias !100

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !95
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.w = load ptr, ptr %.sroa.10.0..sroa_idx15, align 16, !alias.scope !139, !noalias !100, !nonnull !12, !noundef !12
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !140
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.10.0..sroa_idx15) #38
          to label %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i unwind label %bb.m, !noalias !100

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.body unwind label %bb.n, !noalias !100

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.m, %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !100
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.c, %.body.i.i.i
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.body unwind label %bb.n, !noalias !100

_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.z, %bb.m ], [ %eh.lpad-body.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsaKJjC64KgbL_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.q:                                             ; preds = %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit

bb.r:                                             ; preds = %.body
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 6 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ai = load ptr, ptr %i.ah, align 32, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.t, label %bb.s

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.x, %bb.s, %bb.q
  ret void

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !12, !align !141, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.am(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXNtCsPkZ9TkQnmq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit unwind label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCsPkZ9TkQnmq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.t
  %i.ap = load ptr, ptr %i.ag, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit
  invoke void %i.ap(ptr noundef nonnull %i.af)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !59, !invariant.load !12 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !142, !invariant.load !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) %i.au) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit

bb.y:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !59, !invariant.load !12 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %common.resume, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_KB4H_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2273
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_KB4g_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2273, !noundef !12
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_KB5x_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_KB5x_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_KB4g_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_KB4g_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !141, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2276, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2276, !nonnull !12
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noalias !2276, !noundef !12 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.l
  br i1 %i.p, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2276
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2276, !noundef !12
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB4b_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !141, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB51_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2279, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2279, !nonnull !12
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noalias !2279, !noundef !12 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.l
  br i1 %i.p, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2279
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2279, !noundef !12
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB51_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB51_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !141, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2282, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2282, !nonnull !12
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noalias !2282, !noundef !12 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.l
  br i1 %i.p, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2282
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2282, !noundef !12
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3l_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callB3A_NCINvMsk_B12_INtB12_3VecB3A_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.not10.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload
  br i1 %.not.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = phi i64 [ %i.j, %.lr.ph.i ], [ %.sroa.42.0.copyload, %bb.a ] ; 2 uses
  %i.b = phi ptr [ %i.f, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !2285, !nonnull !12, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !102, !noalias !2285, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.copyload, i64 %i.a ; 5 uses
  store ptr %i.c, ptr %i.g, align 8, !noalias !2289
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.e, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2289
  %i.h = getelementptr i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.h, i8 0, i64 14, i1 false), !noalias !2296
  %i.i = getelementptr i8, ptr %i.g, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !noalias !2296
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2289
  %i.j = add i64 %i.a, 1                          ; 2 uses
  %.not.not.i = icmp eq ptr %i.f, %.sroa.6.0.copyload
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.42.0 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.j, %.lr.ph.i ]
  %i.k = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.k, label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsk_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBI_B4y_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.l = shl nuw i64 %.sroa.5.0.copyload, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !2285
  br label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsk_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBI_B4y_EE0E0E0ECsa5QsYiPB8Gl_5image.exit

_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsk_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBI_B4y_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.42.0, ptr %.sroa.01.0.copyload, align 8, !noalias !2285
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertENvMs1s_NtCs53gkmrwjETj_4tiff4tagsNtB1U_12SampleFormat19from_u16_exhaustiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callB2k_NCINvMsk_B12_INtB12_3VecB2k_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %.sroa.4.0.copyload4 = ptrtoaddr ptr %.sroa.4.0.copyload to i64 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.6.0.copyload3 = ptrtoaddr ptr %.sroa.6.0.copyload to i64 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.not.not12.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload
  br i1 %.not.not12.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = add i64 %.sroa.6.0.copyload3, -2
  %i.b = sub i64 %i.a, %.sroa.4.0.copyload4       ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add nuw i64 %i.c, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 30
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.e = shl i64 %.sroa.42.0.copyload, 2          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.6.0.copyload3, -2
  %i.g = sub i64 %i.f, %.sroa.4.0.copyload4       ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = and i64 %i.h, -4
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 %i.i
  %scevgep5 = getelementptr i8, ptr %i.k, i64 4
  %i.l = and i64 %i.g, -2
  %i.m = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.l
  %scevgep6 = getelementptr i8, ptr %i.m, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep6
  %bound1 = icmp ult ptr %.sroa.4.0.copyload, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.n = add i64 %.sroa.42.0.copyload, %n.vec     ; 2 uses
  %i.o = shl i64 %n.vec, 1
  %i.p = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = add i64 %.sroa.42.0.copyload, %index     ; 2 uses
  %i.r = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !2297, !noalias !2300 ; 3 uses
  %wide.load7 = load <4 x i16>, ptr %i.s, align 2, !alias.scope !2297, !noalias !2300 ; 3 uses
  %i.t = add <4 x i16> %wide.load, splat (i16 -1)
  %i.u = add <4 x i16> %wide.load7, splat (i16 -1)
  %i.v = icmp ult <4 x i16> %i.t, splat (i16 4)
  %i.w = icmp ult <4 x i16> %i.u, splat (i16 4)
  %i.x = select <4 x i1> %i.v, <4 x i16> %wide.load, <4 x i16> splat (i16 5)
  %i.y = select <4 x i1> %i.w, <4 x i16> %wide.load7, <4 x i16> splat (i16 5)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.q
  %i.aa = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.q
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %interleaved.vec = shufflevector <4 x i16> %i.x, <4 x i16> %wide.load, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.z, align 2, !alias.scope !2304, !noalias !2306
  %interleaved.vec8 = shufflevector <4 x i16> %i.y, <4 x i16> %wide.load7, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec8, ptr %i.ab, align 2, !alias.scope !2304, !noalias !2306
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  %.ph11 = phi ptr [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %i.ad = phi i64 [ %i.aj, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i ], [ %.ph11, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noalias !2300, !noundef !12 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %.off.i.i.i.i = add i16 %i.af, -1
  %switch.i.i.i.i = icmp ult i16 %.off.i.i.i.i, 4
  %.sroa.0.0.i.i.i.i = select i1 %switch.i.i.i.i, i16 %i.af, i16 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad ; 2 uses
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.ah, align 2, !noalias !2306
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 %i.af, ptr %i.ai, align 2, !noalias !2306
  %i.aj = add i64 %i.ad, 1                        ; 2 uses
  %.not.not.i = icmp eq ptr %i.ag, %.sroa.6.0.copyload
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2314

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.sroa.42.0 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %i.aj, %.lr.ph.i ]
  %i.ak = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.ak, label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatuNvMs1s_B2C_B2A_19from_u16_exhaustiveNCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.al = shl nuw i64 %.sroa.5.0.copyload, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 2) #33, !noalias !2315
  br label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatuNvMs1s_B2C_B2A_19from_u16_exhaustiveNCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit

_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatuNvMs1s_B2C_B2A_19from_u16_exhaustiveNCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.42.0, ptr %.sroa.01.0.copyload, align 8, !noalias !2300
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedINtNtNtB15_8adapters5chain5ChainBI_INtNtNtB17_5array4iter8IntoIterhKj2_EEE0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %.not.not = icmp eq ptr %i.e, %i.c
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !12
  invoke void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB1Y_9into_iter8IntoIterhEINtNtNtBb_5array4iter8IntoIterhKj2_EEE0E0INtB7_5FnMutTuhEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef %i.g)
          to label %bb.b unwind label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2318
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.m, align 8, !alias.scope !2321, !noundef !12 ; 2 uses
  %i.n = icmp eq i64 %.val6, 0
  br i1 %i.n, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val5 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %.val6, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2324
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsdsTQD3x2eOp_3exr5block6reader22OnProgressChunksReaderINtB6_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuENtB6_12ChunksReader19decompress_parallelNCINvMNtNtNtBa_5image4read5imageINtB37_9ReadImageB2i_INtNtB39_6layers19ReadFirstValidLayerINtNtB39_17specific_channels13CollectPixelsINtB4w_19ReadOptionalChannelINtB4w_19ReadRequiredChannelIB5D_IB5D_NtNtB3b_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB7z_14OpenExrDecoderB1v_ENtNtNtB7D_2io7decoder12ImageDecoder10read_images0_0NCB7u_s1_0EEE11from_chunksINtB3b_5LayerINtB3b_16SpecificChannelsB6T_TNtNtNtBa_4meta9attribute18ChannelDescriptionBaA_BaA_INtNtB1C_6option6OptionBaA_EEEEB1v_Es_0EB7D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4400) %1, i1 noundef zeroext %2, ptr noalias nofree noundef align 8 dereferenceable(1376) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i:
end_hunk_1
