Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvMNtNtCsdsTQD3x2eOp_3exr5block6readerINtB3_6ReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13filter_chunksNCINvMNtNtNtB7_5image4read5imageINtB1W_9ReadImageFdEuINtNtB1Y_6layers19ReadFirstValidLayerINtNtB1Y_17specific_channels13CollectPixelsINtB3l_19ReadOptionalChannelINtB3l_19ReadRequiredChannelIB4s_IB4s_NtNtB20_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB6o_14OpenExrDecoderBP_ENtNtNtB6s_2io7decoder12ImageDecoder10read_images0_0NCB6j_s1_0EEE11from_chunksINtB20_5LayerINtB20_16SpecificChannelsB5I_TNtNtNtB7_4meta9attribute18ChannelDescriptionB9o_B9o_INtNtBW_6option6OptionB9o_EEEEBP_E0EB6s_:bb.a
_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit
  %i.cn = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k, i64 noundef %.sroa.8152.0236, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ah:                                            ; preds = %_RNCINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB5_9ReadImageFdEuINtNtB7_6layers19ReadFirstValidLayerINtNtB7_17specific_channels13CollectPixelsINtB1H_19ReadOptionalChannelINtB1H_19ReadRequiredChannelIB2N_IB2N_NtNtB9_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4I_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4M_2io7decoder12ImageDecoder10read_images0_0NCB4D_s1_0EEE11from_chunksINtB9_5LayerINtB9_16SpecificChannelsB42_TNtNtNtBb_4meta9attribute18ChannelDescriptionB8o_B8o_INtNtB5P_6option6OptionB8o_EEEEB5I_E0B4M_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097)
  %i.co = icmp eq ptr %i.bz, %.sroa.09.sroa.4.0.copyload
  br i1 %i.co, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, label %.lr.ph

bb.ai:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !7 ; 2 uses
  %i.cr = icmp ult i64 %.sroa.13.0234, %i.cq
  br i1 %i.cr, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !7, !noundef !7
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.13.0234
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !7
  %i.cw = load i64, ptr %i.as, align 8, !alias.scope !113, !noundef !7 ; 3 uses
  %i.cx = load i64, ptr %i.h, align 8, !range !11, !alias.scope !113, !noundef !7
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.ak, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs3s7QNvxKlGF_10num_bigint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #38
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ak, %bb.aj
  %i.cz = load ptr, ptr %i.ar, align 8, !alias.scope !113, !nonnull !7, !noundef !7
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cw
  store i64 %i.cv, ptr %i.da, align 8
  %i.db = add i64 %i.cw, 1
  store i64 %i.db, ptr %i.as, align 8, !alias.scope !113
  br label %bb.ah

bb.al:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.13.0234, i64 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %bb.l
  unreachable

bb.an:                                            ; preds = %bb.ae, %bb.ac
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097)
  %i.dc = icmp eq i64 %.sroa.09.sroa.3.0.copyload, 0
  br i1 %i.dc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.sroa.0.0.copyload) ]
  %i.dd = mul nuw i64 %.sroa.09.sroa.3.0.copyload, 48
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.sroa.0.0.copyload, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !114
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit, %bb.h
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144 unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread, %.body, %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144: ; preds = %bb.ap, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4344) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144
  %i.df = landingpad { ptr, i32 }
          cleanup
  %.val2.i145 = load i8, ptr %i.l, align 8, !range !12, !alias.scope !115, !noundef !7
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val3.i146 = load ptr, ptr %i.dg, align 8, !alias.scope !115
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val2.i145, ptr %.val3.i146) #37
          to label %common.resume unwind label %bb.av

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144
  %.val.i147 = load i8, ptr %i.l, align 8, !range !12, !alias.scope !115, !noundef !7
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val1.i148 = load ptr, ptr %i.dh, align 8, !alias.scope !115 ; 4 uses
  %i.di = icmp eq i8 %.val.i147, 1
  br i1 %i.di, label %bb.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i148) ]
  %i.dj = ptrtoint ptr %.val1.i148 to i64         ; 2 uses
  %i.dk = and i64 %i.dj, 3
  switch i64 %i.dk, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
    i64 3, label %bb.at
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
    i64 1, label %bb.au
  ], !prof !13

default.unreachable:                              ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.dl = icmp ult ptr %.val1.i148, inttoptr (i64 188978561024 to ptr)
  %i.dm = and i64 %i.dj, 1095216660480
  %i.dn = icmp ne i64 %i.dm, 1095216660480
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.assume(i1 %i.dn)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.do = getelementptr i8, ptr %.val1.i148, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !116, !noalias !115
  store i8 3, ptr %i.b, align 8, !alias.scope !116, !noalias !115
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dp)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.as, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.av:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.aw, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %i.df, %bb.ar ], [ %.pn118208, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209: ; preds = %bb.ap, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %.body, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209
  %.pn118208 = phi { ptr, i32 } [ %lpad.thr_comm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209 ], [ %.pn116, %.body ]
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4296) %1)
          to label %bb.aw unwind label %bb.aq

bb.aw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread
  %.val127 = load i8, ptr %i.l, align 8, !range !12, !noundef !7
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val128 = load ptr, ptr %i.dr, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val127, ptr %.val128) #37
          to label %common.resume unwind label %bb.aq
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.520.0..sroa_idx, i64 96, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..sroa_idx, i64 16, i1 false)
  %i.f = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 16
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.9.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.520.0..sroa_idx, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145
  %i.g = load ptr, ptr %.sroa.10.0..sroa_idx15, align 16, !alias.scope !147, !noalias !146, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.j = load i8, ptr %i.i, align 8, !range !14, !alias.scope !147, !noalias !146, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  invoke fastcc void @_RNvMNtCsdsTQD3x2eOp_3exr5blockNtB2_17UncompressedBlock16decompress_chunk(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4296) %i.h, i1 noundef zeroext %i.k)
          to label %bb.d unwind label %bb.b, !noalias !145

bb.b:                                             ; preds = %bb.k, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.g, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.p, %bb.h ], [ %i.p, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.m = load ptr, ptr %.sroa.10.0..sroa_idx15, align 16, !alias.scope !150, !noalias !146, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !151
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.c:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.10.0..sroa_idx15) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.n, !noalias !146

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145
  invoke void @_RNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.e unwind label %bb.b, !noalias !146

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.b, align 8, !range !15, !alias.scope !152, !noalias !145, !noundef !7
  switch i64 %i.o, label %bb.f [
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
    i64 -1, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.i unwind label %bb.g, !noalias !146

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !153, !noalias !145 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %.body.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !154, !noalias !145, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !155
  br label %.body.i.i.i

bb.i:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !153, !noalias !145 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !154, !noalias !145, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !156
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.k:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.b, !noalias !146

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.v = load ptr, ptr %.sroa.10.0..sroa_idx15, align 16, !alias.scope !159, !noalias !146, !nonnull !7, !noundef !7
  %3 = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !160
  %i.w = icmp eq i64 %3, 1
  br i1 %i.w, label %bb.l, label %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.10.0..sroa_idx15) #38
          to label %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i unwind label %bb.m, !noalias !146

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.body unwind label %bb.n, !noalias !146

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.m, %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !146
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.c, %.body.i.i.i
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.body unwind label %bb.n, !noalias !146

_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.x, %bb.m ], [ %eh.lpad-body.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.aa = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ab = invoke { ptr, ptr } @_RNvNvNtCsaKJjC64KgbL_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aa)
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.q:                                             ; preds = %_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit

bb.r:                                             ; preds = %.body
  %i.ad = extractvalue { ptr, ptr } %i.ab, 0      ; 6 uses
  %i.ae = extractvalue { ptr, ptr } %i.ab, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load ptr, ptr %i.af, align 32, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.t, label %bb.s

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.x, %bb.s, %bb.q
  ret void

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !7, !align !16, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.ak(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXNtCsPkZ9TkQnmq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit unwind label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCsPkZ9TkQnmq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.t
  %i.an = load ptr, ptr %i.ae, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit
  invoke void %i.an(ptr noundef nonnull %i.ad)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core6unwind12AbortIfPanicECsa5QsYiPB8Gl_5image.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.x
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !17, !invariant.load !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image.exit

bb.y:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %common.resume, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !17, !invariant.load !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.ay) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.z, %bb.u, %bb.y, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.y ], [ %i.at, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.az, %bb.z ], [ %i.al, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image(ptr nonnull %i.ad, ptr nonnull %i.ae) #37
          to label %common.resume unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [640 x i8], align 128             ; 19 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [384 x i8], align 128             ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [104 x i8], align 16              ; 14 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [88 x i8], align 8                ; 16 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.539 = alloca [27 x i8], align 1          ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = invoke noundef i64 @_RNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
          to label %bb.b unwind label %bb.i

.body58:                                          ; preds = %bb.bh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit, %bb.i, %bb.c, %.thread150
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn104153, %.thread150 ], [ %i.ae, %bb.c ], [ %i.as, %bb.i ], [ %.pn48.pn.pn.pn, %bb.bh ], [ %.pn48.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsPkZ9TkQnmq_10rayon_core17ThreadPoolBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #37
          to label %bb.br unwind label %bb.bl

bb.b:                                             ; preds = %bb.a
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 65535) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ad = load i8, ptr %i.ac, align 1, !range !14, !noundef !7
  store i8 %i.ad, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !227
  store i64 0, ptr %i.f, align 8, !alias.scope !228, !noalias !227
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !alias.scope !228, !noalias !227
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i, i8 0, i64 16, i1 false), !alias.scope !228, !noalias !227
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !228, !noalias !227
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !228, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !227
  store ptr %i.aa, ptr %i.e, align 8, !noalias !229
  %.sroa.4.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx84, align 8, !noalias !229
  %.sroa.5.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %..i, ptr %.sroa.5.0..sroa_idx85, align 8, !noalias !229
  invoke void @_RNvXs_NvNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect14default_extendTINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4R_8Registry3newNtB4R_12DefaultSpawnE0EE6extendCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.c, !noalias !227

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsa5QsYiPB8Gl_5image:bb.a
bb.i:                                             ; preds = %bb.a, %bb.bj
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMNtCsPkZ9TkQnmq_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, i64 noundef %..i)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.at, %bb.l ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsPkZ9TkQnmq_10rayon_core8registry10ThreadInfoEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #37
          to label %.thread105 unwind label %bb.bl

bb.l:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.au = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_5BlockNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE3newCsa5QsYiPB8Gl_5image()
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core5sleep5SleepECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #37
          to label %bb.k unwind label %bb.bl

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.539, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.g, align 128
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 0, ptr %i.ba, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %i.au, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store ptr %i.au, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.bb = load <2 x ptr>, ptr %i.aw, align 8
  store ptr null, ptr %i.aw, align 8
  store <2 x ptr> %i.bb, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.bc = load <2 x ptr>, ptr %i.ax, align 8
  store ptr null, ptr %i.ax, align 8
  store <2 x ptr> %i.bc, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.bd = load <2 x ptr>, ptr %i.ay, align 8
  store ptr null, ptr %i.ay, align 8
  store <2 x ptr> %i.bd, ptr %.sroa.9.0..sroa_idx, align 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !233
  %i.be = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #33, !noalias !233 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.p, label %bb.u, !prof !18

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #36
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.g) #37
          to label %.thread105 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.s:                                             ; preds = %.critedge, %bb.t
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.critedge ], [ %i.bi, %bb.t ]
  invoke void @_RNvXs3_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_10TerminatorNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit unwind label %bb.bl

bb.t:                                             ; preds = %bb.aj, %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.be, ptr noundef nonnull align 128 dereferenceable(640) %i.g, i64 640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.be, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.bl = load i64, ptr %i.z, align 8, !range !11, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !7 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 288230376151711744
  call void @llvm.assume(i1 %i.bo)
  %.idx = shl nuw nsw i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx ; 3 uses
  %.sroa.093.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.494.0.copyload = load ptr, ptr %.sroa.494.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 8 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.595.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.494.0.copyload, i64 %.sroa.595.0.copyload ; 3 uses
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.o, align 8
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 11 uses
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bl, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.bp, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.sroa.494.0.copyload, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 11 uses
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.093.0.copyload, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.br, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !234
  %i.bs = icmp eq i64 %i.bn, 0
  br i1 %i.bs, label %.loopexit, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph: ; preds = %bb.u
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.1298.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph, %.backedge
  %i.ce = phi ptr [ %i.bk, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %i.ci, %.backedge ] ; 5 uses
  %i.cf = phi ptr [ %.sroa.494.0.copyload, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %i.cm, %.backedge ] ; 5 uses
  %i.cg = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %.be, %.backedge ] ; 4 uses
  %i.ch = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %i.cq, %.backedge ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 13 uses
  %.sroa.5.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.5.0.copyload13.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx12.i.i.i, align 8, !noalias !235 ; 3 uses
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload13.i.i.i, 2
  br i1 %.not.i.i.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
  %.sroa.7.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.522.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false), !noalias !236
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !236
  %i.cj = icmp eq ptr %i.cf, %i.br
  br i1 %i.cj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.br, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.ch, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ck = load ptr, ptr %i.c, align 8, !alias.scope !240, !noalias !236, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !241
  %i.cl = icmp eq i64 %2, 1
  br i1 %i.cl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #38
          to label %bb.z unwind label %.body56.thread142.loopexit.split-lp

.critedge:                                        ; preds = %.body56.thread142.loopexit, %.body56.thread142.loopexit.split-lp, %bb.as, %bb.av, %bb.am, %bb.bk, %.noexc82, %bb.bo
  %.pn48.pn = phi { ptr, i32 } [ %i.du, %bb.as ], [ %i.es, %.noexc82 ], [ %i.ea, %bb.av ], [ %i.es, %bb.bo ], [ %lpad.thr_comm.split-lp, %bb.bk ], [ %i.dh, %bb.am ], [ %lpad.loopexit, %.body56.thread142.loopexit ], [ %lpad.loopexit.split-lp, %.body56.thread142.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o) #37
          to label %bb.s unwind label %bb.bl

bb.y:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 11 uses
  %i.cn = load ptr, ptr %i.cf, align 8, !noalias !242, !nonnull !7, !noundef !7 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cp = load i8, ptr %i.co, align 8, !range !14, !noalias !242, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1298.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  %i.cq = add i64 %i.cg, 1                        ; 12 uses
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.9.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.cn, ptr %i.m, align 8
  store i8 %i.cp, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cg)
          to label %bb.ab unwind label %bb.bm

.loopexit:                                        ; preds = %.backedge, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.u
  %.lcssa185 = phi i64 [ 0, %bb.u ], [ %i.cq, %.backedge ], [ %i.ch, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.lcssa173 = phi ptr [ %.sroa.494.0.copyload, %bb.u ], [ %i.cm, %.backedge ], [ %i.cf, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.cr = phi ptr [ %i.bk, %bb.u ], [ %i.bp, %.backedge ], [ %i.ci, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ]
  store ptr %i.cr, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %.lcssa173, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %.lcssa185, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cs = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81: ; preds = %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsPkZ9TkQnmq_10rayon_core17ThreadPoolBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  ret void

bb.ab:                                            ; preds = %bb.y
  %i.cu = load <2 x i64>, ptr %1, align 8
  %i.cv = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.cw = atomicrmw add ptr %i.cv, i64 1 monotonic, align 8
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store <2 x i64> %i.cu, ptr %i.l, align 16
  store ptr %i.cn, ptr %i.bw, align 8
  store i8 %i.cp, ptr %i.bx, align 16
  store ptr %i.cy, ptr %i.by, align 8
  store i64 %i.cg, ptr %i.bz, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cz = icmp eq i64 %i.cg, 0
  %i.da = load i8, ptr %i.ca, align 8, !range !14
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 16 dereferenceable(104) %i.l, i64 104, i1 false)
  %i.dc = invoke noundef ptr @_RNvXs0_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree noundef nonnull %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.h)
          to label %bb.be unwind label %.body56.thread142.loopexit ; 2 uses

bb.af:                                            ; preds = %bb.ac
  %i.dd = invoke noundef ptr @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellPNtNtCsPkZ9TkQnmq_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.ag unwind label %bb.bk

.body56.thread142.loopexit:                       ; preds = %bb.ay, %bb.aq, %bb.ai, %bb.ae, %bb.ao, %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  br label %.critedge

.body56.thread142.loopexit.split-lp:              ; preds = %bb.bc, %bb.x, %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry13ThreadBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(104) %i.l)
          to label %bb.aj unwind label %.body56.thread142.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 16 dereferenceable(104) %i.l, i64 104, i1 false)
  invoke void @_RNvXs6_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12WorkerThreadINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr noalias nofree noundef nonnull sret([384 x i8]) align 128 captures(none) dereferenceable(384) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.i)
          to label %bb.ak unwind label %.body56.thread142.loopexit

bb.aj:                                            ; preds = %bb.ah, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.bg unwind label %bb.t

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !243
  %i.df = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #33, !noalias !243 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.al, label %bb.ao, !prof !18

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #36
          to label %.noexc69 unwind label %bb.am

.noexc69:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry12WorkerThreadECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.j) #37
          to label %.critedge unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.df, ptr noundef nonnull align 128 dereferenceable(384) %i.j, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMs8_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12WorkerThread11set_current(ptr noundef nonnull %i.df)
          to label %bb.ap unwind label %.body56.thread142.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.dj = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 520
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !7
  %.not47 = icmp eq i64 %i.dl, 0
  br i1 %.not47, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 512
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %i.do)
          to label %.noexc71 unwind label %.body56.thread142.loopexit

.noexc71:                                         ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.dp = load i64, ptr %i.b, align 8, !range !19, !alias.scope !244, !noundef !7
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.ar, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, !prof !18

bb.ar:                                            ; preds = %.noexc71
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  %i.dr = load ptr, ptr %i.cc, align 8, !alias.scope !244, !nonnull !7, !align !20, !noundef !7
  %i.ds = load i8, ptr %i.cd, align 8, !range !14, !alias.scope !244, !noundef !7
  store ptr %i.dr, ptr %i.a, align 8, !noalias !244
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ds, ptr %i.dt, align 8, !noalias !244
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #36
          to label %bb.at unwind label %bb.as, !noalias !244

bb.as:                                            ; preds = %bb.ar
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.critedge unwind label %bb.au, !noalias !244

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !244
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc71
  %i.dw = load ptr, ptr %i.cc, align 8, !alias.scope !244, !nonnull !7, !align !20, !noundef !7 ; 5 uses
  %i.dx = load i8, ptr %i.cd, align 8, !range !14, !alias.scope !244, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  store i8 1, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  invoke void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.dz)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECsa5QsYiPB8Gl_5image(ptr nonnull %i.dw, i8 %i.dx) #37
          to label %.critedge unwind label %bb.bb

bb.aw:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  %i.eb = trunc nuw i8 %i.dx to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  br i1 %i.eb, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ee = and i64 %i.ed, 9223372036854775807
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ay, !prof !10

bb.ay:                                            ; preds = %bb.ax
  %i.eg = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc75 unwind label %.body56.thread142.loopexit

.noexc75:                                         ; preds = %bb.ay
  br i1 %i.eg, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.noexc75
  store atomic i8 1, ptr %i.ec monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.az, %.noexc75, %bb.ax, %bb.aw
  %i.eh = atomicrmw xchg ptr %i.dw, i32 0 release, align 4
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %bb.ba, label %.backedge, !prof !18

bb.ba:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dw)
          to label %.backedge unwind label %.body56.thread142.loopexit

bb.bb:                                            ; preds = %bb.av
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bc:                                            ; preds = %bb.ap
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #36
          to label %bb.bd unwind label %.body56.thread142.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  unreachable

.backedge:                                        ; preds = %bb.ba, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.be
  %.be = phi i64 [ %i.cq, %bb.be ], [ 1, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ 1, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !245
  %i.ek = icmp eq ptr %i.ci, %i.bp
  br i1 %i.ek, label %.loopexit, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i

bb.be:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not46 = icmp eq ptr %i.dc, null
  br i1 %.not46, label %.backedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.el, align 8
  br label %bb.aj

bb.bg:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXs3_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_10TerminatorNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78 unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.s, %bb.bi
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.bi ], [ %.pn48.pn.pn, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.em = load ptr, ptr %i.t, align 8, !alias.scope !248, !nonnull !7, !noundef !7
  %3 = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !248
  %i.en = icmp eq i64 %3, 1
  br i1 %i.en, label %bb.bh, label %.body58

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
          to label %.body58 unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.ep = load ptr, ptr %i.t, align 8, !alias.scope !251, !nonnull !7, !noundef !7
  %4 = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !noalias !251
  %i.eq = icmp eq i64 %4, 1
  br i1 %i.eq, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81

bb.bj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81 unwind label %bb.i

bb.bk:                                            ; preds = %bb.af
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry13ThreadBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(104) %i.l) #37
          to label %.critedge unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bo, %bb.bn, %bb.bh, %bb.s, %.thread150, %bb.bq, %bb.bp, %.thread105, %bb.bk, %.critedge, %bb.n, %bb.k, %.body58
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bm:                                            ; preds = %bb.y
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cm, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8
  %5 = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !252
  %i.et = icmp eq i64 %5, 1
  br i1 %i.et, label %bb.bn, label %.noexc82

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #38
          to label %.noexc82 unwind label %bb.bl

.noexc82:                                         ; preds = %bb.bn, %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.eu = load ptr, ptr %i.n, align 8, !alias.scope !256, !nonnull !7, !noundef !7
  %6 = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !256
  %i.ev = icmp eq i64 %6, 1
  br i1 %i.ev, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %.noexc82
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #38
          to label %.critedge unwind label %bb.bl

.thread115:                                       ; preds = %.thread105
  br i1 %.sroa.015.0110, label %bb.bp, label %.thread150

.thread105:                                       ; preds = %bb.q, %bb.k, %.thread123
  %.pn48.pn.pn.pn.pn114 = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.ar, %.thread123 ], [ %i.bg, %bb.q ] ; 2 uses
  %.sroa.015.0110 = phi i1 [ true, %bb.k ], [ true, %.thread123 ], [ false, %bb.q ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #37
          to label %.thread115 unwind label %bb.bl

bb.bp:                                            ; preds = %.thread115
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #37
          to label %.thread150 unwind label %bb.bl

bb.bq:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #37
          to label %.thread150 unwind label %bb.bl

.thread150:                                       ; preds = %bb.bp, %.thread115, %bb.bq
  %.pn48.pn.pn.pn.pn.pn104153 = phi { ptr, i32 } [ %i.ah, %bb.bq ], [ %.pn48.pn.pn.pn.pn114, %.thread115 ], [ %.pn48.pn.pn.pn.pn114, %bb.bp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #37
          to label %.body58 unwind label %bb.bl

bb.br:                                            ; preds = %.body58
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB1p_5error5ErrorEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit
    i64 -1, label %bb.c
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.c, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !265 ; 2 uses
  %i.d = icmp eq i64 %.val2.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !266, !nonnull !7, !noundef !7
  %i.f = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !267
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !alias.scope !265 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !266, !nonnull !7, !noundef !7
  %i.i = mul nuw i64 %.val.i, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !268
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #33
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #33
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i

bb.r:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body26.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #33
  br label %.body26.i

.body26.i:                                        ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.r, %.body24.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body24.i ], [ %i.an, %bb.r ], [ %i.an, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val19.i = load ptr, ptr %i.at, align 16, !alias.scope !531, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val20.i = load ptr, ptr %i.au, align 8, !alias.scope !531
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.val19.i, ptr %.val20.i) #37
          to label %.body31.i unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEEECsa5QsYiPB8Gl_5image.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val17.i = load ptr, ptr %i.av, align 16, !alias.scope !531, !noundef !7 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val18.i = load ptr, ptr %i.aw, align 8, !alias.scope !531 ; 6 uses
  %i.ax = icmp eq ptr %.val17.i, null
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i) ]
  %i.ay = load ptr, ptr %.val18.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i28.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.ay(ptr noundef nonnull %.val17.i)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i30.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i30.i: ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i

bb.v:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.body31.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i29.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i29.i: ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #33
  br label %.body31.i

.body31.i:                                        ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i29.i, %bb.v, %.body26.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body26.i ], [ %i.be, %bb.v ], [ %i.be, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i29.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val15.i = load ptr, ptr %i.bk, align 64, !alias.scope !531, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val16.i = load ptr, ptr %i.bl, align 8, !alias.scope !531
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.val15.i, ptr %.val16.i) #37
          to label %common.resume.i unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i30.i, %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val13.i = load ptr, ptr %i.bm, align 64, !alias.scope !531, !noundef !7 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val14.i = load ptr, ptr %i.bn, align 8, !alias.scope !531 ; 6 uses
  %i.bo = icmp eq ptr %.val13.i, null
  br i1 %i.bo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryECsa5QsYiPB8Gl_5image.exit, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %i.bp = load ptr, ptr %.val14.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i33.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i33.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void %i.bp(ptr noundef nonnull %.val13.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i36.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i36.i: ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bu) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryECsa5QsYiPB8Gl_5image.exit

bb.z:                                             ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %common.resume.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i34.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i34.i: ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #33
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i34.i, %bb.z, %.body31.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %i.bv, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i34.i ], [ %.pn8.i, %.body31.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.aa:                                            ; preds = %.body31.i, %.body26.i, %.body24.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque8InjectorNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i, %.body21.i, %.body.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i, %bb.y, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i36.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #33
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsPkZ9TkQnmq_10rayon_core3job7HeapJobNCINvNtBG_5spawn9spawn_jobNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1P_25ParallelBlockDecompressorINtB1P_22OnProgressChunksReaderINtB1P_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0E0EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !551, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !551
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtBJ_25ParallelBlockDecompressorINtBJ_22OnProgressChunksReaderINtBJ_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) #37
          to label %common.resume.i unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !554, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !555
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !558, !nonnull !7, !noundef !7
  %3 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !559
  %i.l = icmp eq i64 %3, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvNtCsPkZ9TkQnmq_10rayon_core5spawn9spawn_jobNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1v_25ParallelBlockDecompressorINtB1v_22OnProgressChunksReaderINtB1v_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0E0ECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvNtCsPkZ9TkQnmq_10rayon_core5spawn9spawn_jobNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1v_25ParallelBlockDecompressorINtB1v_22OnProgressChunksReaderINtB1v_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0E0ECsa5QsYiPB8Gl_5image.exit unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.g, %bb.e, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.f, %bb.e ], [ %i.f, %bb.d ]
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
          to label %common.resume.i unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvNtCsPkZ9TkQnmq_10rayon_core5spawn9spawn_jobNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1v_25ParallelBlockDecompressorINtB1v_22OnProgressChunksReaderINtB1v_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit.i.i, %bb.f
  tail call void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  switch i8 %.0.val, label %bb.b [
    i8 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !562
  store i8 3, ptr %i.a, align 8, !alias.scope !562
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5ImageINtBE_5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB2k_B2k_INtNtB4_6option6OptionB2k_EEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBR_14AttributeValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15ImageAttributesECsa5QsYiPB8Gl_5image.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB28_B28_INtNtB4_6option6OptionB28_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(1184) %0) #37
          to label %bb.d unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15ImageAttributesECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB28_B28_INtNtB4_6option6OptionB28_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(1184) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB28_B28_INtNtB4_6option6OptionB28_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(1184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit4.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit5.i.i unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit4.i.i: ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit6.i.i unwind label %bb.g

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit4.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit5.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit7.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit6.i.i: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit4.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit4.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !12, !alias.scope !579, !noundef !7
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %.body.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit6.i.i
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %.body.i unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit5.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit6.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit7.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit5.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !12, !alias.scope !580, !noundef !7
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionBC_BC_INtNtB4_6option6OptionBC_EEECsa5QsYiPB8Gl_5image.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit7.i.i
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionBC_BC_INtNtB4_6option6OptionBC_EEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit4.i.i, %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit6.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %.pn2.i.i, %bb.d ], [ %.pn2.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit6.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.a) #37
          to label %.body unwind label %bb.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionBC_BC_INtNtB4_6option6OptionBC_EEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionECsa5QsYiPB8Gl_5image.exit7.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.a)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionBC_BC_INtNtB4_6option6OptionBC_EEECsa5QsYiPB8Gl_5image.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.g, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit, !prof !18

bb.e:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !align !20, !noundef !7 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.g, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECsa5QsYiPB8Gl_5image.exit, !prof !18

bb.e:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader22OnProgressChunksReaderINtBE_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4384) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %.val8.i = load i64, ptr %i.c, align 8, !alias.scope !600, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %.val8.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %.val7.i = load ptr, ptr %i.e, align 8, !alias.scope !599, !nonnull !7, !noundef !7
  %i.f = shl nuw i64 %.val8.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !601
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %.val6.i = load i64, ptr %i.g, align 8, !alias.scope !600, !noundef !7 ; 2 uses
  %i.h = icmp eq i64 %.val6.i, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit9.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !599, !nonnull !7, !noundef !7
  %i.j = shl nuw i64 %.val6.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !602
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit9.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %.val3.i = load i8, ptr %i.k, align 8, !range !12, !alias.scope !599, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %.val4.i = load ptr, ptr %i.l, align 8, !alias.scope !599
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val3.i, ptr %.val4.i) #37
          to label %bb.i unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit9.i: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %.val.i = load i8, ptr %i.m, align 8, !range !12, !alias.scope !599, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %.val2.i = load ptr, ptr %i.n, align 8, !alias.scope !599 ; 4 uses
  %i.o = icmp eq i8 %.val.i, 1
  br i1 %i.o, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !599
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.p = ptrtoint ptr %.val2.i to i64             ; 2 uses
  %i.q = and i64 %i.p, 3
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
    i64 1, label %bb.g
  ], !prof !13

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult ptr %.val2.i, inttoptr (i64 188978561024 to ptr)
  %i.s = and i64 %i.p, 1095216660480
  %i.t = icmp ne i64 %i.s, 1095216660480
  tail call void @llvm.assume(i1 %i.r)
  tail call void @llvm.assume(i1 %i.t)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.val2.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !603, !noalias !599
  store i8 3, ptr %i.a, align 8, !alias.scope !603, !noalias !599
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryEECsa5QsYiPB8Gl_5image.exit9.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader25ParallelBlockDecompressorINtBE_22OnProgressChunksReaderINtBE_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4472) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader22OnProgressChunksReaderINtBE_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(4400) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4400
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4400
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit6 unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4416
  invoke void @_RNvXsi_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEENtNtNtBV_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit6: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4416
  invoke void @_RNvXsi_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEENtNtNtBV_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit7 unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !624, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !624
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit unwind label %bb.n

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit6
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit7: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !627, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !627
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit9

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit7
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit9 unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit, %bb.e, %bb.h
  %.pn4 = phi { ptr, i32 } [ %i.o, %bb.h ], [ %.pn2, %bb.e ], [ %.pn2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4440
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core11thread_pool10ThreadPoolECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n) #37
          to label %common.resume unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit9: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1J_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit7, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4440 ; 5 uses
  invoke void @_RNvXs_NtCsPkZ9TkQnmq_10rayon_core11thread_poolNtB4_10ThreadPoolNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit9
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !630, !nonnull !7, !noundef !7
  %3 = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !631
  %i.s = icmp eq i64 %3, 1
  br i1 %i.s, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #38
          to label %common.resume unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !634, !nonnull !7, !noundef !7
  %4 = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !635
  %i.u = icmp eq i64 %4, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core11thread_pool10ThreadPoolECsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core11thread_pool10ThreadPoolECsa5QsYiPB8Gl_5image.exit

bb.m:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.pn4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core11thread_pool10ThreadPoolECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k, %bb.l
  ret void

bb.n:                                             ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4296) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %.val2 = load i8, ptr %i.c, align 8, !range !12, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %.val3 = load ptr, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val2, ptr %.val3) #37
          to label %bb.g unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %.val = load i8, ptr %i.e, align 8, !range !12, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %.val1 = load ptr, ptr %i.f, align 8            ; 4 uses
  %i.g = icmp eq i8 %.val, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.h = ptrtoint ptr %.val1 to i64               ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !638
  store i8 3, ptr %i.a, align 8, !alias.scope !638
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i
  ret void

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !662, !nonnull !7, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !662, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5                   ; 3 uses
  %i.g = icmp eq ptr %.val1.i.i.i, %.val.i.i.i
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %.lr.ph.i.i.i.i

.body.i.i.i:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i.i.i.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !662, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.body.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !662, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !662
  br label %.body.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !666, !noalias !662, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !667
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i.i unwind label %bb.d, !noalias !662

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.q = icmp eq i64 %i.n, %i.f
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.n, %i.f
  br i1 %i.s, label %.body.i.i.i, label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i.i.i.i
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.u = add i64 %.sroa.0.110.i.i.i.i, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !671, !noalias !662, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !672
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i.i.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i.i.i.i unwind label %bb.f, !noalias !662

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i.i
  %i.x = icmp eq i64 %i.u, %i.f
  br i1 %i.x, label %.body.i.i.i, label %.lr.ph12.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !662
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !662, !noundef !7 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEECsa5QsYiPB8Gl_5image.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !662, !nonnull !7, !noundef !7
  %i.ad = shl nuw i64 %i.aa, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !662
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEECsa5QsYiPB8Gl_5image.exit

.body.i:                                          ; preds = %bb.b, %.body.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.h

bb.h:                                             ; preds = %.body.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !659
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.r

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ag)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.f, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, !prof !18

bb.e:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsc_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECsa5QsYiPB8Gl_5image(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.f, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, !prof !18

bb.e:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsc_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !677 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !677, !nonnull !7, !noundef !7
  %i.e = shl nuw i64 %.val2.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !677 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEEECsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !677, !nonnull !7, !noundef !7
  %i.h = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtBJ_25ParallelBlockDecompressorINtBJ_22OnProgressChunksReaderINtBJ_20FilteredChunksReaderINtNtNtB4_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !688, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !688
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !691, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !691
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit3

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit3 unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit3: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkECsa5QsYiPB8Gl_5image.exit, %bb.d
  tail call void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1H_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsPkZ9TkQnmq_10rayon_core17ThreadPoolBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4 = load ptr, ptr %i.b, align 8            ; 6 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.d = load ptr, ptr %.val4, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #33
  br label %.body

.body:                                            ; preds = %bb.e, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load ptr, ptr %i.p, align 8, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8 = load ptr, ptr %i.q, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image(ptr %.val7, ptr %.val8) #37
          to label %.body20 unwind label %bb.r

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load ptr, ptr %i.r, align 8, !noundef !7 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6 = load ptr, ptr %i.s, align 8            ; 6 uses
  %i.t = icmp eq ptr %.val5, null
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.u = load ptr, ptr %.val6, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.u, null
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.u(ptr noundef nonnull %.val5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i19

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i19: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body20, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i18

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i18: ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #33
  br label %.body20

.body20:                                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i18, %bb.i, %.body
  %.pn = phi { ptr, i32 } [ %i.j, %.body ], [ %i.aa, %bb.i ], [ %i.aa, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i18 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val15 = load ptr, ptr %i.ag, align 8, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val16 = load ptr, ptr %i.ah, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.val15, ptr %.val16) #37
          to label %.body25 unwind label %bb.r

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i19, %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val13 = load ptr, ptr %i.ai, align 8, !noundef !7 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val14 = load ptr, ptr %i.aj, align 8          ; 6 uses
  %i.ak = icmp eq ptr %.val13, null
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  %i.al = load ptr, ptr %.val14, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.al, null
  br i1 %.not.i.i22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.al(ptr noundef nonnull %.val13)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i24

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i24: ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.aq) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.body25, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i23

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i23: ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #33
  br label %.body25

.body25:                                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i23, %bb.m, %.body20
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body20 ], [ %i.ar, %bb.m ], [ %i.ar, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i23 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val11 = load ptr, ptr %i.ax, align 8, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val12 = load ptr, ptr %i.ay, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.val11, ptr %.val12) #37
          to label %common.resume unwind label %bb.r

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i24, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsa5QsYiPB8Gl_5image.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val9 = load ptr, ptr %i.az, align 8, !noundef !7 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val10 = load ptr, ptr %i.ba, align 8          ; 6 uses
  %i.bb = icmp eq ptr %.val9, null
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit31, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.bc = load ptr, ptr %.val10, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.bc(ptr noundef nonnull %.val9)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit31, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i30

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i30: ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit31

bb.q:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %common.resume, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i28

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i28: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bn) #33
  br label %common.resume

common.resume:                                    ; preds = %.body25, %bb.q, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bi, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i28 ], [ %.pn2, %.body25 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit31: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit, %bb.p, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i30
  ret void

bb.r:                                             ; preds = %.body20, %.body25, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !700 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !701, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !702
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !700 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !701, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !703
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core11thread_pool10ThreadPoolECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtCsPkZ9TkQnmq_10rayon_core11thread_poolNtB4_10ThreadPoolNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !714, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !714
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !717, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !717
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit1

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core5sleep5SleepECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !720 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEEECsa5QsYiPB8Gl_5image.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !720, !nonnull !7, !noundef !7
  %i.d = shl nuw i64 %.val2.i, 7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 128) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEEECsa5QsYiPB8Gl_5image.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !720 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEEECsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !720, !nonnull !7, !noundef !7
  %i.g = shl nuw i64 %.val.i, 7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 128) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedNtNtCsPkZ9TkQnmq_10rayon_core5sleep16WorkerSleepStateEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry12WorkerThreadECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs7_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !756, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !756
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !760, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !760
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit7

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit7 unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.a, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !764, !nonnull !7, !noundef !7
  %3 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !764
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit7: ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !768, !nonnull !7, !noundef !7
  %4 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !768
  %i.n = icmp eq i64 %4, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit10

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit7
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit10 unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, %bb.f, %bb.i
  %.pn2 = phi { ptr, i32 } [ %i.o, %bb.i ], [ %.pn, %bb.f ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit ]
  invoke void @_RNvXsh_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_8InjectorNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit10: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit7, %bb.h
  invoke void @_RNvXsh_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_8InjectorNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit13 unwind label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, %bb.k
  %.pn4 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %.pn2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !771, !nonnull !7, !noundef !7
  %5 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !771
  %i.r = icmp eq i64 %5, 1
  br i1 %i.r, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit10
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit13: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !774, !nonnull !7, !noundef !7
  %6 = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !774
  %i.v = icmp eq i64 %6, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit15

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit13
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit15

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit15: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit13, %bb.l
  ret void

bb.m:                                             ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, %bb.f, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core3job7JobFifoECsa5QsYiPB8Gl_5image.exit, %bb.j
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry13ThreadBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !22, !alias.scope !819, !noundef !7
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !820 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.e, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !821, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !822
  br label %.body

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !820 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !821, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !823
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !827, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !827
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

bb.g:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit unwind label %bb.o

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f, %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !831, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !831
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit5

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit5 unwind label %bb.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit: ; preds = %.body, %bb.g, %bb.j
  %.pn = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.d, %bb.g ], [ %i.d, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !835, !nonnull !7, !noundef !7
  %3 = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !835
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit5: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !839, !nonnull !7, !noundef !7
  %4 = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !839
  %i.u = icmp eq i64 %4, 1
  br i1 %i.u, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit5
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8 unwind label %bb.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, %bb.i, %bb.m
  %.pn2 = phi { ptr, i32 } [ %i.y, %bb.m ], [ %.pn, %bb.i ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !842, !nonnull !7, !noundef !7
  %5 = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !842
  %i.x = icmp eq i64 %5, 1
  br i1 %i.x, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit5, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !845, !nonnull !7, !noundef !7
  %6 = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !845
  %i.ab = icmp eq i64 %6, 1
  br i1 %i.ab, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit10

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit10: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8, %bb.n
  ret void

bb.o:                                             ; preds = %bb.l, %bb.i, %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, %bb.l
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !23, !noundef !7
  switch i8 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit [
    i8 1, label %bb.b
    i8 2, label %bb.e
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split: ; preds = %bb.g, %bb.d
  %.val.i.i.i.i.sink = phi i64 [ %.val.i.i, %bb.d ], [ %.val.i.i.i.i, %bb.g ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !7
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split, %bb.g, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !862 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %common.resume, label %common.resume.sink.split

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !862 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %bb.f
  %.val2.i.i.i.i.sink = phi i64 [ %.val2.i.i.i.i, %bb.f ], [ %.val2.i.i, %bb.c ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !7
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.i, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !863 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.j, label %common.resume, label %common.resume.sink.split

bb.g:                                             ; preds = %bb.e
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !863 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error20UnsupportedErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !888, !noundef !7 ; 4 uses
  %i.b = icmp ne i8 %i.a, 7
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i8 %i.a, -4
  %i.d = icmp samesign ugt i8 %i.a, 3
  %narrow = select i1 %i.d, i8 %i.c, i8 3
  switch i8 %narrow, label %bb.b [
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit
    i8 1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit
    i8 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.e, align 8, !alias.scope !889 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %common.resume, label %common.resume.sink.split

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !889 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %bb.g, %bb.j
  %.val2.i.i.i.i.sink.i.sink = phi i64 [ %.val2.i.i.i, %bb.g ], [ %.val2.i.i.i.i.i, %bb.j ], [ %.val2.i.i, %bb.c ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.p, %bb.j ], [ %i.f, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.sink.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !7
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.p, %bb.j ], [ %i.l, %bb.g ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split: ; preds = %bb.d, %bb.h, %bb.k
  %.val.i.i.i.i.sink.i.sink = phi i64 [ %.val.i.i.i.i.i, %bb.k ], [ %.val.i.i.i, %bb.h ], [ %.val.i.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.sink.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !7
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split, %bb.k, %bb.h, %bb.e, %bb.d, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  switch i8 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit [
    i8 1, label %bb.f
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !890 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.m, label %common.resume, label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !890 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split

bb.i:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !891 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.q, label %common.resume, label %common.resume.sink.split

bb.k:                                             ; preds = %bb.i
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !891 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !914, !noundef !7
  switch i64 %i.b, label %default.unreachable7 [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsa5QsYiPB8Gl_5image.exit
    i64 1, label %bb.e
    i64 2, label %bb.j
    i64 3, label %bb.b
  ]

default.unreachable7:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
begin_hunk_4_@_RINvYhNtNtCsdsTQD3x2eOp_3exr2io4Data11read_vec_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image:bb.a
  %.not.i = icmp slt i64 %..i, 0
  br i1 %.not.i, label %bb.h, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %..i, 0
  br i1 %i.d, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2480
  %i.e = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %..i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2480 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = ptrtoint ptr %i.e to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %6, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit52, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %bb.f
  ret void

bb.h:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0.ph = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %..i) #36
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.e
  %.sroa.1024.0 = phi i64 [ %i.g, %bb.e ], [ 1, %bb.c ]
  %i.h = inttoptr i64 %.sroa.1024.0 to ptr
  store i64 %..i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %4)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit52, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i
  %.val1021.i = phi i64 [ %.val10.i, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.i ] ; 5 uses
  %i.k = add i64 %.val1021.i, %..i.i
  %..i14.i = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.k) ; 5 uses
  invoke void @_RNvXsb_NtCsdsTQD3x2eOp_3exr2ioINtNtCs4wP2HXfJTCR_5alloc3vec3VechEINtB5_12ResizableVechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %..i14.i, i8 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2482
  %.val13.i = load i64, ptr %i.j, align 8, !alias.scope !2481, !noundef !7 ; 2 uses
  %i.l = icmp ult i64 %..i14.i, %.val1021.i
  %.not.i11 = icmp ugt i64 %..i14.i, %.val13.i
  %or.cond.i = or i1 %i.l, %.not.i11
  br i1 %or.cond.i, label %bb.k, label %bb.j, !prof !31

bb.j:                                             ; preds = %.noexc
  %.val12.i = load ptr, ptr %i.i, align 8, !alias.scope !2481, !nonnull !7, !noundef !7
  %i.m = sub nuw i64 %..i14.i, %.val1021.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.val1021.i
  %i.o = invoke noundef ptr @_RNvXso_NtCslM68MWqqr2K_4lebe2ioINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBw_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtB5_10ReadEndianB1Z_E28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.m)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc12:                                         ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc12
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.o)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !2482 ; 2 uses
  %.not9.i = icmp eq i64 %.pr.i, -1
  br i1 %.not9.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i, label %bb.l

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val1021.i, i64 noundef %..i14.i, i64 noundef %.val13.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #40
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.k
  unreachable

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %.noexc13, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2482
  %.val10.i = load i64, ptr %i.j, align 8, !alias.scope !2481, !noundef !7 ; 3 uses
  %i.p = icmp sgt i64 %.val10.i, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %.val10.i, %2
  br i1 %i.q, label %.lr.ph.i, label %.loopexit52

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i, %bb.j, %.lr.ph.i, %bb.k
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #37
          to label %common.resume unwind label %bb.q

bb.l:                                             ; preds = %.noexc13
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload17 = load i64, ptr %.sroa.8.0..sroa_idx16, align 8, !noalias !2483
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0.copyload19 = load ptr, ptr %.sroa.9.0..sroa_idx18, align 8, !noalias !2483
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload21 = load i64, ptr %.sroa.10.0..sroa_idx20, align 8, !noalias !2483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2482
  store i64 %.pr.i, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0.copyload17, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0.copyload19, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0.copyload21, ptr %.sroa.641.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !2484 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !2485, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2486
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !2484 ; 2 uses
  %i.t = icmp eq i64 %.val.i, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !2485, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2487
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.r, %bb.n ], [ %lpad.loopexit.split-lp9, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

.loopexit52:                                      ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2g_5error5ErrorEE4recvs_0uEs0_0Csa5QsYiPB8Gl_5image(ptr nofree captures(none) %.0.val) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #36
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !2503, !nonnull !7, !noundef !7
  %0 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !2503
  %i.f = icmp eq i64 %0, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !2507, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2507
  %i.h = icmp eq i64 %1, 1
  br i1 %i.h, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !7, !align !16, !noundef !7
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !align !2546, !noundef !7 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  %i.m = load i64, ptr %i.f, align 8, !range !19, !alias.scope !2547, !noundef !7
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2548
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2547, !nonnull !7, !align !16, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !14, !alias.scope !2547, !noundef !7
  store ptr %i.p, ptr %i.d, align 8, !noalias !2548
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.r, ptr %i.s, align 8, !noalias !2548
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36
          to label %bb.d unwind label %bb.c, !noalias !2547

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #37
          to label %common.resume unwind label %bb.e, !noalias !2547

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2547
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ai, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %.body.i ], [ %i.t, %bb.c ], [ %i.cq, %bb.ad ], [ %i.dl, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2547, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !14, !alias.scope !2547, !noundef !7 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ae, align 8
  store ptr %.0.val, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2549, !noundef !7 ; 4 uses
  %i.ah = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2549, !noundef !7
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.l unwind label %bb.h, !noalias !2550

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %1 = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !2551
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #38
          to label %.body.i unwind label %bb.j, !noalias !2549

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2549
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.w, i8 %i.y) #37
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2549, !nonnull !7, !noundef !7
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2549
  %i.ap = add nsw i64 %i.ag, 1                    ; 2 uses
  store i64 %i.ap, ptr %i.af, align 8, !alias.scope !2549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = icmp slt i64 %i.ag, 384307168202282325
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !7 ; 2 uses
  %i.au = icmp ult i64 %i.at, 384307168202282326
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = zext i1 %i.av to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i8 [ %i.aw, %bb.m ], [ 0, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  store atomic i8 %.sroa.0.0.i, ptr %i.ax seq_cst, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br i1 %i.z, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ba = and i64 %i.az, 9223372036854775807
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.bc = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.bc, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ay monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bd = atomicrmw xchg ptr %i.w, i32 0 release, align 4
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.r, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit, !prof !18

bb.r:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.w)
  br label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit

bb.s:                                             ; preds = %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.r
  %i.bg = load atomic i64, ptr %i.k seq_cst, align 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.bi = load atomic i64, ptr %i.bh seq_cst, align 128
  %.unshifted.i = xor i64 %i.bi, %i.bg
  %i.bj = icmp ult i64 %.unshifted.i, 2
  br i1 %i.bj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bl = cmpxchg ptr %i.bk, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit
  %i.bm = load atomic i64, ptr %i.bh seq_cst, align 128
  %i.bn = and i64 %i.bm, 1
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !7, !align !16, !noundef !7 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !range !36, !noundef !7 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.v, %bb.w
  %i.bv = load atomic i64, ptr %i.bt acquire, align 8 ; 3 uses
  switch i64 %i.bv, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.w
    i64 1, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.w:                                             ; preds = %.split.us.i
  call void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bu)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.v, %bb.z
  %i.bw = load atomic i64, ptr %i.bt acquire, align 8 ; 3 uses
  switch i64 %i.bw, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.x
    i64 1, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.x:                                             ; preds = %.split.i
  %i.bx = call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.by = extractvalue { i64, i32 } %i.bx, 0      ; 3 uses
  %i.bz = extractvalue { i64, i32 } %i.bx, 1      ; 2 uses
  %i.ca = icmp eq i64 %i.by, %i.bq
  %i.cb = icmp slt i64 %i.by, %i.bq
  %i.cc = icmp samesign ult i32 %i.bz, %i.bs
  %spec.select.i5 = select i1 %i.ca, i1 %i.cc, i1 %i.cb
  br i1 %spec.select.i5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = cmpxchg ptr %i.bt, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cf, i64 3)
  br i1 %i.ce, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.z:                                             ; preds = %bb.x
  %i.cg = call { i64, i32 } @_RNvXs3_NtCsaKJjC64KgbL_3std4timeNtB5_7InstantNtNtNtCsj6eKBz9Db1c_4core3ops5arith3Sub3sub(i64 noundef %i.bq, i32 noundef range(i32 -1, 1000000000) %i.bs, i64 noundef %i.by, i32 noundef %i.bz) ; 2 uses
  %i.ch = extractvalue { i64, i32 } %i.cg, 0
  %i.ci = extractvalue { i64, i32 } %i.cg, 1
  call void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bu, i64 noundef %i.ch, i32 noundef %i.ci)
  br label %.split.i

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.y
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.y ], [ %i.bv, %.split.us.i ], [ %i.bv, %.split.us.i ], [ %i.bw, %.split.i ], [ %i.bw, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
    i64 2, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
    i64 3, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !2552

bb.aa:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.ab:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
  unreachable

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5: ; preds = %bb.y, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2553
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !2553
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.cj = load i64, ptr %i.c, align 8, !range !19, !alias.scope !2554, !noalias !2553, !noundef !7
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6, !prof !18

bb.ac:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2555
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !2554, !noalias !2553, !nonnull !7, !align !16, !noundef !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !14, !alias.scope !2554, !noalias !2553, !noundef !7
  store ptr %i.cm, ptr %i.a, align 8, !noalias !2555
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.co, ptr %i.cp, align 8, !noalias !2555
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #36
          to label %bb.ae unwind label %bb.ad, !noalias !2556

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.af, !noalias !2556

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2556
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6: ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !2554, !noalias !2553, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !range !14, !alias.scope !2554, !noalias !2553, !noundef !7 ; 2 uses
  %i.cw = trunc nuw i8 %i.cv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2553
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !2558, !noalias !2553, !nonnull !7, !noundef !7 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !2558, !noalias !2553, !noundef !7 ; 3 uses
  %.idx = mul nuw nsw i64 %i.db, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx
  %i.dd = icmp eq i64 %i.db, 0
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.df = add nuw nsw i64 %i.di, 1
  %i.dg = icmp eq ptr %i.de, %i.dc
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6, %bb.ag
  %i.dh = phi ptr [ %i.de, %bb.ag ], [ %i.cz, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6 ] ; 2 uses
  %i.di = phi i64 [ %i.df, %bb.ag ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2559, !noalias !2560, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.dk, %i.i
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE6removeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cx, i64 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81)
          to label %._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i unwind label %bb.ai, !noalias !2553

._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i: ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.da, align 8, !noalias !2553
  br label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i

._crit_edge:                                      ; preds = %bb.ag, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6
  store ptr null, ptr %i.b, align 8, !alias.scope !2557, !noalias !2553
  br label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.ct, i8 %i.cv) #37
          to label %common.resume unwind label %bb.ap, !noalias !2553

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i: ; preds = %._crit_edge, %._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i
  %i.dm = phi i64 [ %.pre.i, %._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i ], [ %i.db, %._crit_edge ] ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 384307168202282326
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !2553, !noundef !7 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = zext i1 %i.ds to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i
  %.sroa.0.0.i9 = phi i8 [ %i.dt, %bb.aj ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i ]
  store atomic i8 %.sroa.0.0.i9, ptr %i.ax seq_cst, align 8, !noalias !2553
  %.sroa.0.0.copyload1 = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2553
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  br i1 %i.cw, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2553
  %i.dw = and i64 %i.dv, 9223372036854775807
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.dy = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38, !noalias !2553
  br i1 %i.dy, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, label %bb.an

bb.an:                                            ; preds = %bb.am
  store atomic i8 1, ptr %i.du monotonic, align 4, !noalias !2553
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.dz = atomicrmw xchg ptr %i.ct, i32 0 release, align 4, !noalias !2553
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.ao, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit, !prof !18

bb.ao:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ct), !noalias !2553
  br label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit

bb.ap:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2553
  unreachable

_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, %bb.ao
  %.not1 = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not1, label %bb.as, label %bb.aq, !prof !18

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.aq:                                            ; preds = %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %2 = atomicrmw sub ptr %.sroa.0.0.copyload1, i64 1 release, align 8, !noalias !2561
  %i.ec = icmp eq i64 %2, 1
  br i1 %i.ec, label %bb.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.as:                                            ; preds = %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsdsTQD3x2eOp_3exr5blockNtB2_17UncompressedBlock16decompress_chunk(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4296) %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.661 = alloca [24 x i8], align 8          ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4280
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2578, !noundef !7 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 3                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %.sink12.i = select i1 %i.k, i64 %i.m, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !7 ; 2 uses
  %i.p = icmp ult i64 %i.o, %.sink12.i
  br i1 %i.p, label %bb.b, label %bb.f

bb.a:                                             ; preds = %bb.t, %bb.p, %bb.n, %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit
  %.sroa.090.1 = phi i8 [ 1, %bb.n ], [ %.sroa.090.2, %bb.t ], [ %.sroa.090.2, %bb.p ], [ 1, %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit ]
  %.sroa.092.1 = phi i8 [ 1, %bb.n ], [ %.sroa.092.2, %bb.t ], [ %.sroa.092.2, %bb.p ], [ 1, %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit ]
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load i64, ptr %1, align 8, !range !24, !noundef !7 ; 2 uses
  %i.s = xor i64 %i.r, -9223372036854775808
  %i.t = icmp slt i64 %i.r, 0
  %i.u = select i1 %i.t, i64 %i.s, i64 3
  switch i64 %i.u, label %bb.al [
    i64 0, label %bb.am
    i64 1, label %bb.an
  ]

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink13.i = select i1 %i.k, ptr %i.w, ptr %i.x
  %i.y = getelementptr inbounds nuw [1424 x i8], ptr %.sink13.i, i64 %i.o ; 6 uses
  %i.z = getelementptr i8, ptr %i.y, i64 1408     ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !range !24, !alias.scope !2579, !noundef !7 ; 2 uses
  %i.ab = xor i64 %i.aa, -9223372036854775808
  %i.ac = icmp slt i64 %i.aa, 0
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 3
  switch i64 %i.ad, label %bb.h [
    i64 0, label %switch.lookup
    i64 1, label %bb.c
  ]

switch.lookup:                                    ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %i.y, i64 1020
  %.val = load i32, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !2579, !noundef !7
  %i.ah = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ag, i32 %.val) ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.aj, align 8, !alias.scope !2579
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2579
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2579
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2579
  br label %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit

bb.d:                                             ; preds = %switch.lookup
  %.val161 = load i32, ptr %i.z, align 8
  %i.ak = zext nneg i32 %.val161 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_22OnProgressChunksReaderINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuENtNtNtNtB1H_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image, i64 %i.ak
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.al = extractvalue { i32, i1 } %i.ah, 0
  %i.am = sdiv i32 %i.al, %switch.ext             ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = zext nneg i32 %i.am to i64
  br label %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit

bb.f:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ap, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @49, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.5104.sroa.4.0..sroa.5104.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.5104.sroa.4.0..sroa.5104.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.m, %bb.h, %bb.f
  store i64 -1, ptr %0, align 8
  %i.aq = load i64, ptr %1, align 8, !range !24, !noundef !7 ; 2 uses
  %i.ar = xor i64 %i.aq, -9223372036854775808
  %i.as = icmp slt i64 %i.aq, 0
  %i.at = select i1 %i.as, i64 %i.ar, i64 3
  switch i64 %i.at, label %bb.y [
    i64 0, label %bb.ab
    i64 1, label %bb.af
  ]

bb.h:                                             ; preds = %bb.d, %switch.lookup, %bb.b
  %.sroa.16.0.ph = phi i64 [ ptrtoint (ptr @82 to i64), %switch.lookup ], [ ptrtoint (ptr @67 to i64), %bb.b ], [ ptrtoint (ptr @83 to i64), %bb.d ]
  %.sroa.5170.0.ph = phi i64 [ 2, %switch.lookup ], [ 1, %bb.b ], [ 2, %bb.d ]
  %.sink1.i.ph = phi i64 [ 14, %switch.lookup ], [ 27, %bb.b ], [ 23, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5170.0.ph, ptr %i.au, align 8
  %.sroa.0114.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.0114.sroa.4.0..sroa_idx, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0.ph, ptr %.sroa.4115.0..sroa_idx, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink1.i.ph, ptr %.sroa.5116.0..sroa_idx, align 8
  br label %bb.g

_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit: ; preds = %bb.c, %bb.e
  %.sroa.16.0 = phi i64 [ %.sroa.7.0.copyload.i, %bb.c ], [ 0, %bb.e ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.6.0.copyload.i, %bb.c ], [ %i.ao, %bb.e ]
  %.sroa.5170.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.c ], [ 0, %bb.e ]
  %.sink1.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.c ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.5170.0, ptr %i.b, align 8
  %.sroa.016.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.016.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.16.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sink1.i, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header36get_absolute_block_pixel_coordinates(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.i unwind label %bb.a

bb.i:                                             ; preds = %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = load i64, ptr %i.h, align 8, !range !9, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0117.0.copyload = load i64, ptr %i.aw, align 8 ; 5 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4118.0.copyload = load i64, ptr %.sroa.4118.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5119.0.copyload = load i32, ptr %.sroa.5119.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.6120.0.copyload = load i32, ptr %.sroa.6120.0..sroa_idx, align 4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.ax, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0117.0.copyload, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4118.0.copyload, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.5119.0.copyload, ptr %.sroa.6134.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.6120.0.copyload, ptr %.sroa.7135.0..sroa_idx, align 4
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 1384
  %i.az = load i64, ptr %i.ay, align 8, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 1392
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !7
  %i.bc = icmp ugt i64 %.sroa.0117.0.copyload, %i.az
  %i.bd = icmp ugt i64 %.sroa.4118.0.copyload, %i.bb
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = sext i32 %.sroa.5119.0.copyload to i64
  %i.bf = sext i32 %.sroa.6120.0.copyload to i64
  %i.bg = add i64 %.sroa.0117.0.copyload, %i.be
end_hunk_4
begin_hunk_5_@_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_:bb.a

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit74.i: ; preds = %.noexc70.i
  %i.bd = icmp ult i64 %.sroa.02.011.i.i, %.sink12.i.i
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.ab, align 8, !alias.scope !2627, !noalias !2613, !noundef !7 ; 2 uses
  %i.bf = icmp ugt i64 %i.be, 3                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !7
  %i.bi = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sink13.i71.i = select i1 %i.bf, ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i
  %.sink12.i72.i = select i1 %i.bf, i64 %i.bi, i64 %i.be ; 2 uses
  %i.bj = icmp ult i64 %.sroa.02.011.i.i, %.sink12.i72.i
  br i1 %i.bj, label %bb.w, label %bb.x

.loopexit93.i:                                    ; preds = %_RNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference0B8_.exit.thread.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2613
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 11, ptr %i.bk, align 1, !noalias !2613
  store i8 0, ptr %i.f, align 8, !noalias !2613
  invoke void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newReEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 44)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2613

bb.q:                                             ; preds = %.loopexit93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2613
  %.sroa.548.8.copyload.i = load i64, ptr %i.g, align 8, !noalias !2613
  %.sroa.749.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.749.8..sroa_idx.i, i64 40, i1 false), !noalias !2621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2613
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.bl, align 8, !alias.scope !2612
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.548.8.copyload.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !alias.scope !2612
  store i64 2, ptr %0, align 8, !alias.scope !2612
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4344) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.r, !noalias !2613

bb.r:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 4296
  %.val2.i.i = load i8, ptr %i.bn, align 8, !range !12, !alias.scope !2628, !noalias !2613, !noundef !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 4304
  %.val3.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !2628, !noalias !2613
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val2.i.i, ptr %.val3.i.i) #37
          to label %common.resume.i unwind label %bb.v, !noalias !2613

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 4296
  %.val.i75.i = load i8, ptr %i.bp, align 8, !range !12, !alias.scope !2628, !noalias !2613, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 4304
  %.val1.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !2628, !noalias !2613 ; 4 uses
  %i.br = icmp eq i8 %.val.i75.i, 1
  br i1 %i.br, label %bb.s, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preferenceB6_.exit

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2629
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.bs = ptrtoint ptr %.val1.i.i to i64          ; 2 uses
  %i.bt = and i64 %i.bs, 3
  switch i64 %i.bt, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i76.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i76.i
    i64 1, label %bb.u
  ], !prof !13

bb.t:                                             ; preds = %bb.s
  %i.bu = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bv = and i64 %i.bs, 1095216660480
  %i.bw = icmp ne i64 %i.bv, 1095216660480
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.assume(i1 %i.bw)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i76.i

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !2630, !noalias !2629
  store i8 3, ptr %i.a, align 8, !alias.scope !2630, !noalias !2629
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by), !noalias !2613
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i76.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i76.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2629
  br label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preferenceB6_.exit

bb.v:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2613
  unreachable

bb.w:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2613
  invoke void @_RNvXs5_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 1)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2613

bb.x:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit74.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.011.i.i, i64 noundef %.sink12.i72.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #36
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2613

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw [1424 x i8], ptr %.sink13.i71.i, i64 %.sroa.02.011.i.i
  %i.cb = invoke { i64, i64 } @_RNvMs8_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_11ChannelList21find_index_of_channel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %bb.ab unwind label %bb.aa, !noalias !2613

bb.aa:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body.i unwind label %bb.ac, !noalias !2613

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit80.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2613

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit80.i: ; preds = %bb.ab
  %i.cd = extractvalue { i64, i64 } %i.cb, 0
  %i.ce = icmp eq i64 %i.cd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4360) %0, ptr noundef nonnull align 8 dereferenceable(4344) %i.j, i64 4344, i1 false), !noalias !2621
  %i.cf = zext i1 %i.ce to i8
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4344
  store i64 %.sroa.02.011.i.i, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !2612
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4352
  store i8 %i.cf, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !2612
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4353
  store i8 2, ptr %.sroa.639.0..sroa_idx.i, align 1, !alias.scope !2612
  br label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preferenceB6_.exit

bb.ac:                                            ; preds = %bb.aa, %.body.i
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2613
  unreachable

_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preferenceB6_.exit: ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i76.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2613
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RNvMNtNtCsdsTQD3x2eOp_3exr5block6readerINtB2_6ReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE7headersCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4344) %0) unnamed_addr #11 {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4280
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2633, !noundef !7 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink13.i = select i1 %i.c, ptr %i.e, ptr %i.h
  %.sink12.i = select i1 %i.c, i64 %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sink13.i, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sink12.i, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !2654, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2654
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4
  %i.m = phi ptr [ %i.f, %.lr.ph ], [ %i.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.o = load i64, ptr %i.i, align 8, !noundef !7
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 %i.o acq_rel acquire, align 8
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.w = atomicrmw xchg ptr %i.v, i32 1 release, align 4
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !2659, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !2659
  %i.z = icmp eq i64 %2, 1
  br i1 %i.z, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4 unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aa = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.v)
          to label %bb.f unwind label %bb.b       ; 0 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ad = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit, %bb.c
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertE32forget_allocation_drop_remainingCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #12 {
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.a, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE18disconnect_sendersCsa5QsYiPB8Gl_5image(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 1 seq_cst, align 8
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %i.h = load i64, ptr %i.b, align 8, !range !19, !alias.scope !2665, !noundef !7
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, !prof !18

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2666
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2665, !nonnull !7, !align !16, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !14, !alias.scope !2665, !noundef !7
  store ptr %i.k, ptr %i.a, align 8, !noalias !2666
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.m, ptr %i.n, align 8, !noalias !2666
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #36
          to label %bb.e unwind label %bb.d, !noalias !2665

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume.i unwind label %bb.f, !noalias !2665

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2665
  unreachable

common.resume.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.loopexit.split-lp2, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2665, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !14, !alias.scope !2665, !noundef !7 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2667, !nonnull !7, !noundef !7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2667, !noundef !7 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !2667, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !noalias !2667
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.g, label %.noexc5.i

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  invoke fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v) #41
          to label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !2667, !nonnull !7, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2667, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !noalias !2667
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.h, label %.noexc5.i

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.am = icmp eq ptr %i.ac, %i.aa
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.aj)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %._crit_edge.i.i
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.r, i8 %i.t) #37
          to label %common.resume.i unwind label %bb.o

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i: ; preds = %._crit_edge.i.i
  %i.ao = load i64, ptr %i.y, align 8, !noundef !7 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !7 ; 2 uses
  %i.at = icmp ult i64 %i.as, 384307168202282326
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.as, 0
  %i.av = zext i1 %i.au to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %.sroa.0.0.i = phi i8 [ %i.av, %bb.i ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i8 %.sroa.0.0.i, ptr %i.aw seq_cst, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br i1 %i.u, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.az = and i64 %i.ay, 9223372036854775807
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.bb = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.bb, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.ax monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bc = atomicrmw xchg ptr %i.r, i32 0 release, align 4
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.n, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !prof !18
end_hunk_5
begin_hunk_6_@_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image:bb.a
  %.not = icmp eq i32 %i.be, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !2732
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2732
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8
  %i.bg = getelementptr inbounds nuw [88 x i8], ptr %i.bf, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !2733
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %.sroa.0.02.i.i7 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bl, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2733
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10: ; preds = %.lr.ph.i.i6
  %.not.i.i.i11 = icmp eq i32 %.sroa.0.02.i.i7, 0
  br i1 %.not.i.i.i11, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10
  %i.bm = mul nuw i32 %.sroa.0.02.i.i7, %.sroa.0.02.i.i7 ; 2 uses
  %xtraiter120 = and i32 %i.bm, 7                 ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i7, 3
  br i1 %i.bn, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter124 = and i32 %i.bm, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter125 = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter125.next.7, %.lr.ph.i.i.i14 ]
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  call void @llvm.x86.sse2.pause(), !noalias !2733
  %niter125.next.7 = add i32 %niter125, 8         ; 2 uses
  %niter125.ncmp.7 = icmp eq i32 %niter125.next.7, %unroll_iter124
  br i1 %niter125.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14
  %lcmp.mod122.not = icmp eq i32 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod123 = icmp ne i32 %xtraiter120, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter121 = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter121.next, %.lr.ph.i.i.i14.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2733
  %epil.iter121.next = add i32 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i32 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !2697

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bo = add i32 %.sroa.0.02.i.i7, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !2733
  %i.bq = and i64 %i.bp, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bg, align 8, !noalias !2733 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427.0..sroa_idx, i64 72, i1 false)
  %i.bs = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 31
  br i1 %i.bt, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.cc, %bb.s ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !2733
  %i.bx = and i64 %i.bw, 2
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bz = atomicrmw or ptr %i.bv, i64 4 acq_rel, align 8, !noalias !2733
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.cc = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 176 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !noalias !2733
  %i.cg = and i64 %i.cf, 2
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.ci = atomicrmw or ptr %i.ce, i64 4 acq_rel, align 8, !noalias !2733
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.cc, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  %i.cl = atomicrmw or ptr %i.bh, i64 2 acq_rel, align 8, !noalias !2733
  %i.cm = and i64 %i.cl, 4
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.u

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2733
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit

bb.u:                                             ; preds = %bb.t
  %i.co = icmp samesign ult i64 %i.s, 29
  br i1 %i.co, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.cp, %bb.w ], [ %i.bs, %bb.u ] ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cq = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 88 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8, !noalias !2733
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cv = atomicrmw or ptr %i.cr, i64 4 acq_rel, align 8, !noalias !2733
  %i.cw = and i64 %i.cv, 2
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cp, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.t, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i
  %i.cy = icmp eq i64 %.sroa.026.0.copyload, -2
  br i1 %i.cy, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread, label %bb.ao

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit
  %i.cz = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.da = call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.db = extractvalue { i64, i32 } %i.da, 0      ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %.split, label %bb.al

bb.y:                                             ; preds = %.split, %bb.al, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2734
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dd = load i8, ptr %i.o, align 8, !range !12, !noalias !2735, !noundef !7
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i, !prof !10

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.y
  %i.df = call noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !2734 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.df, %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dh = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2734, !noundef !7 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2734
  %.not.i.i.i18 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !18

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2734
  %i.di = call noundef nonnull ptr @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !2734 ; 2 uses
  store ptr %i.di, ptr %i.e, align 8, !noalias !2734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2734
  store ptr %i.g, ptr %i.c, align 8, !noalias !2734
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.di)
          to label %bb.ac unwind label %bb.aa, !noalias !2734

bb.aa:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  %i.dk = load ptr, ptr %i.e, align 8, !alias.scope !2739, !noalias !2734, !nonnull !7, !noundef !7
  %4 = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !2740
  %i.dl = icmp eq i64 %4, 1
  br i1 %i.dl, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.ae, !noalias !2734

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2734
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.dm = load ptr, ptr %i.e, align 8, !alias.scope !2744, !noalias !2734, !nonnull !7, !noundef !7
  %5 = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !2745
  %i.dn = icmp eq i64 %5, 1
  br i1 %i.dn, label %bb.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38, !noalias !2734
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2734
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit

bb.ae:                                            ; preds = %bb.ak, %bb.ab
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2734
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ab, %bb.aa
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.aa ], [ %i.du, %bb.aj ], [ %i.dj, %bb.ab ], [ %i.du, %bb.ak ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.af:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2734
  store ptr %i.dh, ptr %i.d, align 8, !noalias !2734
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store atomic i64 0, ptr %i.dp release, align 8, !noalias !2734
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store atomic ptr null, ptr %i.dq release, align 8, !noalias !2734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2734
  store ptr %i.g, ptr %i.b, align 8, !noalias !2734
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dh)
          to label %bb.ag unwind label %bb.aj, !noalias !2734

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2734
  %i.dr = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2734, !noundef !7 ; 3 uses
  store ptr %i.dr, ptr %i.a, align 8, !noalias !2734
  store ptr %i.dh, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2734
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %6 = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !2746
  %i.dt = icmp eq i64 %6, 1
  br i1 %i.dt, label %bb.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38, !noalias !2734
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2734
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit

bb.aj:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %7 = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !2747
  %i.dv = icmp eq i64 %7, 1
  br i1 %i.dv, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.ae, !noalias !2734

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2g_5error5ErrorEE4recvs_0uEs0_0Csa5QsYiPB8Gl_5image(ptr nonnull %i.f) #41, !noalias !2734
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit

_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2734
  br label %bb.b

.split:                                           ; preds = %bb.x
  %i.dw = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 1000000000
  call void @llvm.assume(i1 %i.dx)
  %.not33 = icmp samesign ult i32 %i.dw, %i.be
  br i1 %.not33, label %bb.y, label %bb.am

bb.al:                                            ; preds = %bb.x
  %.not32 = icmp slt i64 %i.db, %i.cz
  br i1 %.not32, label %bb.y, label %bb.am

bb.am:                                            ; preds = %.split, %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dy, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread, %bb.ao, %bb.am
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.026.0.copyload, %bb.ao ], [ -2, %bb.am ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dz, align 8
  br label %bb.an

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427, i64 72, i1 false)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [72 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !noalias !2776 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !2776
  %i.h = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload38 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx39, i64 72, i1 false)
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.s, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.070.i, 1
  %i.l = and i64 %i.k, 31                         ; 3 uses
  %i.m = icmp eq i64 %i.l, 31
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.n, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !2776

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %i.o = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter107 = and i32 %i.o, 7                  ; 3 uses
  %i.p = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.p, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter111 = and i32 %i.o, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.l, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !2750

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.r = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.y, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.ai, %.loopexit62.i ], [ %i.r, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.s = load atomic i64, ptr %i.d acquire, align 128, !noalias !2776 ; 2 uses
  %i.t = load atomic ptr, ptr %i.f acquire, align 8, !noalias !2776
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %._crit_edge.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.x, %bb.f ] ; 8 uses
  %i.w = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.w, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB28_5error5ErrorEEE13new_zeroed_inCsa5QsYiPB8Gl_5image()
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i
  %i.y = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB28_5error5ErrorEEE13new_zeroed_inCsa5QsYiPB8Gl_5image()
          to label %bb.h unwind label %bb.p, !noalias !2776 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.z = cmpxchg ptr %i.f, ptr null, ptr %i.y release monotonic, align 8, !noalias !2776
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.y, ptr %i.j release, align 8, !noalias !2776
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.ab, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2776
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.y, %bb.i ] ; 3 uses
  %i.ac = add i64 %.sroa.03.070.i, 2
  %i.ad = cmpxchg weak ptr %i.d, i64 %.sroa.03.070.i, i64 %i.ac seq_cst acquire, align 8, !noalias !2776
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.m, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %i.af = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image:bb.a
.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2776
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !2751

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i
  %i.ai = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.aj, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2776
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.l, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.413.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ak = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2776
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit

.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.o
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  %i.al = icmp eq ptr %.sroa.413.0, null
  br i1 %i.al, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit
  %.sroa.017.0.copyload48 = phi i64 [ %.sroa.017.0.copyload44, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41 ], [ %.sroa.017.0.copyload, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ]
  %.sroa.413.147 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41 ], [ %.sroa.413.0, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ]
  %.sroa.9.146 = phi i64 [ 30, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.413.147, i64 8
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.am, i64 %.sroa.9.146 ; 3 uses
  store i64 %.sroa.017.0.copyload48, ptr %i.an, align 8, !noalias !2777
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false), !noalias !2777
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = atomicrmw or ptr %i.ao, i64 1 release, align 8, !noalias !2779 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.ar = load atomic i8, ptr %i.aq seq_cst, align 8, !noalias !2779
  %.not.i.i6 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i6, label %.noexc7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread

.noexc7:                                          ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2779
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  %i.at = load i64, ptr %i.c, align 8, !range !19, !alias.scope !2780, !noalias !2779, !noundef !7
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.s, label %bb.x, !prof !18

bb.s:                                             ; preds = %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2781
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !2780, !noalias !2779, !nonnull !7, !align !16, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !14, !alias.scope !2780, !noalias !2779, !noundef !7
  store ptr %i.aw, ptr %i.a, align 8, !noalias !2781
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ay, ptr %i.az, align 8, !noalias !2781
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36
          to label %bb.u unwind label %bb.t, !noalias !2782

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body.thread29 unwind label %bb.v, !noalias !2782

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2782
  unreachable

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.af, %.noexc6.i.i, %bb.ad, %.lr.ph.i.preheader.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.be, i8 %i.bg) #37
          to label %.body.thread29 unwind label %bb.an, !noalias !2779

bb.x:                                             ; preds = %.noexc7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2780, !noalias !2779, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !14, !alias.scope !2780, !noalias !2779, !noundef !7 ; 2 uses
  %i.bh = trunc nuw i8 %i.bg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2779
  %i.bi = load atomic i8, ptr %i.aq seq_cst, align 8, !noalias !2779
  %.not2.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not2.i.i, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2779
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2783, !noalias !2779, !noundef !7 ; 4 uses
  %i.bm = icmp ult i64 %i.bl, 384307168202282326
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.y
  %i.bo = invoke noundef i64 @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @78)
          to label %.noexc.i.i unwind label %bb.w, !noalias !2779

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !2783, !noalias !2779, !nonnull !7, !noundef !7 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.bl, 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i, %.noexc.i.i
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.cm, %_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.bs = phi ptr [ %i.bt, %_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.bq, %.noexc.i.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  %i.bu = load ptr, ptr %i.bs, align 8, !alias.scope !2784, !noalias !2785, !nonnull !7, !noundef !7 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !2786, !noundef !7
  %.not.i.i.i.i.i = icmp eq i64 %i.bw, %i.bo
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !2784, !noalias !2785, !noundef !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ca = cmpxchg ptr %i.bz, i64 0, i64 %i.by acq_rel acquire, align 8, !noalias !2786
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.aa, label %_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2784, !noalias !2785, !noundef !7 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store atomic ptr %i.cd, ptr %i.cf release, align 8, !noalias !2786
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !2786, !nonnull !7, !noundef !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.cj = atomicrmw xchg ptr %i.ci, i32 1 release, align 4, !noalias !2786
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.ad, label %.noexc6.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cl = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ci)
          to label %.noexc6.i.i unwind label %bb.w, !noalias !2779 ; 0 uses

_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i
  %i.cm = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.cn = icmp eq ptr %i.bt, %i.br
  br i1 %i.cn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph.i.i.i.i

.noexc6.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.co = icmp samesign ult i64 %.sroa.02.010.i.i.i.i, %i.bl
  call void @llvm.assume(i1 %i.co)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE6removeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bj, i64 noundef %.sroa.02.010.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80)
          to label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i unwind label %bb.w, !noalias !2779

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i: ; preds = %.noexc6.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2787, !noalias !2779 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  %i.cp = icmp eq ptr %.pr.i.i, null
  br i1 %i.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i
  %5 = atomicrmw sub ptr %.pr.i.i, i64 1 release, align 8, !noalias !2788
  %i.cq = icmp eq i64 %5, 1
  br i1 %i.cq, label %bb.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.w, !noalias !2779

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNCNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.af, %bb.ae, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2779
  invoke fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bj)
          to label %bb.ag unwind label %bb.w, !noalias !2779

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i
  %i.cr = load i64, ptr %i.bk, align 8, !noalias !2779, !noundef !7 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !2779, !noundef !7 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 384307168202282326
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.cv, 0
  %i.cy = zext i1 %i.cx to i8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0.0.i.i = phi i8 [ %i.cy, %bb.ah ], [ 0, %bb.ag ]
  store atomic i8 %.sroa.0.0.i.i, ptr %i.aq seq_cst, align 8, !noalias !2779
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  br i1 %i.bh, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2779
  %i.db = and i64 %i.da, 9223372036854775807
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %.noexc11, !prof !10

.noexc11:                                         ; preds = %bb.ak
  %i.dd = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.dd, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc11
  store atomic i8 1, ptr %i.cz monotonic, align 4, !noalias !2779
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.al, %.noexc11, %bb.ak, %bb.aj
  %i.de = atomicrmw xchg ptr %i.be, i32 0 release, align 4, !noalias !2779
  %i.df = icmp eq i32 %i.de, 2
  br i1 %i.df, label %bb.am, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread, !prof !18

bb.am:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.be)
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread

bb.an:                                            ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2779
  unreachable

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.am, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ap

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.017.0.copyload40 = phi i64 [ %.sroa.017.0.copyload38, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.017.0.copyload, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false), !alias.scope !2779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.017.0.copyload40, -2
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload40, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit
  store i64 2, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

.body.thread29:                                   ; preds = %bb.w, %bb.t, %.body.thread
  %eh.lpad-body27 = phi { ptr, i32 } [ %eh.lpad-body28, %.body.thread ], [ %i.bc, %bb.w ], [ %i.ba, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body27

.body.thread:                                     ; preds = %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread53.i, %bb.p
  %eh.lpad-body28 = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread53.i ], [ %lpad.thr_comm.i, %bb.p ], [ %lpad.loopexit.split-lp99, %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %2) #37
          to label %.body.thread29 unwind label %bb.ar

bb.ar:                                            ; preds = %.body.thread
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !11    ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2791
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !2791
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !2791
  %i.l = load i64, ptr %i.a, align 8, !range !19, !noalias !2791, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !32, !noalias !2791, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !2791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2791
  br label %bb.f

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !2791, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2791
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !2791
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !2791
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5QsYiPB8Gl_5image.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5QsYiPB8Gl_5image.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5QsYiPB8Gl_5image.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #33
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
end_hunk_7
begin_hunk_8_@_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder16read_image_boxedB8_:bb.a
  %i.ap = load i8, ptr %i.m, align 1, !range !12, !alias.scope !3262, !noundef !7 ; 2 uses
  %i.aq = load i8, ptr %i.o, align 8, !range !14, !alias.scope !3262, !noundef !7
  %.not33.i = icmp eq i8 %i.ap, 2
  %spec.select36.i = select i1 %.not33.i, i8 %i.aq, i8 %i.ap
  %i.ar = trunc nuw i8 %spec.select36.i to i1
  %.sroa.01.0.i = select i1 %i.ar, i64 16, i64 12
  %i.as = and i64 %i.am, 4294967295
  %i.at = and i64 %i.ao, 4294967295
  %i.au = mul nuw i64 %i.at, %i.as
  %i.av = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.au, i64 %.sroa.01.0.i) ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0
  %.not34.i = icmp ne i64 %3, %i.ax
  %or.cond.not.i = or i1 %i.aw, %.not34.i
  br i1 %or.cond.not.i, label %bb.h, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612.i), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3264
  store i64 %i.x, ptr %i.d, align 8, !noalias !3264
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.z, ptr %i.ay, align 8, !noalias !3264
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.i, ptr %i.az, align 8, !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3264
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ah, ptr %i.ba, align 8, !noalias !3264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.ai, ptr %i.bb, align 4, !noalias !3264
  store i64 %i.x, ptr %i.c, align 8, !noalias !3264
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.z, ptr %i.bc, align 8, !noalias !3264
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.0.0.i, ptr %i.bd, align 8, !noalias !3264
  invoke void @_RINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read6levelsINtB3_16ReadLargestLevelNtNtB5_7samples15ReadFlatSamplesE13rgba_channelsffffNCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB24_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB28_2io7decoder12ImageDecoder10read_images0_0NCB1Z_s1_0INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB28_(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.i unwind label %bb.r, !noalias !3263

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @103, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
          to label %bb.p unwind label %bb.r, !noalias !3263

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 8 dereferenceable(224) %i.e, i64 224, i1 false), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3264
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store ptr @_RNvNtCsdsTQD3x2eOp_3exr5image15ignore_progress, ptr %i.be, align 8, !noalias !3264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  store i8 0, ptr %i.bf, align 8, !noalias !3264
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 233
  store i8 1, ptr %i.bg, align 1, !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4344) %i.b, ptr noundef nonnull align 8 dereferenceable(4360) %i.i, i64 4344, i1 false), !noalias !3263
  invoke void @_RINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB3_9ReadImageFdEuINtNtB5_6layers19ReadFirstValidLayerINtNtB5_17specific_channels13CollectPixelsINtB1F_19ReadOptionalChannelINtB1F_19ReadRequiredChannelIB2L_IB2L_NtNtB7_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4G_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4K_2io7decoder12ImageDecoder10read_images0_0NCB4B_s1_0EEE11from_chunksINtB7_5LayerINtB7_16SpecificChannelsB40_TNtNtNtB9_4meta9attribute18ChannelDescriptionB8m_B8m_INtNtB5N_6option6OptionB8m_EEEEB5G_EB4K_(ptr noalias nofree noundef nonnull sret([1320 x i8]) align 8 captures(none) dereferenceable(1320) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(240) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(4344) %i.b)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3264
  %i.bh = load i64, ptr %i.g, align 8, !range !8, !noalias !3264, !noundef !7 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3264
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !3264
  invoke void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs7openexr12to_image_err(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.612.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc1 unwind label %bb.s

.noexc1:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.612.i, i64 64, i1 false), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.i), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, i64 64, i1 false), !noalias !3265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.t

bb.k:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5ImageINtBE_5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB2k_B2k_INtNtB4_6option6OptionB2k_EEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(1320) %i.h) #37
          to label %bb.u unwind label %bb.q, !noalias !3261

bb.l:                                             ; preds = %.noexc
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.612.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.426.0..sroa_idx.i, i64 64, i1 false), !noalias !3264
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1248) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(1248) %.sroa.527.0..sroa_idx.i, i64 1248, i1 false), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.612.i, i64 64, i1 false), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.i), !noalias !3264
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.417.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, i64 64, i1 false), !noalias !3264
  store i64 %i.bh, ptr %i.h, align 8, !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 896
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !3264, !nonnull !7, !noundef !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 904
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !3264, !noundef !7
  %i.bp = shl nuw nsw i64 %i.bo, 2
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102)
          to label %bb.m unwind label %bb.k, !noalias !3261

bb.m:                                             ; preds = %bb.l
  store i8 -1, ptr %0, align 8, !alias.scope !3261
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 1184
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBR_14AttributeValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15ImageAttributesECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.n, !noalias !3261

bb.n:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB28_B28_INtNtB4_6option6OptionB28_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.h) #37
          to label %bb.u unwind label %bb.o, !noalias !3261

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15ImageAttributesECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.m
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image5LayerINtBE_16SpecificChannelsINtNtCs4wP2HXfJTCR_5alloc3vec3VecfETNtNtNtBG_4meta9attribute18ChannelDescriptionB28_B28_INtNtB4_6option6OptionB28_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.h)
          to label %bb.t unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3261
  unreachable

bb.p:                                             ; preds = %bb.h
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.k
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3261
  unreachable

bb.r:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4360) %i.i) #37
          to label %bb.u unwind label %bb.q, !noalias !3263

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15ImageAttributesECsa5QsYiPB8Gl_5image.exit.i.i, %bb.j, %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %.noexc1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15ImageAttributesECsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4360, i64 noundef 8) #33
  ret void

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.n, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %i.bk, %bb.k ], [ %lpad.thr_comm.i, %bb.r ], [ %i.br, %bb.n ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4360, i64 noundef 8) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4                   ; 3 uses
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.09.i = phi i64 [ %i.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !3283, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !3284
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.q = icmp eq i64 %i.n, %i.f
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.n, %i.f
  br i1 %i.s, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.u = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !3288, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !3289
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.x = icmp eq i64 %i.u, %i.f
  br i1 %i.x, label %.body, label %.lr.ph12.i

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit.i, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !7 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit
  %i.ac = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.ad = shl nuw i64 %i.aa, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEECsa5QsYiPB8Gl_5image.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefENtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %i.r
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryNtNtBO_5alloc6GlobalEEB2o_.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.e = shl nuw i64 %i.b, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #33, !noalias !3292
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryNtNtBO_5alloc6GlobalEEB2o_.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryNtNtBO_5alloc6GlobalEEB2o_.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardhNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3295
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardhNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardhNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardtNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.e = shl nuw i64 %i.b, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 2) #33, !noalias !3298
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardtNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardtNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.e = shl nuw i64 %i.b, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3301
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyNtNtBO_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1H_NtNtNtBb_3ffi6os_str8OsStringEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !20, !noundef !7 ; 2 uses
  %1 = atomicrmw sub ptr %i.b, i32 1 release, align 4
  %i.c = add i32 %1, -1                           ; 2 uses
  %i.d = and i32 %i.c, -1073741825
  %or.cond = icmp eq i32 %i.d, -2147483648
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.b, i32 noundef %i.c)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtBb_3ffi6os_str8OsStringINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtB1e_3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB1e_6result6ResultIB2V_DNtNtNtB43_2io7decoder12ImageDecoderEL0_ENtNtB43_5error10ImageErrorENtNtB1e_6marker4SendNtB6w_4SyncEL_EEEENtNtB3B_4drop4Drop4dropB43_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !20, !noundef !7 ; 2 uses
  %1 = atomicrmw sub ptr %i.b, i32 1 release, align 4
  %i.c = add i32 %1, -1                           ; 2 uses
  %i.d = and i32 %i.c, -1073741825
  %or.cond = icmp eq i32 %i.d, -2147483648
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.b, i32 noundef %i.c)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1I_NtNtNtBb_3ffi6os_str8OsStringEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !16, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.h, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %1 = atomicrmw sub ptr %i.a, i32 1073741823 release, align 4
  %i.i = add i32 %1, -1073741823                  ; 2 uses
  %or.cond.not = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.not, label %bb.f, label %bb.e, !prof !37

bb.e:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.a, i32 noundef %i.i)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtBb_3ffi6os_str8OsStringINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtB1f_3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB1f_6result6ResultIB2W_DNtNtNtB44_2io7decoder12ImageDecoderEL0_ENtNtB44_5error10ImageErrorENtNtB1f_6marker4SendNtB6x_4SyncEL_EEEENtNtB3C_4drop4Drop4dropB44_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !16, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.h, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %1 = atomicrmw sub ptr %i.a, i32 1073741823 release, align 4
  %i.i = add i32 %1, -1073741823                  ; 2 uses
  %or.cond.not = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.not, label %bb.f, label %bb.e, !prof !37

bb.e:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.a, i32 noundef %i.i)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtCsj6eKBz9Db1c_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs7openexr14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder10set_limitsB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4360) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4344
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3304, !noundef !7
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4360) %1, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1272
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.g, align 8, !range !3305, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = trunc nuw i32 %i.h to i1
  %i.k = load i32, ptr %i.i, align 4
  %i.l = icmp ult i32 %i.k, %i.f
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !3305, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.s = trunc nuw i32 %i.q to i1
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp ult i32 %i.t, %i.o
  %or.cond7 = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs7openexr14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11orientationB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(4360) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs7openexr14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4360) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3308, !noundef !7
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4360) %0, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1272
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  %i.g = load i64, ptr %i.f, align 8, !noundef !7
  %i.h = and i64 %i.e, 4294967295
  %i.i = and i64 %i.g, 4294967295
  %i.j = mul nuw i64 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4352
  %.val = load i8, ptr %i.k, align 8, !range !14, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4353
  %.val2 = load i8, ptr %i.l, align 1, !range !12, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %.val2, 2
  %spec.select.i = select i1 %.not.i, i8 %.val, i8 %.val2
  %i.m = icmp eq i8 %spec.select.i, 1
  %. = select i1 %i.m, i64 16, i64 12
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 %.) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0
  %i.p = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.p, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %i.o, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertENCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1O_5Image11from_readerINtNtNtBb_2io6cursor6CursorRShEE0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 1
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCsPkZ9TkQnmq_10rayon_core8registry19WORKER_THREAD_STATE0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1e_6option6OptionQIB1T_INtNtB1e_4cell4CellPNtB8_12WorkerThreadEEEEE9call_onceCsa5QsYiPB8Gl_5image(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsPkZ9TkQnmq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsa5QsYiPB8Gl_5image(ptr noalias nofree readnone captures(none) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #19

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsdsTQD3x2eOp_3exr4metaNtB5_8MetaData18read_offset_tablesINtNtB7_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4288)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsdsTQD3x2eOp_3exr5block6reader22validate_offset_tables(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 6477087104532849), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header25blocks_increasing_y_order(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1424)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header36get_absolute_block_pixel_coordinates(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1424), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #23

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4288), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsPkZ9TkQnmq_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsPkZ9TkQnmq_10rayon_core5sleepNtB2_5Sleep3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsc_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_5BlockNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE3newCsa5QsYiPB8Gl_5image() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_8
