Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.12?download=true
inline.NumInlined: 969
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrIBY_INtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1J_5codec6decodeINtB2l_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1F_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2X_EE0ENCB2f_s_0EINvMs1_NtB1J_6statusNtB63_6Status9map_errorB6g_EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations:bb.a
  br label %bb.i, !dbg !15467

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15468
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15468, !noalias !15451, !nonnull !465, !align !617, !noundef !465 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15453
  store ptr %i.f, ptr %i.b, align 8, !noalias !15454
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !15469, !noalias !15452
  %i.g = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 8, i64 noundef range(i64 1, 9) 8) #34, !dbg !15470, !noalias !15452 ; 3 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !15471
  br i1 %i.h, label %bb.c, label %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23, !dbg !15472, !prof !479

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc.i.i.i.i unwind label %bb.d, !dbg !15473, !noalias !15452

.noexc.i.i.i.i:                                   ; preds = %bb.c
  unreachable, !dbg !15473

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %common.resume unwind label %bb.e, !dbg !15474, !noalias !15452

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15475, !noalias !15452
  unreachable, !dbg !15475

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !15476

_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23: ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8, !dbg !15477, !noalias !15452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15478, !noalias !15453
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status10from_error(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @259), !dbg !15479, !noalias !15452 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15463, !noalias !15451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15457
  store ptr %i.k, ptr %i.a, align 8, !noalias !15458
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !15480
  %i.l = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 8, i64 noundef range(i64 1, 9) 8) #34, !dbg !15481 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !15482
  br i1 %i.m, label %bb.f, label %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, !dbg !15483, !prof !479

_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15484
  %.sroa.8.0.copyload9 = load ptr, ptr %.sroa.8.0..sroa_idx8, align 8, !dbg !15484, !noalias !15459
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15484
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10.0..sroa_idx10, i64 80, i1 false), !dbg !15484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15463, !noalias !15451
  store i64 %i.d, ptr %0, align 8, !dbg !15485
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15485
  store ptr %.sroa.8.0.copyload9, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !15485
  br label %bb.i, !dbg !15486

bb.f:                                             ; preds = %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc.i.i.i.i6 unwind label %bb.g, !dbg !15487

.noexc.i.i.i.i6:                                  ; preds = %bb.f
  unreachable, !dbg !15487

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %common.resume unwind label %bb.h, !dbg !15488

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15489
  unreachable, !dbg !15489

_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23
  store ptr %i.k, ptr %i.l, align 8, !dbg !15490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15491, !noalias !15457
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status10from_error(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @259), !dbg !15492
  store i64 -2, ptr %0, align 8, !dbg !15493
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15493
  store ptr %i.p, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !15493
  br label %bb.i, !dbg !15494

bb.i:                                             ; preds = %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread20, %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread
  ret void, !dbg !15495
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrIBY_INtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1J_5codec6decodeINtB2l_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1F_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2X_EE0ENCB2f_s_0EINvMs1_NtB1J_6statusNtB63_6Status9map_errorB6g_EENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 !dbg !15496 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators9map_frameINtB4_8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1i_5codec6decodeINtB1U_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1e_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2w_EE0ENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !15498
  ret i1 %i.a, !dbg !15499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrIBY_INtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1J_5codec6decodeINtB2l_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1F_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2X_EE0ENCB2f_s_0EINvMs1_NtB1J_6statusNtB63_6Status9map_errorB6g_EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 !dbg !15500 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15512
  store i64 0, ptr %i.a, align 8, !dbg !15512, !alias.scope !15511
  store i64 0, ptr %0, align 8, !dbg !15512, !alias.scope !15511
  ret void, !dbg !15513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #11 !dbg !15514 {
bb.a:
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !dbg !15531, !alias.scope !15529, !noalias !15530 ; 2 uses
  store ptr null, ptr %1, align 8, !dbg !15532, !alias.scope !15529, !noalias !15530
  %.not.i = icmp eq ptr %.sroa.04.0.copyload.i, null, !dbg !15533
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !15534

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15531
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15535
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa.0.0..sroa_idx.i, i64 24, i1 false), !dbg !15536
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15535
  store ptr %.sroa.04.0.copyload.i, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !15535
  br label %bb.c, !dbg !15537

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ -1, %bb.b ], [ -3, %bb.a ], !dbg !15538
  store i64 %.sink, ptr %0, align 8, !dbg !15538
  ret void, !dbg !15539
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !15540 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !15549, !noundef !465
  %.not.i = icmp eq ptr %.val, null, !dbg !15550
  ret i1 %.not.i, !dbg !15551
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !15552 {
bb.a:
  tail call void @_RNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1), !dbg !15553
  ret void, !dbg !15554
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #6 !dbg !15555 {
bb.a:
  store i64 -3, ptr %0, align 8, !dbg !15557
  ret void, !dbg !15558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !15559 {
bb.a:
  ret i1 true, !dbg !15560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 !dbg !15561 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15573
  store i64 0, ptr %i.a, align 8, !dbg !15573, !alias.scope !15572
  store i64 1, ptr %0, align 8, !dbg !15573, !alias.scope !15572
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15573
  store i64 0, ptr %i.b, align 8, !dbg !15573, !alias.scope !15572
  ret void, !dbg !15574
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(144) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15575 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.770.i.sroa.6 = alloca [56 x i8], align 8 ; 3 uses
  %i.z = alloca [96 x i8], align 8                ; 12 uses
  %i.aa = alloca [96 x i8], align 8               ; 10 uses
  %i.ab = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.19.i = alloca i64, align 8               ; 8 uses
  %.sroa.30.i = alloca i64, align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15854), !dbg !15931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !15932
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !15932
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i), !dbg !15933
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30.i), !dbg !15933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15856), !dbg !15934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15857), !dbg !15934
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15935
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15936 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !15937 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !15938
  %.val30.i.i = load i64, ptr %i.ag, align 8, !dbg !15938, !alias.scope !15859, !noalias !15860, !noundef !465
  %i.ah = load ptr, ptr %i.af, align 8, !dbg !15939, !alias.scope !15859, !noalias !15860, !align !617, !noundef !465 ; 2 uses
  store ptr null, ptr %i.af, align 8, !dbg !15940, !alias.scope !15859, !noalias !15860
  %.not.i.i = icmp eq ptr %i.ah, null, !dbg !15941
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread108.i, !dbg !15942

.preheader.i.i:                                   ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %bb.b, !dbg !15943

bb.b:                                             ; preds = %bb.aa, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15944, !noalias !15861
  call void @_RNvXs_NtNtCsau3QU8iZK1I_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB6_3map3MapINtNtB8_4once4OnceNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1A_NtNtCsfUalJnHtWpm_5tonic6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !dbg !15945, !noalias !15862
  %i.an = load i64, ptr %i.y, align 8, !dbg !15944, !range !893, !noalias !15861, !noundef !465
  switch i64 %i.an, label %bb.m [
    i64 -3, label %bb.c
    i64 -2, label %bb.d
    i64 -1, label %bb.l
  ], !dbg !15943

bb.c:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %i.aj, align 8, !dbg !15946, !alias.scope !15859, !noalias !15860, !noundef !465 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !15946
  br i1 %i.ap, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread33, label %bb.e, !dbg !15947

bb.d:                                             ; preds = %bb.b
  %i.aq = load i64, ptr %i.aj, align 8, !dbg !15948, !alias.scope !15859, !noalias !15860, !noundef !465 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !15948
  br i1 %i.ar, label %bb.as, label %bb.e, !dbg !15949

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = phi i64 [ %i.ao, %bb.c ], [ %i.aq, %bb.d ], !dbg !15950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15951, !noalias !15861
  call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.as), !dbg !15952, !noalias !15862
  call void @llvm.experimental.noalias.scope.decl(metadata !15863), !dbg !15953
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !15954
  %i.au = load ptr, ptr %i.at, align 8, !dbg !15954, !alias.scope !15863, !noalias !15864, !noundef !465
  %i.av = ptrtoint ptr %i.au to i64, !dbg !15954  ; 3 uses
  %i.aw = and i64 %i.av, 1, !dbg !15954
  %.not.i.i.i = icmp eq i64 %i.aw, 0, !dbg !15955
  br i1 %.not.i.i.i, label %bb.h, label %bb.f, !dbg !15955

bb.f:                                             ; preds = %bb.e
  %i.ax = lshr i64 %i.av, 5, !dbg !15956          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !15957, !noalias !15865
  %i.ay = load ptr, ptr %i.x, align 8, !dbg !15958, !alias.scope !15863, !noalias !15864, !nonnull !465, !noundef !465
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !15959
  %i.ba = load i64, ptr %i.az, align 8, !dbg !15959, !alias.scope !15863, !noalias !15864, !noundef !465
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !15960
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !15960, !alias.scope !15863, !noalias !15864, !noundef !465
  %i.bd = sub nsw i64 0, %i.ax, !dbg !15961
  %i.be = getelementptr inbounds i8, ptr %i.ay, i64 %i.bd, !dbg !15962
  %i.bf = add i64 %i.ba, %i.ax, !dbg !15963
  %i.bg = add i64 %i.bc, %i.ax, !dbg !15964       ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, -1, !dbg !15965
  call void @llvm.assume(i1 %i.bh), !dbg !15965
  store i64 %i.bg, ptr %i.t, align 8, !dbg !15966, !noalias !15865
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !15966
  store ptr %i.be, ptr %i.bi, align 8, !dbg !15966, !noalias !15865
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !15966
  store i64 %i.bf, ptr %i.bj, align 8, !dbg !15966, !noalias !15865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15967, !noalias !15865
  call void @_RNvXsE_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !dbg !15968, !noalias !15866
  call void @llvm.experimental.noalias.scope.decl(metadata !15867), !dbg !15969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15865
  store i64 %i.ax, ptr %i.r, align 8, !noalias !15868
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !15970
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !15970, !alias.scope !15867, !noalias !15865, !noundef !465 ; 4 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ax, %i.bl, !dbg !15971
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.j, !dbg !15971, !prof !527

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !15972, !noalias !15868
  store i64 %i.bl, ptr %i.q, align 8, !dbg !15973, !noalias !15868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !15974, !noalias !15868
  store ptr %i.r, ptr %i.p, align 8, !dbg !15974, !noalias !15868
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !15974
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !dbg !15974, !noalias !15868
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !15974
  store ptr %i.q, ptr %i.bm, align 8, !dbg !15974, !noalias !15868
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !15974
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !dbg !15974, !noalias !15868
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #36
          to label %.noexc.i.i.i unwind label %bb.i, !dbg !15975, !noalias !15866

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable, !dbg !15975

bb.h:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.x, align 8, !dbg !15976, !alias.scope !15863, !noalias !15864, !nonnull !465, !noundef !465
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !15977
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !15977, !alias.scope !15863, !noalias !15864, !noundef !465
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i, !dbg !15978

bb.i:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15869), !dbg !15979
  call void @llvm.experimental.noalias.scope.decl(metadata !15870), !dbg !15980
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !15981
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !15982, !alias.scope !15871, !noalias !15865, !noundef !465
  %i.bt = load ptr, ptr %i.s, align 8, !dbg !15983, !alias.scope !15871, !noalias !15865, !nonnull !465, !align !617, !noundef !465
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32, !dbg !15983
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !15983, !noalias !15872, !nonnull !465, !noundef !465
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !15984
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !15984, !alias.scope !15871, !noalias !15865, !noundef !465
  invoke void %i.bv(ptr noundef %i.bs, ptr noundef %i.bx, i64 noundef %i.bl)
          to label %common.resume unwind label %bb.k, !dbg !15983, !noalias !15866, !inline_history !596

bb.j:                                             ; preds = %bb.f
  %i.by = sub nuw i64 %i.bl, %i.ax, !dbg !15985
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !15986
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !15986, !alias.scope !15867, !noalias !15865, !noundef !465
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ax, !dbg !15987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15988, !noalias !15865
  %.sroa.0.0.copyload45.i.i = load ptr, ptr %i.s, align 8, !dbg !15989, !noalias !15873
  %.sroa.7.0..sroa_idx50.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !15989
  %.sroa.7.0.copyload51.i.i = load ptr, ptr %.sroa.7.0..sroa_idx50.i.i, align 8, !dbg !15989, !noalias !15873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15979, !noalias !15865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !15990, !noalias !15865
  %.pre.i = ptrtoint ptr %.sroa.7.0.copyload51.i.i to i64, !dbg !15991
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i, !dbg !15978

bb.k:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15992, !noalias !15866
  unreachable, !dbg !15992

common.resume:                                    ; preds = %bb.bf, %bb.i, %.loopexit.split-lp.i.i.i.i, %bb.r, %bb.x, %bb.af, %bb.ak, %bb.ao, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.ay ], [ %i.fz, %bb.ao ], [ %i.el, %bb.af ], [ %i.bq, %bb.i ], [ %i.dc, %bb.r ], [ %i.fa, %bb.ak ], [ %lpad.phi.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.phi.i.i, %bb.x ], [ %i.hc, %bb.bf ]
  resume { ptr, i32 } %common.resume.op, !dbg !15993

_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i: ; preds = %bb.j, %bb.h
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.j ], [ %i.av, %bb.h ], !dbg !15991
  %.sroa.6.0.i.i = phi i64 [ %i.by, %bb.j ], [ %i.bp, %bb.h ], !dbg !15994
  %.sroa.5.0.i.i = phi ptr [ %i.cb, %bb.j ], [ %i.bn, %bb.h ], !dbg !15994
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.j ], [ @_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE, %bb.h ], !dbg !15994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15995, !noalias !15861
  store i64 %.pre-phi.i, ptr %.sroa.30.i, align 8, !dbg !15991, !alias.scope !15856, !noalias !15874
  br label %bb.ar, !dbg !15996

bb.l:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !15997
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !15997, !noalias !15861, !nonnull !465, !align !617, !noundef !465 ; 3 uses
  %i.cf = load i64, ptr %i.aj, align 8, !dbg !15998, !alias.scope !15859, !noalias !15860, !noundef !465 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0, !dbg !15998
  br i1 %i.cg, label %.thread112.i, label %bb.ai, !dbg !15999

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !16000, !noalias !15861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !16000, !noalias !15861
  %i.ch = load i64, ptr %1, align 8, !dbg !16001, !range !525, !alias.scope !15859, !noalias !15860, !noundef !465
  %i.ci = load i64, ptr %i.ai, align 8, !dbg !16001, !alias.scope !15859, !noalias !15860
  call void @llvm.experimental.noalias.scope.decl(metadata !15875), !dbg !16002
  %i.cj = load i64, ptr %i.aj, align 8, !dbg !16003, !alias.scope !15876, !noalias !15877, !noundef !465 ; 6 uses
  %i.ck = load i64, ptr %i.ak, align 8, !dbg !16004, !alias.scope !15876, !noalias !15877, !noundef !465
  %i.cl = sub i64 %i.ck, %i.cj, !dbg !16005
  %i.cm = icmp ugt i64 %i.cl, 4, !dbg !16006
  br i1 %i.cm, label %.thread.i.i.i, label %bb.n, !dbg !16006

bb.n:                                             ; preds = %bb.m
  %i.cn = invoke noundef zeroext i1 @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.o unwind label %.loopexit.i.i, !dbg !16007, !noalias !15878 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.ak, align 8, !dbg !16008, !alias.scope !15876, !noalias !15877
  %.pre7.i.i.i = load i64, ptr %i.aj, align 8, !dbg !16009, !alias.scope !15876, !noalias !15877 ; 2 uses
  %.pre8.i.i.i = sub i64 %.pre.i.i.i, %.pre7.i.i.i, !dbg !16008 ; 2 uses
  %i.co = icmp ult i64 %.pre8.i.i.i, 5, !dbg !16010
  br i1 %i.co, label %bb.u, label %.thread.i.i.i, !dbg !16010, !prof !15880

.thread.i.i.i:                                    ; preds = %bb.o, %bb.m
  %i.cp = phi i64 [ %.pre7.i.i.i, %bb.o ], [ %i.cj, %bb.m ]
  %i.cq = add i64 %i.cp, 5, !dbg !16011
  store i64 %i.cq, ptr %i.aj, align 8, !dbg !16011, !alias.scope !15876, !noalias !15877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !16012, !noalias !15881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !16012, !noalias !15861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16013, !noalias !15881
  store ptr %i.ae, ptr %i.n, align 8, !dbg !16014, !noalias !15881
  call void @llvm.experimental.noalias.scope.decl(metadata !15883), !dbg !16015
  %.val.i.i.i.i = load ptr, ptr %i.al, align 8, !dbg !16016, !alias.scope !15883, !noalias !15884, !nonnull !465, !noundef !465 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.am, align 8, !dbg !16016, !alias.scope !15883, !noalias !15884, !noundef !465 ; 4 uses
  %i.cr = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i, !dbg !16017
  %i.cs = invoke noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENvYB1n_NtNtCs2NttipCe0aR_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2S_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3K_5accumjNtB5J_3Sum3sumIBO_BN_B4E_EE0E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull readonly align 8 %.val.i.i.i.i, ptr noundef nonnull readonly %i.cr, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i, !dbg !16018, !noalias !15887

.noexc.i.i.i.i:                                   ; preds = %.thread.i.i.i
  %i.ct = add i64 %i.cs, %.val1.i.i.i.i, !dbg !16019 ; 2 uses
  %i.cu = load i64, ptr %i.aj, align 8, !dbg !16020, !alias.scope !15876, !noalias !15888, !noundef !465
  %i.cv = sub i64 9223372036854775807, %i.cu, !dbg !16021 ; 2 uses
  %i.cw = icmp ugt i64 %i.ct, %i.cv, !dbg !16022
  br i1 %i.cw, label %bb.q, label %bb.p, !dbg !16022

bb.p:                                             ; preds = %.noexc.i.i.i.i
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i, 104, !dbg !16023
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx.i.i.i.i.i.i, !dbg !16023
  %i.cy = icmp eq i64 %.val1.i.i.i.i, 0, !dbg !16024
  br i1 %i.cy, label %.loopexit2.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !16025

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.p, %.noexc2.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi ptr [ %i.cz, %.noexc2.i.i.i.i ], [ %.val.i.i.i.i, %bb.p ] ; 2 uses
  invoke void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.01.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc2.i.i.i.i unwind label %.loopexit.i.i.i.i, !dbg !16026, !noalias !15892

.noexc2.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i, i64 104, !dbg !16027 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cx, !dbg !16024
  br i1 %i.da, label %.loopexit2.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !16025

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.loopexit.i.i:              ; preds = %.thread.i.i.i
  %lpad.loopexit85.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.loopexit.split-lp.i.i:     ; preds = %bb.q
  %lpad.loopexit.split-lp86.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.i.i.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i.loopexit.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit85.i.i, %.loopexit.split-lp.i.i.loopexit.i.i ], [ %lpad.loopexit.split-lp86.i.i, %.loopexit.split-lp.i.i.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #31
          to label %common.resume unwind label %bb.t, !dbg !16028, !noalias !15878

bb.q:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16029, !noalias !15893
  store i64 %i.ct, ptr %i.l, align 8, !dbg !16029, !noalias !15893
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !16029
  store i64 %i.cv, ptr %i.db, align 8, !dbg !16029, !noalias !15893
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 39, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #36
          to label %.noexc3.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i, !dbg !16030, !noalias !15887

.noexc3.i.i.i.i:                                  ; preds = %bb.q
  unreachable, !dbg !16030

.loopexit2.i.i.i.i:                               ; preds = %.noexc2.i.i.i.i, %bb.p
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i unwind label %bb.r, !dbg !16031, !noalias !15878

bb.r:                                             ; preds = %.loopexit2.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.s, !dbg !16032, !noalias !15878

bb.s:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16031, !noalias !15878
  unreachable, !dbg !16031

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i: ; preds = %.loopexit2.i.i.i.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !dbg !16033, !noalias !15878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16034, !noalias !15881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16035, !noalias !15881
  %i.de = load i64, ptr %i.aj, align 8, !dbg !16036, !alias.scope !15876, !noalias !15877, !noundef !465 ; 4 uses
  %i.df = icmp ugt i64 %i.cj, %i.de, !dbg !16037
  br i1 %i.df, label %bb.v, label %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !16037, !prof !527

bb.t:                                             ; preds = %.loopexit.split-lp.i.i.i.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16038, !noalias !15878
  unreachable, !dbg !16038

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !16039, !noalias !15881
  store i64 5, ptr %i.m, align 8, !dbg !16039, !noalias !15881
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !16039
  store i64 %.pre8.i.i.i, ptr %i.dh, align 8, !dbg !16039, !noalias !15881
  invoke void @_RNvCs8QTyv2gZm5j_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m) #35
          to label %bb.w unwind label %.loopexit.split-lp.i.i, !dbg !16040, !noalias !15878

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.cj, i64 noundef %i.de, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !16041, !noalias !15878
  unreachable

bb.w:                                             ; preds = %bb.u
  unreachable

.loopexit.i.i:                                    ; preds = %bb.n
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i.i:                           ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #31
          to label %common.resume unwind label %bb.y, !dbg !16042, !noalias !15862

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16043, !noalias !15862
  unreachable, !dbg !16043

_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  %i.dj = load ptr, ptr %i.ae, align 8, !dbg !16044, !alias.scope !15876, !noalias !15877, !nonnull !465, !noundef !465
  %i.dk = sub nuw i64 %i.de, %i.cj, !dbg !16045
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cj, !dbg !16046
  %i.dm = call noundef align 8 ptr @_RNvNtNtCsfUalJnHtWpm_5tonic5codec6encode15finish_encoding(i64 noundef range(i64 0, 2) %i.ch, i64 %i.ci, ptr noalias nofree noundef nonnull %i.dl, i64 noundef %i.dk), !dbg !16047, !noalias !15878 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.dm, null, !dbg !16002
  br i1 %.not28.i.i, label %bb.z, label %.loopexit.i, !dbg !16048

bb.z:                                             ; preds = %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.dn = load i64, ptr %i.aj, align 8, !dbg !16049, !alias.scope !15859, !noalias !15860, !noundef !465 ; 2 uses
  %.not29.i.i = icmp ult i64 %i.dn, %.val30.i.i, !dbg !16050
  br i1 %.not29.i.i, label %bb.aa, label %bb.ab, !dbg !16050

.loopexit.i:                                      ; preds = %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i
  %.sroa.26.1.i = phi i64 [ %.sroa.660.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ undef, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !16051
  %.sroa.12.1.i = phi ptr [ %.sroa.055.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ null, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !16052
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.30.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ %.sroa.19.i, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %.sroa.763.0.sink.i.i = phi ptr [ %.sroa.763.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ %i.dm, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  store ptr %.sroa.763.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !dbg !16052, !alias.scope !15856, !noalias !15874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !16053, !noalias !15861
  %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.pre.i = load i64, ptr %.sroa.19.i, align 8, !dbg !16054, !noalias !15896
  %3 = inttoptr i64 %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.pre.i to ptr, !dbg !16054
  br label %bb.ar, !dbg !16055

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !16053, !noalias !15861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15996, !noalias !15861
  br label %bb.b, !dbg !16056

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !16057, !noalias !15861
  call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.dn), !dbg !16058, !noalias !15862
  call void @llvm.experimental.noalias.scope.decl(metadata !15898), !dbg !16059
  %i.do = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !16060
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !16060, !alias.scope !15898, !noalias !15899, !noundef !465 ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64, !dbg !16060  ; 2 uses
  %i.dr = and i64 %i.dq, 1, !dbg !16060
  %.not.i31.i.i = icmp eq i64 %i.dr, 0, !dbg !16061
  br i1 %.not.i31.i.i, label %bb.ae, label %bb.ac, !dbg !16061

bb.ac:                                            ; preds = %bb.ab
  %i.ds = lshr i64 %i.dq, 5, !dbg !16062          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16063, !noalias !15900
  %i.dt = load ptr, ptr %i.v, align 8, !dbg !16064, !alias.scope !15898, !noalias !15899, !nonnull !465, !noundef !465
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16065
  %i.dv = load i64, ptr %i.du, align 8, !dbg !16065, !alias.scope !15898, !noalias !15899, !noundef !465
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !16066
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !16066, !alias.scope !15898, !noalias !15899, !noundef !465
  %i.dy = sub nsw i64 0, %i.ds, !dbg !16067
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy, !dbg !16068
  %i.ea = add i64 %i.dv, %i.ds, !dbg !16069
  %i.eb = add i64 %i.dx, %i.ds, !dbg !16070       ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, -1, !dbg !16071
  call void @llvm.assume(i1 %i.ec), !dbg !16071
  store i64 %i.eb, ptr %i.k, align 8, !dbg !16072, !noalias !15900
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16072
  store ptr %i.dz, ptr %i.ed, align 8, !dbg !16072, !noalias !15900
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16072
  store i64 %i.ea, ptr %i.ee, align 8, !dbg !16072, !noalias !15900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16073, !noalias !15900
  call void @_RNvXsE_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !16074, !noalias !15901
  call void @llvm.experimental.noalias.scope.decl(metadata !15902), !dbg !16075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15900
  store i64 %i.ds, ptr %i.i, align 8, !noalias !15903
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !16076
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !16076, !alias.scope !15902, !noalias !15900, !noundef !465 ; 4 uses
  %.not.i.i32.i.i = icmp ugt i64 %i.ds, %i.eg, !dbg !16077
  br i1 %.not.i.i32.i.i, label %bb.ad, label %bb.ag, !dbg !16077, !prof !527

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16078, !noalias !15903
  store i64 %i.eg, ptr %i.h, align 8, !dbg !16079, !noalias !15903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16080, !noalias !15903
  store ptr %i.i, ptr %i.g, align 8, !dbg !16080, !noalias !15903
  %.sroa.42.0..sroa_idx.i.i33.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !16080
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i33.i.i, align 8, !dbg !16080, !noalias !15903
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !16080
  store ptr %i.h, ptr %i.eh, align 8, !dbg !16080, !noalias !15903
  %.sroa.46.0..sroa_idx.i.i34.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !16080
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i34.i.i, align 8, !dbg !16080, !noalias !15903
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #36
          to label %.noexc.i36.i.i unwind label %bb.af, !dbg !16081, !noalias !15901

.noexc.i36.i.i:                                   ; preds = %bb.ad
  unreachable, !dbg !16081

bb.ae:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.v, align 8, !dbg !16082, !alias.scope !15898, !noalias !15899, !nonnull !465, !noundef !465
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16083
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !16083, !alias.scope !15898, !noalias !15899, !noundef !465
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i, !dbg !16084

bb.af:                                            ; preds = %bb.ad
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15904), !dbg !16085
  call void @llvm.experimental.noalias.scope.decl(metadata !15905), !dbg !16086
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !16087
  %i.en = load ptr, ptr %i.em, align 8, !dbg !16088, !alias.scope !15906, !noalias !15900, !noundef !465
  %i.eo = load ptr, ptr %i.j, align 8, !dbg !16089, !alias.scope !15906, !noalias !15900, !nonnull !465, !align !617, !noundef !465
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32, !dbg !16089
  %i.eq = load ptr, ptr %i.ep, align 8, !dbg !16089, !noalias !15907, !nonnull !465, !noundef !465
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !16090
  %i.es = load ptr, ptr %i.er, align 8, !dbg !16090, !alias.scope !15906, !noalias !15900, !noundef !465
  invoke void %i.eq(ptr noundef %i.en, ptr noundef %i.es, i64 noundef %i.eg)
          to label %common.resume unwind label %bb.ah, !dbg !16089, !noalias !15901, !inline_history !596

bb.ag:                                            ; preds = %bb.ac
  %i.et = sub nuw i64 %i.eg, %i.ds, !dbg !16091
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !16092
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !16092, !alias.scope !15902, !noalias !15900, !noundef !465
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ds, !dbg !16093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16094, !noalias !15900
  %.sroa.055.0.copyload56.i.i = load ptr, ptr %i.j, align 8, !dbg !16095, !noalias !15908
  %.sroa.763.0..sroa_idx64.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !16095
  %.sroa.763.0.copyload65.i.i = load ptr, ptr %.sroa.763.0..sroa_idx64.i.i, align 8, !dbg !16095, !noalias !15908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16085, !noalias !15900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16096, !noalias !15900
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i, !dbg !16084

bb.ah:                                            ; preds = %bb.af
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16097, !noalias !15901
  unreachable, !dbg !16097

_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i: ; preds = %bb.ag, %bb.ae
  %.sroa.763.0.i.i = phi ptr [ %i.dp, %bb.ae ], [ %.sroa.763.0.copyload65.i.i, %bb.ag ], !dbg !16098
  %.sroa.660.0.i.i = phi i64 [ %i.ek, %bb.ae ], [ %i.et, %bb.ag ], !dbg !16098
  %.sroa.557.0.i.i = phi ptr [ %i.ei, %bb.ae ], [ %i.ew, %bb.ag ], !dbg !16098
  %.sroa.055.0.i.i = phi ptr [ @_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE, %bb.ae ], [ %.sroa.055.0.copyload56.i.i, %bb.ag ], !dbg !16098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !16099, !noalias !15861
  %4 = ptrtoint ptr %.sroa.557.0.i.i to i64, !dbg !16100
  store i64 %4, ptr %.sroa.19.i, align 8, !dbg !16100, !alias.scope !15856, !noalias !15874
  br label %.loopexit.i, !dbg !16101

bb.ai:                                            ; preds = %bb.l
  %i.ey = load ptr, ptr %i.af, align 8, !dbg !16102, !alias.scope !15910, !noalias !15860, !align !617, !noundef !465
  %i.ez = icmp eq ptr %i.ey, null, !dbg !16102
  br i1 %i.ez, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.aj, !dbg !16102

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.af)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i unwind label %bb.ak, !dbg !16102, !noalias !15862

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i: ; preds = %bb.aj
  %.pre.i.i = load i64, ptr %i.aj, align 8, !dbg !16103, !alias.scope !15859, !noalias !15860
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !16102

.thread112.i:                                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15996, !noalias !15861
  br label %.thread108.i, !dbg !16054

bb.ak:                                            ; preds = %bb.aj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ce, ptr %i.af, align 8, !dbg !16104, !alias.scope !15859, !noalias !15860
  br label %common.resume, !dbg !16105

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i, %bb.ai
  %i.fb = phi i64 [ %.pre.i.i, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i ], [ %i.cf, %bb.ai ], !dbg !16103
  store ptr %i.ce, ptr %i.af, align 8, !dbg !16104, !alias.scope !15859, !noalias !15860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !16106, !noalias !15861
  call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.fb), !dbg !16107, !noalias !15862
  call void @llvm.experimental.noalias.scope.decl(metadata !15911), !dbg !16108
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !16109
  %i.fd = load ptr, ptr %i.fc, align 8, !dbg !16109, !alias.scope !15911, !noalias !15912, !noundef !465
  %i.fe = ptrtoint ptr %i.fd to i64, !dbg !16109  ; 3 uses
  %i.ff = and i64 %i.fe, 1, !dbg !16109
  %.not.i38.i.i = icmp eq i64 %i.ff, 0, !dbg !16110
  br i1 %.not.i38.i.i, label %bb.an, label %bb.al, !dbg !16110

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.fg = lshr i64 %i.fe, 5, !dbg !16111          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16112, !noalias !15913
  %i.fh = load ptr, ptr %i.u, align 8, !dbg !16113, !alias.scope !15911, !noalias !15912, !nonnull !465, !noundef !465
  %i.fi = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !16114
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !16114, !alias.scope !15911, !noalias !15912, !noundef !465
  %i.fk = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !16115
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !16115, !alias.scope !15911, !noalias !15912, !noundef !465
  %i.fm = sub nsw i64 0, %i.fg, !dbg !16116
  %i.fn = getelementptr inbounds i8, ptr %i.fh, i64 %i.fm, !dbg !16117
  %i.fo = add i64 %i.fj, %i.fg, !dbg !16118
  %i.fp = add i64 %i.fl, %i.fg, !dbg !16119       ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, -1, !dbg !16120
  call void @llvm.assume(i1 %i.fq), !dbg !16120
  store i64 %i.fp, ptr %i.f, align 8, !dbg !16121, !noalias !15913
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16121
  store ptr %i.fn, ptr %i.fr, align 8, !dbg !16121, !noalias !15913
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16121
  store i64 %i.fo, ptr %i.fs, align 8, !dbg !16121, !noalias !15913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16122, !noalias !15913
  call void @_RNvXsE_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !16123, !noalias !15914
  call void @llvm.experimental.noalias.scope.decl(metadata !15915), !dbg !16124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15913
  store i64 %i.fg, ptr %i.d, align 8, !noalias !15916
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !16125
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !16125, !alias.scope !15915, !noalias !15913, !noundef !465 ; 4 uses
  %.not.i.i39.i.i = icmp ugt i64 %i.fg, %i.fu, !dbg !16126
  br i1 %.not.i.i39.i.i, label %bb.am, label %bb.ap, !dbg !16126, !prof !527

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16127, !noalias !15916
  store i64 %i.fu, ptr %i.c, align 8, !dbg !16128, !noalias !15916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16129, !noalias !15916
  store ptr %i.d, ptr %i.b, align 8, !dbg !16129, !noalias !15916
  %.sroa.42.0..sroa_idx.i.i40.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16129
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i40.i.i, align 8, !dbg !16129, !noalias !15916
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16129
  store ptr %i.c, ptr %i.fv, align 8, !dbg !16129, !noalias !15916
  %.sroa.46.0..sroa_idx.i.i41.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16129
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i41.i.i, align 8, !dbg !16129, !noalias !15916
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #36
          to label %.noexc.i43.i.i unwind label %bb.ao, !dbg !16130, !noalias !15914

.noexc.i43.i.i:                                   ; preds = %bb.am
  unreachable, !dbg !16130

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.fw = load ptr, ptr %i.u, align 8, !dbg !16131, !alias.scope !15911, !noalias !15912, !nonnull !465, !noundef !465
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !16132
  %i.fy = load i64, ptr %i.fx, align 8, !dbg !16132, !alias.scope !15911, !noalias !15912, !noundef !465
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i, !dbg !16133

bb.ao:                                            ; preds = %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15917), !dbg !16134
  call void @llvm.experimental.noalias.scope.decl(metadata !15918), !dbg !16135
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !16136
  %i.gb = load ptr, ptr %i.ga, align 8, !dbg !16137, !alias.scope !15919, !noalias !15913, !noundef !465
  %i.gc = load ptr, ptr %i.e, align 8, !dbg !16138, !alias.scope !15919, !noalias !15913, !nonnull !465, !align !617, !noundef !465
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32, !dbg !16138
  %i.ge = load ptr, ptr %i.gd, align 8, !dbg !16138, !noalias !15920, !nonnull !465, !noundef !465
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16139
  %i.gg = load ptr, ptr %i.gf, align 8, !dbg !16139, !alias.scope !15919, !noalias !15913, !noundef !465
  invoke void %i.ge(ptr noundef %i.gb, ptr noundef %i.gg, i64 noundef %i.fu)
          to label %common.resume unwind label %bb.aq, !dbg !16138, !noalias !15914, !inline_history !596

bb.ap:                                            ; preds = %bb.al
  %i.gh = sub nuw i64 %i.fu, %i.fg, !dbg !16140
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16141
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !16141, !alias.scope !15915, !noalias !15913, !noundef !465
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.fg, !dbg !16142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16143, !noalias !15913
  %.sroa.070.0.copyload71.i.i = load ptr, ptr %i.e, align 8, !dbg !16144, !noalias !15921
  %.sroa.778.0..sroa_idx79.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !16144
  %.sroa.778.0.copyload80.i.i = load ptr, ptr %.sroa.778.0..sroa_idx79.i.i, align 8, !dbg !16144, !noalias !15921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16134, !noalias !15913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16145, !noalias !15913
  %.pre170.i = ptrtoint ptr %.sroa.778.0.copyload80.i.i to i64, !dbg !16146
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i, !dbg !16133

bb.aq:                                            ; preds = %bb.ao
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16147, !noalias !15914
  unreachable, !dbg !16147

_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i: ; preds = %bb.ap, %bb.an
  %.pre-phi171.i = phi i64 [ %.pre170.i, %bb.ap ], [ %i.fe, %bb.an ], !dbg !16146
  %.sroa.675.0.i.i = phi i64 [ %i.gh, %bb.ap ], [ %i.fy, %bb.an ], !dbg !16148
  %.sroa.572.0.i.i = phi ptr [ %i.gk, %bb.ap ], [ %i.fw, %bb.an ], !dbg !16148
  %.sroa.070.0.i.i = phi ptr [ %.sroa.070.0.copyload71.i.i, %bb.ap ], [ @_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE, %bb.an ], !dbg !16148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !16149, !noalias !15861
  store i64 %.pre-phi171.i, ptr %.sroa.30.i, align 8, !dbg !16146, !alias.scope !15856, !noalias !15874
  br label %bb.ar, !dbg !16150

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread33: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15996, !noalias !15861
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16152
  store i64 3, ptr %0, align 8, !dbg !16153
  br label %bb.bi, !dbg !16154

bb.ar:                                            ; preds = %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i, %.loopexit.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.i = phi ptr [ %3, %.loopexit.i ], [ %.sroa.5.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i ], [ %.sroa.572.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i ], !dbg !16054 ; 2 uses
  %.sroa.26.0.ph.ph.i = phi i64 [ %.sroa.26.1.i, %.loopexit.i ], [ %.sroa.6.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i ], [ %.sroa.675.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i ]
  %.sroa.12.0.ph.ph.i = phi ptr [ %.sroa.12.1.i, %.loopexit.i ], [ %.sroa.0.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i ], [ %.sroa.070.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15996, !noalias !15861
  %i.gm = icmp eq ptr %.sroa.12.0.ph.ph.i, null, !dbg !16054
  br i1 %i.gm, label %.thread108.i, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread, !dbg !16054

bb.as:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15996, !noalias !15861
  call void @_RNvMs1_NtNtCsfUalJnHtWpm_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac), !dbg !16155, !noalias !15922
  %i.gn = load i64, ptr %i.z, align 8, !dbg !16156, !range !871, !noalias !15896, !noundef !465 ; 3 uses
  %.not.i = icmp eq i64 %i.gn, -2, !dbg !16156
  br i1 %.not.i, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, label %bb.at, !dbg !16157

bb.at:                                            ; preds = %bb.as
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !16158
  %.sroa.563.0.copyload.i = load ptr, ptr %.sroa.563.0..sroa_idx.i, align 8, !dbg !16158, !noalias !15896 ; 3 uses
  %i.go = icmp eq i64 %i.gn, -1, !dbg !16159
  br i1 %i.go, label %bb.au, label %bb.av, !dbg !16160

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload.i) ]
  br label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, !dbg !16161

bb.av:                                            ; preds = %bb.at
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !16158
  %.sroa.770.i.sroa.0.0.copyload = load ptr, ptr %.sroa.666.0..sroa_idx.i, align 8, !dbg !16162, !noalias !15896
  %.sroa.770.i.sroa.4.0..sroa.666.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !16162
  %.sroa.770.i.sroa.4.0.copyload = load i64, ptr %.sroa.770.i.sroa.4.0..sroa.666.0..sroa_idx.i.sroa_idx, align 8, !dbg !16162, !noalias !15896
  %.sroa.770.i.sroa.5.0..sroa.666.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32, !dbg !16162
  %.sroa.770.i.sroa.5.0.copyload = load i64, ptr %.sroa.770.i.sroa.5.0..sroa.666.0..sroa_idx.i.sroa_idx, align 8, !dbg !16162, !noalias !15896
  %.sroa.770.i.sroa.6.0..sroa.666.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40, !dbg !16162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6.0..sroa.666.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !dbg !16162
  br label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, !dbg !16163

.thread108.i:                                     ; preds = %bb.ar, %.thread112.i, %bb.a
  %i.gp = phi ptr [ %i.ce, %.thread112.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.i, %bb.ar ], [ %i.ah, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !16164, !noalias !15896
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  store ptr %i.gp, ptr %i.ab, align 8, !dbg !16164, !noalias !15896
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !16165
  %i.gr = load i8, ptr %i.gq, align 8, !dbg !16165, !range !537, !alias.scope !15854, !noalias !15924, !noundef !465
  %i.gs = trunc nuw i8 %i.gr to i1, !dbg !16165
  br i1 %i.gs, label %bb.aw, label %bb.ax, !dbg !16166

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %bb.ar
  %.sroa.30.i.0..sroa.30.i.0..sroa.30.i.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload107.i = load i64, ptr %.sroa.30.i, align 8, !dbg !16054, !noalias !15896
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16152
  br label %bb.bh, !dbg !16167

bb.aw:                                            ; preds = %.thread108.i
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 137, !dbg !16168
  store i8 1, ptr %i.gt, align 1, !dbg !16168, !alias.scope !15854, !noalias !15924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !16169, !noalias !15896
  invoke void @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status13to_header_map(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.az unwind label %bb.ay, !dbg !16170, !noalias !15922

bb.ax:                                            ; preds = %.thread108.i, %bb.ba
  %.sroa.20.0 = phi i64 [ %.sroa.20.16.copyload, %bb.ba ], [ undef, %.thread108.i ], !dbg !16171
  %.sroa.19.0 = phi i64 [ %.sroa.19.16.copyload, %bb.ba ], [ undef, %.thread108.i ], !dbg !16171
  %.sroa.16.0 = phi ptr [ %.sroa.16.16.copyload, %bb.ba ], [ undef, %.thread108.i ], !dbg !16171
  %.sroa.10.0 = phi ptr [ %i.gy, %bb.ba ], [ %i.gp, %.thread108.i ], !dbg !16172
  %.sroa.0.0 = phi i64 [ %i.gv, %bb.ba ], [ -2, %.thread108.i ], !dbg !16172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !16173, !noalias !15896
  br label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, !dbg !16173

bb.ay:                                            ; preds = %bb.aw
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #31
          to label %common.resume unwind label %bb.bb, !dbg !16173, !noalias !15922

bb.az:                                            ; preds = %bb.aw
  %i.gv = load i64, ptr %i.aa, align 8, !dbg !16174, !range !480, !noalias !15896, !noundef !465 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1, !dbg !16174
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !16175
  %i.gy = load ptr, ptr %i.gx, align 8, !dbg !16175, !noalias !15896 ; 2 uses
  br i1 %i.gw, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39, label %bb.ba, !dbg !16176

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16177, !noalias !15896
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab), !dbg !16173, !noalias !15922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !16173, !noalias !15896
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16152
  br label %bb.bd, !dbg !16167

bb.ba:                                            ; preds = %bb.az
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !16178
  %.sroa.16.16.copyload = load ptr, ptr %.sroa.542.0..sroa_idx.i, align 8, !dbg !16178, !noalias !15928
  %.sroa.19.16..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !16178
  %.sroa.19.16.copyload = load i64, ptr %.sroa.19.16..sroa.542.0..sroa_idx.i.sroa_idx, align 8, !dbg !16178, !noalias !15928
  %.sroa.20.16..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !16178
  %.sroa.20.16.copyload = load i64, ptr %.sroa.20.16..sroa.542.0..sroa_idx.i.sroa_idx, align 8, !dbg !16178, !noalias !15928
  %.sroa.21.16..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40, !dbg !16178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.16..sroa.542.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !dbg !16178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16177, !noalias !15896
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab), !dbg !16173, !noalias !15922
  br label %bb.ax, !dbg !16173

bb.bb:                                            ; preds = %bb.ay
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16179, !noalias !15922
  unreachable, !dbg !16179

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.as, %bb.au, %bb.av, %bb.ax
  %.sroa.20.1 = phi i64 [ %.sroa.20.0, %bb.ax ], [ undef, %bb.as ], [ undef, %bb.au ], [ %.sroa.770.i.sroa.5.0.copyload, %bb.av ], !dbg !16171
  %.sroa.19.1 = phi i64 [ %.sroa.19.0, %bb.ax ], [ undef, %bb.as ], [ undef, %bb.au ], [ %.sroa.770.i.sroa.4.0.copyload, %bb.av ], !dbg !16171
  %.sroa.16.1 = phi ptr [ %.sroa.16.0, %bb.ax ], [ undef, %bb.as ], [ undef, %bb.au ], [ %.sroa.770.i.sroa.0.0.copyload, %bb.av ], !dbg !16171
  %.sroa.10.1 = phi ptr [ %.sroa.10.0, %bb.ax ], [ undef, %bb.as ], [ %.sroa.563.0.copyload.i, %bb.au ], [ %.sroa.563.0.copyload.i, %bb.av ], !dbg !16171 ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.ax ], [ -3, %bb.as ], [ -2, %bb.au ], [ %i.gn, %bb.av ], !dbg !16180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16152
  switch i64 %.sroa.0.1, label %bb.bh [
    i64 -2, label %bb.bd
    i64 -3, label %bb.bc
  ], !dbg !16167

bb.bc:                                            ; preds = %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit
  store i64 -3, ptr %0, align 8, !dbg !16181
  br label %bb.bi, !dbg !16182

bb.bd:                                            ; preds = %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39
  %.sroa.10.145 = phi ptr [ %i.gy, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39 ], [ %.sroa.10.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15929
  store ptr %.sroa.10.145, ptr %i.a, align 8, !noalias !15930
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !16183
  %i.ha = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 8, i64 noundef range(i64 1, 9) 8) #34, !dbg !16184 ; 3 uses
  %i.hb = icmp eq ptr %i.ha, null, !dbg !16185
  br i1 %i.hb, label %bb.be, label %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, !dbg !16186, !prof !479

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc.i.i.i.i6 unwind label %bb.bf, !dbg !16187

.noexc.i.i.i.i6:                                  ; preds = %bb.be
  unreachable, !dbg !16187

bb.bf:                                            ; preds = %bb.be
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %common.resume unwind label %bb.bg, !dbg !16188

bb.bg:                                            ; preds = %bb.bf
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16189
  unreachable, !dbg !16189

_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.bd
  store ptr %.sroa.10.145, ptr %i.ha, align 8, !dbg !16190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16191, !noalias !15929
  %i.he = call noundef nonnull align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status10from_error(ptr noundef nonnull %i.ha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @259), !dbg !16192
  store i64 -2, ptr %0, align 8, !dbg !16193
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16193
  store ptr %i.he, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !16193
  br label %bb.bi, !dbg !16194

bb.bh:                                            ; preds = %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.132 = phi i64 [ -1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.0.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.10.131 = phi ptr [ %.sroa.12.0.ph.ph.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.10.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.16.130 = phi ptr [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.16.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.19.129 = phi i64 [ %.sroa.26.0.ph.ph.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.19.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.20.128 = phi i64 [ %.sroa.30.i.0..sroa.30.i.0..sroa.30.i.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload107.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.20.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.822.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6, i64 56, i1 false), !dbg !16196
  store i64 %.sroa.0.132, ptr %0, align 8, !dbg !16195
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16195
  store ptr %.sroa.10.131, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !16195
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16195
  store ptr %.sroa.16.130, ptr %.sroa.519.0..sroa_idx, align 8, !dbg !16195
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16195
  store i64 %.sroa.19.129, ptr %.sroa.620.0..sroa_idx, align 8, !dbg !16195
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16195
  store i64 %.sroa.20.128, ptr %.sroa.721.0..sroa_idx, align 8, !dbg !16195
  br label %bb.bi, !dbg !16197

bb.bi:                                            ; preds = %bb.bc, %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, %bb.bh, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread33
  ret void, !dbg !16198
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #4 !dbg !16199 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137, !dbg !16201
  %.val = load i8, ptr %i.a, align 1, !dbg !16201, !range !537, !noundef !465
  %i.b = trunc nuw i8 %.val to i1, !dbg !16202
  ret i1 %i.b, !dbg !16203
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 !dbg !16204 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16212
  store i64 0, ptr %i.a, align 8, !dbg !16212, !alias.scope !16211
  store i64 0, ptr %0, align 8, !dbg !16212, !alias.scope !16211
  ret void, !dbg !16213
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtCsaCYLheajBls_5hyper5error5ErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16214 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !16275, !nonnull !465, !noundef !465 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !16276
  store atomic i8 1, ptr %i.e seq_cst, align 1, !dbg !16277
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !16278
  %i.g = atomicrmw xchg ptr %i.f, i8 1 seq_cst, align 1, !dbg !16279
  %.not.i = icmp eq i8 %i.g, 0, !dbg !16280
  br i1 %.not.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16281

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !16282 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !16283, !align !617, !noundef !465 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !16283
  %i.k = load ptr, ptr %i.j, align 8, !dbg !16283 ; 2 uses
  store ptr null, ptr %i.h, align 8, !dbg !16284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16285
  store ptr %i.h, ptr %i.c, align 8, !dbg !16285
  invoke void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !16286

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16287
  %i.l = icmp eq ptr %i.i, null, !dbg !16288
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.c, !dbg !16288

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16289
  %i.n = load ptr, ptr %i.m, align 8, !dbg !16289, !nonnull !465, !noundef !465
  call void %i.n(ptr noundef %i.k), !dbg !16289, !inline_history !16247
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16289

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !16290
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1, !dbg !16291
  %.not9.i = icmp eq i8 %i.p, 0, !dbg !16292
  br i1 %.not9.i, label %bb.g, label %_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations.exit, !dbg !16293

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i: ; preds = %bb.k, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ab, %bb.k ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn.i, !dbg !16294

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq ptr %i.i, null, !dbg !16295
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i, label %bb.e, !dbg !16295

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16296
  %i.t = load ptr, ptr %i.s, align 8, !dbg !16296, !nonnull !465, !noundef !465
  invoke void %i.t(ptr noundef %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i unwind label %bb.f, !dbg !16296, !inline_history !346

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16294
  unreachable, !dbg !16294

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !16297 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16298
  store ptr %i.v, ptr %i.b, align 8, !dbg !16298
  %i.w = load ptr, ptr %i.v, align 8, !dbg !16299, !align !617, !noundef !465 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !16299
  %i.y = load ptr, ptr %i.x, align 8, !dbg !16299 ; 2 uses
  store ptr null, ptr %i.v, align 8, !dbg !16300
  %.not10.i = icmp eq ptr %i.w, null, !dbg !16301
  br i1 %.not10.i, label %bb.i, label %bb.h, !dbg !16302

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16303
  store ptr %i.v, ptr %i.a, align 8, !dbg !16303
  invoke void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit20.i unwind label %bb.k, !dbg !16304

bb.i:                                             ; preds = %bb.g
  call void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !16305
  br label %bb.j, !dbg !16306

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit20.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16307
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !16308
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !16308, !nonnull !465, !noundef !465
  call void %i.aa(ptr noundef %i.y), !dbg !16308, !inline_history !16266
  br label %bb.j, !dbg !16308

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit20.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16306
  br label %_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations.exit, !dbg !16309

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !16310
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !16310, !nonnull !465, !noundef !465
  invoke void %i.ad(ptr noundef %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i unwind label %bb.f, !dbg !16310, !inline_history !389

_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, %bb.j
  ret void, !dbg !16311
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16312 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !16373, !nonnull !465, !noundef !465 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168, !dbg !16374
  store atomic i8 1, ptr %i.e seq_cst, align 1, !dbg !16375
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 136, !dbg !16376
  %i.g = atomicrmw xchg ptr %i.f, i8 1 seq_cst, align 1, !dbg !16377
  %.not.i = icmp eq i8 %i.g, 0, !dbg !16378
  br i1 %.not.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16379

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !16380 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !16381, !align !617, !noundef !465 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !16381
  %i.k = load ptr, ptr %i.j, align 8, !dbg !16381 ; 2 uses
  store ptr null, ptr %i.h, align 8, !dbg !16382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16383
  store ptr %i.h, ptr %i.c, align 8, !dbg !16383
  invoke void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !16384

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16385
  %i.l = icmp eq ptr %i.i, null, !dbg !16386
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.c, !dbg !16386

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16387
  %i.n = load ptr, ptr %i.m, align 8, !dbg !16387, !nonnull !465, !noundef !465
  call void %i.n(ptr noundef %i.k), !dbg !16387, !inline_history !16345
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16387

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 160, !dbg !16388
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1, !dbg !16389
  %.not9.i = icmp eq i8 %i.p, 0, !dbg !16390
  br i1 %.not9.i, label %bb.g, label %_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapE7drop_rxCsbaWXNhtWAp9_11foundations.exit, !dbg !16391

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i: ; preds = %bb.k, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ab, %bb.k ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn.i, !dbg !16392

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq ptr %i.i, null, !dbg !16393
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i, label %bb.e, !dbg !16393

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16394
  %i.t = load ptr, ptr %i.s, align 8, !dbg !16394, !nonnull !465, !noundef !465
  invoke void %i.t(ptr noundef %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i unwind label %bb.f, !dbg !16394, !inline_history !346

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16392
  unreachable, !dbg !16392

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 144, !dbg !16395 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16396
  store ptr %i.v, ptr %i.b, align 8, !dbg !16396
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!15791 = distinct !{!15791, !15787, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!15792 = distinct !DILocation(line: 259, column: 33, scope: !400, inlinedAt: !15789)
!15793 = distinct !DILocation(line: 260, column: 27, scope: !402, inlinedAt: !15789)
!15794 = distinct !DILocation(line: 1878, column: 19, scope: !404, inlinedAt: !15793)
!15795 = distinct !DILocation(line: 1882, column: 5, scope: !405, inlinedAt: !15793)
!15796 = distinct !DILocation(line: 643, column: 18, scope: !411, inlinedAt: !15795)
!15797 = distinct !DILocation(line: 1196, column: 29, scope: !410, inlinedAt: !15796)
!15798 = distinct !DILocation(line: 267, column: 28, scope: !409, inlinedAt: !15797)
!15799 = distinct !DILocation(line: 47, column: 47, scope: !407, inlinedAt: !15798)
!15800 = distinct !DILocation(line: 261, column: 40, scope: !412, inlinedAt: !15789)
!15801 = distinct !{!15801, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!15802 = distinct !{!15802, !15801, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!15803 = distinct !DILocation(line: 262, column: 19, scope: !414, inlinedAt: !15789)
!15804 = distinct !DILocation(line: 695, column: 25, scope: !416, inlinedAt: !15803)
!15805 = distinct !DILocation(line: 698, column: 18, scope: !416, inlinedAt: !15803)
!15806 = distinct !{!15806, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!15807 = distinct !{!15807, !15806, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!15808 = distinct !{!15808, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!15809 = distinct !{!15809, !15808, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!15810 = distinct !DILocation(line: 264, column: 13, scope: !412, inlinedAt: !15789)
!15811 = distinct !DILocation(line: 848, column: 1, scope: !94, inlinedAt: !15810)
!15812 = distinct !DILocation(line: 669, column: 25, scope: !92, inlinedAt: !15811)
!15813 = distinct !DILocation(line: 658, column: 19, scope: !167, inlinedAt: !15812)
!15814 = distinct !DILocation(line: 20, column: 24, scope: !166, inlinedAt: !15813)
!15815 = distinct !DILocation(line: 1609, column: 29, scope: !165, inlinedAt: !15814)
!15816 = distinct !DILocation(line: 2539, column: 16, scope: !164, inlinedAt: !15815)
!15817 = distinct !DILocation(line: 20, column: 17, scope: !166, inlinedAt: !15813)
!15818 = distinct !DILocation(line: 702, column: 18, scope: !416, inlinedAt: !15803)
!15819 = distinct !DILocation(line: 653, column: 29, scope: !419, inlinedAt: !15818)
!15820 = distinct !DISubprogram(name: "map<core::result::Result<http::header::map::HeaderMap<http::header::value::HeaderValue>, tonic::status::Status>, core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>, tonic::codec::encode::{impl#4}::poll_frame::{closure_env#0}<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapNtNtCsfUalJnHtWpm_5tonic6status6StatusEE3mapIBJ_INtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEB1O_ENCNvXs2_NtNtB1S_5codec6encodeINtB43_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB7m_4once4OnceB5x_ENcNtIBJ_B5x_B1O_E2Ok0EENtB2F_4Body10poll_frame0ECsbaWXNhtWAp9_11foundations", scope: !544, file: !542, line: 1158, type: !466, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!15821 = distinct !DILocation(line: 331, column: 18, scope: !15583, inlinedAt: !15581)
!15822 = distinct !DISubprogram(name: "map<http::header::map::HeaderMap<http::header::value::HeaderValue>, tonic::status::Status, http_body::frame::Frame<bytes::bytes::Bytes>, fn(http::header::map::HeaderMap<http::header::value::HeaderValue>) -> http_body::frame::Frame<bytes::bytes::Bytes>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapNtNtCsfUalJnHtWpm_5tonic6status6StatusE3mapINtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvMB2c_B29_8trailersECsbaWXNhtWAp9_11foundations", scope: !636, file: !558, line: 832, type: !466, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!15823 = distinct !DISubprogram(name: "{closure#0}<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>", linkageName: "_RNCNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB7_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3F_4once4OnceB1Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1Q_NtNtBb_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frame0CsbaWXNhtWAp9_11foundations", scope: !15923, file: !538, line: 331, type: !466, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!15824 = distinct !DILexicalBlock(scope: !15820, file: !542, line: 1163, column: 13)
!15825 = distinct !DILocation(line: 1163, column: 29, scope: !15824, inlinedAt: !15821)
!15826 = distinct !DILocation(line: 331, column: 28, scope: !15823, inlinedAt: !15825)
!15827 = distinct !DILexicalBlock(scope: !15583, file: !538, line: 321, column: 13)
!15828 = distinct !DISubprogram(name: "from<core::option::Option<core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>>>", linkageName: "_RNvXs1_NtNtCs3oUPovFnLWP_4core4task4pollINtB5_4PollINtNtB9_6option6OptionINtNtB9_6result6ResultINtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtCsfUalJnHtWpm_5tonic6status6StatusEEEINtNtB9_7convert4FromBN_E4fromCsbaWXNhtWAp9_11foundations", scope: !15925, file: !589, line: 228, type: !466, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!15829 = distinct !DISubprogram(name: "into<core::option::Option<core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>>, core::task::poll::Poll<core::option::Option<core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>>>>", linkageName: "_RNvXs1_NtCs3oUPovFnLWP_4core7convertINtNtB7_6option6OptionINtNtB7_6result6ResultINtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtCsfUalJnHtWpm_5tonic6status6StatusEEINtB5_4IntoINtNtNtB7_4task4poll4PollBy_EE4intoCsbaWXNhtWAp9_11foundations", scope: !505, file: !503, line: 779, type: !466, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!15830 = distinct !DISubprogram(name: "branch<http::header::map::HeaderMap<http::header::value::HeaderValue>, tonic::status::Status>", linkageName: "_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapNtNtCsfUalJnHtWpm_5tonic6status6StatusENtNtNtB7_3ops9try_trait3Try6branchCsbaWXNhtWAp9_11foundations", scope: !560, file: !558, line: 2174, type: !466, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!15831 = distinct !DILocation(line: 325, column: 45, scope: !15827, inlinedAt: !15581)
!15832 = distinct !{!15832, !"_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations"}
!15833 = distinct !{!15833, !15832, !"_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations: argument 0"}
!15834 = distinct !{!15834, !"_RINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB6_6Status9map_errorBz_ECsbaWXNhtWAp9_11foundations"}
!15835 = distinct !{!15835, !15834, !"_RINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB6_6Status9map_errorBz_ECsbaWXNhtWAp9_11foundations: argument 0"}
!15836 = distinct !{!15836, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsfUalJnHtWpm_5tonic6status6StatusINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2g_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations"}
!15837 = distinct !{!15837, !15836, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsfUalJnHtWpm_5tonic6status6StatusINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2g_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations: argument 0"}
!15838 = distinct !{!15838, !"_RNvXse_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsfUalJnHtWpm_5tonic6status6StatusE4fromCsbaWXNhtWAp9_11foundations"}
!15839 = distinct !{!15839, !15838, !"_RNvXse_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsfUalJnHtWpm_5tonic6status6StatusE4fromCsbaWXNhtWAp9_11foundations: argument 0"}
!15840 = distinct !{!15840, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCsfUalJnHtWpm_5tonic6status6StatusE3newCsbaWXNhtWAp9_11foundations"}
!15841 = distinct !{!15841, !15840, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCsfUalJnHtWpm_5tonic6status6StatusE3newCsbaWXNhtWAp9_11foundations: argument 0"}
!15842 = distinct !DILexicalBlock(scope: !15578, file: !545, line: 66, column: 13)
!15843 = distinct !DILocation(line: 66, column: 65, scope: !15842)
!15844 = distinct !DILocation(line: 166, column: 5, scope: !451, inlinedAt: !15843)
!15845 = distinct !DILocation(line: 461, column: 53, scope: !450, inlinedAt: !15844)
!15846 = distinct !DILocation(line: 780, column: 9, scope: !33, inlinedAt: !15845)
!15847 = distinct !DILocation(line: 557, column: 9, scope: !32, inlinedAt: !15846)
!15848 = distinct !DILocation(line: 290, column: 19, scope: !31, inlinedAt: !15847)
!15849 = distinct !DILocation(line: 251, column: 18, scope: !9, inlinedAt: !15848)
!15850 = distinct !DILocation(line: 541, column: 14, scope: !8, inlinedAt: !15849)
!15851 = distinct !DILocation(line: 424, column: 9, scope: !7, inlinedAt: !15850)
!15852 = distinct !DILocation(line: 302, column: 73, scope: !6, inlinedAt: !15851)
!15853 = distinct !DILexicalBlock(scope: !15578, file: !545, line: 65, column: 13)
!15854 = !{!15577}
!15855 = !DINamespace(name: "EncodeBody", scope: !540)
!15856 = !{!15585}
!15857 = !{!15586}
!15858 = !DINamespace(name: "{impl#1}", scope: !540)
!15859 = !{!15586, !15577}
!15860 = !{!15585, !15594, !15593, !15592}
!15861 = !{!15585, !15586, !15594, !15593, !15577, !15592}
!15862 = !{!15585, !15593}
!15863 = !{!15608}
!15864 = !{!15611, !15585, !15586, !15594, !15593, !15577, !15592}
!15865 = !{!15611, !15608, !15585, !15586, !15594, !15593, !15577, !15592}
!15866 = !{!15611, !15608, !15585, !15593}
!15867 = !{!15622}
!15868 = !{!15622, !15611, !15608, !15585, !15586, !15594, !15593, !15577, !15592}
!15869 = !{!15627}
!15870 = !{!15629}
!15871 = !{!15629, !15627}
!15872 = !{!15629, !15627, !15611, !15608, !15585, !15593}
!15873 = !{!15608, !15585, !15586, !15594, !15593, !15577, !15592}
!15874 = !{!15586, !15594, !15593, !15577, !15592}
!15875 = !{!15645}
!15876 = !{!15645, !15586, !15577}
!15877 = !{!15646, !15585, !15594, !15593, !15592}
!15878 = !{!15646, !15585, !15593}
!15879 = !DINamespace(name: "{impl#4}", scope: !576)
!15880 = !{!"branch_weights", !"expected", i32 2146411, i32 2145337237}
!15881 = !{!15645, !15646, !15585, !15586, !15594, !15593, !15577, !15592}
!15882 = !DINamespace(name: "EncodeBuf", scope: !638)
!15883 = !{!15665}
!15884 = !{!15666, !15645, !15646, !15585, !15586, !15594, !15593, !15577, !15592}
!15885 = !DINamespace(name: "{impl#5}", scope: !899)
!15886 = !DINamespace(name: "{impl#3}", scope: !633)
!15887 = !{!15665, !15666, !15646, !15585, !15593}
!15888 = !{!15691, !15690, !15665, !15666, !15646, !15585, !15594, !15593, !15592}
!15889 = !DINamespace(name: "{impl#0}", scope: !606)
!15890 = !DINamespace(name: "{impl#19}", scope: !511)
!15891 = !DILexicalBlockFile(scope: !15720, file: !627, discriminator: 2)
!15892 = !{!15665, !15646, !15585, !15593}
!15893 = !{!15727, !15665, !15666, !15645, !15646, !15585, !15586, !15594, !15593, !15577, !15592}
!15894 = !DINamespace(name: "{impl#7}", scope: !576)
!15895 = !DINamespace(name: "{impl#8}", scope: !576)
!15896 = !{!15593, !15577, !15592}
!15897 = !DILexicalBlockFile(scope: !15597, file: !562, discriminator: 0)
!15898 = !{!15751}
!15899 = !{!15754, !15585, !15586, !15594, !15593, !15577, !15592}
!15900 = !{!15754, !15751, !15585, !15586, !15594, !15593, !15577, !15592}
!15901 = !{!15754, !15751, !15585, !15593}
!15902 = !{!15765}
!15903 = !{!15765, !15754, !15751, !15585, !15586, !15594, !15593, !15577, !15592}
!15904 = !{!15770}
!15905 = !{!15772}
!15906 = !{!15772, !15770}
!15907 = !{!15772, !15770, !15754, !15751, !15585, !15593}
!15908 = !{!15751, !15585, !15586, !15594, !15593, !15577, !15592}
!15909 = !DILexicalBlockFile(scope: !15642, file: !562, discriminator: 0)
!15910 = !{!15784, !15586, !15577}
!15911 = !{!15788}
!15912 = !{!15791, !15585, !15586, !15594, !15593, !15577, !15592}
!15913 = !{!15791, !15788, !15585, !15586, !15594, !15593, !15577, !15592}
!15914 = !{!15791, !15788, !15585, !15593}
!15915 = !{!15802}
!15916 = !{!15802, !15791, !15788, !15585, !15586, !15594, !15593, !15577, !15592}
!15917 = !{!15807}
!15918 = !{!15809}
!15919 = !{!15809, !15807}
!15920 = !{!15809, !15807, !15791, !15788, !15585, !15593}
!15921 = !{!15788, !15585, !15586, !15594, !15593, !15577, !15592}
!15922 = !{!15593}
!15923 = !DINamespace(name: "poll_frame", scope: !541)
!15924 = !{!15593, !15592}
!15925 = !DINamespace(name: "{impl#3}", scope: !591)
!15926 = !DILocation(line: 0, scope: !15827, inlinedAt: !15581)
!15927 = !DILocation(line: 780, column: 9, scope: !15829, inlinedAt: !15926)
!15928 = !{!15577, !15592}
!15929 = !{!15839, !15837, !15835, !15833}
!15930 = !{!15841, !15839, !15837, !15835, !15833}
!15931 = !DILocation(line: 62, column: 26, scope: !15578)
!15932 = !DILocation(line: 220, column: 5, scope: !15579, inlinedAt: !15582)
!15933 = !DILocation(line: 319, column: 22, scope: !15583, inlinedAt: !15581)
!15934 = !DILocation(line: 319, column: 38, scope: !15583, inlinedAt: !15581)
!15935 = !DILocation(line: 25, column: 5, scope: !15587, inlinedAt: !15590)
!15936 = !DILocation(line: 29, column: 5, scope: !15587, inlinedAt: !15590)
!15937 = !DILocation(line: 31, column: 5, scope: !15587, inlinedAt: !15590)
!15938 = !DILocation(line: 87, column: 39, scope: !15591, inlinedAt: !15589)
!15939 = !DILocation(line: 975, column: 22, scope: !15595, inlinedAt: !15600)
!15940 = !DILocation(line: 976, column: 49, scope: !15601, inlinedAt: !15600)
!15941 = !DILocation(line: 89, column: 31, scope: !15598, inlinedAt: !15589)
!15942 = !DILocation(line: 89, column: 16, scope: !15598, inlinedAt: !15589)
!15943 = !DILocation(line: 94, column: 13, scope: !15597, inlinedAt: !15589)
!15944 = !DILocation(line: 94, column: 19, scope: !15597, inlinedAt: !15589)
!15945 = !DILocation(line: 94, column: 35, scope: !15597, inlinedAt: !15589)
!15946 = !DILocation(line: 211, column: 9, scope: !15602, inlinedAt: !15603)
!15947 = !DILocation(line: 95, column: 34, scope: !15597, inlinedAt: !15589)
!15948 = !DILocation(line: 211, column: 9, scope: !15602, inlinedAt: !15604)
!15949 = !DILocation(line: 98, column: 38, scope: !15597, inlinedAt: !15589)
!15950 = !DILocation(line: 196, column: 9, scope: !15605, inlinedAt: !15606)
!15951 = !DILocation(line: 102, column: 48, scope: !15597, inlinedAt: !15589)
!15952 = !DILocation(line: 102, column: 52, scope: !15597, inlinedAt: !15589)
!15953 = !DILocation(line: 102, column: 72, scope: !15597, inlinedAt: !15589)
!15954 = !DILocation(line: 1103, column: 9, scope: !398, inlinedAt: !15610)
!15955 = !DILocation(line: 256, column: 12, scope: !400, inlinedAt: !15609)
!15956 = !DILocation(line: 1165, column: 9, scope: !401, inlinedAt: !15612)
!15957 = !DILocation(line: 260, column: 21, scope: !402, inlinedAt: !15609)
!15958 = !DILocation(line: 260, column: 39, scope: !402, inlinedAt: !15609)
!15959 = !DILocation(line: 260, column: 59, scope: !402, inlinedAt: !15609)
!15960 = !DILocation(line: 260, column: 70, scope: !402, inlinedAt: !15609)
!15961 = !DILocation(line: 1054, column: 47, scope: !403, inlinedAt: !15614)
!15962 = !DILocation(line: 1054, column: 22, scope: !403, inlinedAt: !15614)
!15963 = !DILocation(line: 1879, column: 5, scope: !405, inlinedAt: !15613)
!15964 = !DILocation(line: 1880, column: 5, scope: !405, inlinedAt: !15613)
!15965 = !DILocation(line: 42, column: 26, scope: !406, inlinedAt: !15619)
!15966 = !DILocation(line: 1196, column: 18, scope: !410, inlinedAt: !15616)
!15967 = !DILocation(line: 261, column: 21, scope: !412, inlinedAt: !15609)
!15968 = !DILocation(line: 780, column: 9, scope: !413, inlinedAt: !15620)
!15969 = !DILocation(line: 262, column: 19, scope: !414, inlinedAt: !15609)
!15970 = !DILocation(line: 304, column: 9, scope: !415, inlinedAt: !15624)
!15971 = !DILocation(line: 695, column: 13, scope: !416, inlinedAt: !15623)
!15972 = !DILocation(line: 698, column: 13, scope: !416, inlinedAt: !15623)
!15973 = !DILocation(line: 304, column: 9, scope: !415, inlinedAt: !15625)
!15974 = !DILocation(line: 694, column: 9, scope: !912, inlinedAt: !15623)
!15975 = !DILocation(line: 694, column: 9, scope: !416, inlinedAt: !15623)
!15976 = !DILocation(line: 268, column: 23, scope: !400, inlinedAt: !15609)
!15977 = !DILocation(line: 269, column: 23, scope: !418, inlinedAt: !15609)
!15978 = !DILocation(line: 256, column: 9, scope: !400, inlinedAt: !15609)
!15979 = !DILocation(line: 264, column: 13, scope: !412, inlinedAt: !15609)
!15980 = !DILocation(line: 848, column: 1, scope: !94, inlinedAt: !15630)
!15981 = !DILocation(line: 2437, column: 9, scope: !163, inlinedAt: !15636)
!15982 = !DILocation(line: 658, column: 32, scope: !168, inlinedAt: !15637)
!15983 = !DILocation(line: 670, column: 18, scope: !93, inlinedAt: !15631)
!15984 = !DILocation(line: 670, column: 43, scope: !93, inlinedAt: !15631)
!15985 = !DILocation(line: 652, column: 9, scope: !419, inlinedAt: !15638)
!15986 = !DILocation(line: 653, column: 20, scope: !419, inlinedAt: !15638)
!15987 = !DILocation(line: 871, column: 18, scope: !420, inlinedAt: !15639)
!15988 = !DILocation(line: 704, column: 6, scope: !416, inlinedAt: !15623)
!15989 = !DILocation(line: 263, column: 17, scope: !414, inlinedAt: !15609)
!15990 = !DILocation(line: 264, column: 13, scope: !402, inlinedAt: !15609)
!15991 = !DILocation(line: 102, column: 28, scope: !15597, inlinedAt: !15589)
!15992 = !DILocation(line: 254, column: 5, scope: !399, inlinedAt: !15609)
!15993 = !DILocation(line: 0, scope: !15578)
!15994 = !DILocation(line: 0, scope: !400, inlinedAt: !15609)
!15995 = !DILocation(line: 102, column: 79, scope: !15597, inlinedAt: !15589)
!15996 = !DILocation(line: 128, column: 13, scope: !15597, inlinedAt: !15589)
!15997 = !DILocation(line: 121, column: 38, scope: !15597, inlinedAt: !15589)
!15998 = !DILocation(line: 211, column: 9, scope: !15602, inlinedAt: !15641)
!15999 = !DILocation(line: 122, column: 24, scope: !15640, inlinedAt: !15589)
!16000 = !DILocation(line: 104, column: 37, scope: !15597, inlinedAt: !15589)
!16001 = !DILocation(line: 110, column: 25, scope: !15643, inlinedAt: !15589)
!16002 = !DILocation(line: 105, column: 42, scope: !15643, inlinedAt: !15589)
!16003 = !DILocation(line: 196, column: 9, scope: !15647, inlinedAt: !15650)
!16004 = !DILocation(line: 226, column: 9, scope: !15651, inlinedAt: !15656)
!16005 = !DILocation(line: 612, column: 19, scope: !15653, inlinedAt: !15655)
!16006 = !DILocation(line: 614, column: 12, scope: !15657, inlinedAt: !15655)
!16007 = !DILocation(line: 621, column: 22, scope: !15657, inlinedAt: !15655)
!16008 = !DILocation(line: 1273, column: 25, scope: !15658, inlinedAt: !15659)
!16009 = !DILocation(line: 196, column: 9, scope: !15647, inlinedAt: !15660)
!16010 = !DILocation(line: 1274, column: 12, scope: !15661, inlinedAt: !15659)
!16011 = !DILocation(line: 1281, column: 9, scope: !15661, inlinedAt: !15659)
!16012 = !DILocation(line: 173, column: 21, scope: !15654, inlinedAt: !15649)
!16013 = !DILocation(line: 173, column: 32, scope: !15654, inlinedAt: !15649)
!16014 = !DILocation(line: 57, column: 9, scope: !15662, inlinedAt: !15663)
!16015 = !DILocation(line: 173, column: 14, scope: !15654, inlinedAt: !15649)
!16016 = !DILocation(line: 98, column: 14, scope: !15667, inlinedAt: !15668)
!16017 = !DILocation(line: 970, column: 18, scope: !15669, inlinedAt: !15682)
!16018 = !DILocation(line: 128, column: 19, scope: !15683, inlinedAt: !15688)
!16019 = !DILocation(line: 859, column: 9, scope: !15674, inlinedAt: !15679)
!16020 = !DILocation(line: 196, column: 9, scope: !15692, inlinedAt: !15702)
!16021 = !DILocation(line: 1268, column: 9, scope: !15693, inlinedAt: !15701)
!16022 = !DILocation(line: 52, column: 12, scope: !15703, inlinedAt: !15677)
!16023 = !DILocation(line: 970, column: 18, scope: !15704, inlinedAt: !15715)
!16024 = !DILocation(line: 1663, column: 9, scope: !15716, inlinedAt: !15722)
!16025 = !DILocation(line: 180, column: 28, scope: !15719, inlinedAt: !15721)
!16026 = !DILocation(line: 5, column: 28, scope: !15723, inlinedAt: !15711)
!16027 = !DILocation(line: 627, column: 28, scope: !15724, inlinedAt: !15725)
!16028 = !DILocation(line: 102, column: 5, scope: !15667, inlinedAt: !15668)
!16029 = !DILocation(line: 1184, column: 17, scope: !15728, inlinedAt: !15729)
!16030 = !DILocation(line: 1184, column: 23, scope: !15730, inlinedAt: !15729)
!16031 = !DILocation(line: 848, column: 1, scope: !253, inlinedAt: !15732)
!16032 = !DILocation(line: 848, column: 1, scope: !255, inlinedAt: !15733)
!16033 = !DILocation(line: 848, column: 1, scope: !255, inlinedAt: !15734)
!16034 = !DILocation(line: 173, column: 51, scope: !15654, inlinedAt: !15649)
!16035 = !DILocation(line: 174, column: 80, scope: !15654, inlinedAt: !15649)
!16036 = !DILocation(line: 1008, column: 63, scope: !15735, inlinedAt: !15740)
!16037 = !DILocation(line: 557, column: 12, scope: !15741, inlinedAt: !15744)
!16038 = !DILocation(line: 97, column: 5, scope: !15667, inlinedAt: !15668)
!16039 = !DILocation(line: 1275, column: 35, scope: !15661, inlinedAt: !15659)
!16040 = !DILocation(line: 1275, column: 13, scope: !15661, inlinedAt: !15659)
!16041 = !DILocation(line: 558, column: 13, scope: !15741, inlinedAt: !15744)
!16042 = !DILocation(line: 179, column: 1, scope: !15648, inlinedAt: !15649)
!16043 = !DILocation(line: 133, column: 1, scope: !15648, inlinedAt: !15649)
!16044 = !DILocation(line: 1008, column: 44, scope: !15735, inlinedAt: !15740)
!16045 = !DILocation(line: 562, column: 27, scope: !15741, inlinedAt: !15744)
!16046 = !DILocation(line: 102, column: 24, scope: !15746, inlinedAt: !15748)
!16047 = !DILocation(line: 178, column: 5, scope: !15654, inlinedAt: !15649)
!16048 = !DILocation(line: 105, column: 28, scope: !15643, inlinedAt: !15589)
!16049 = !DILocation(line: 196, column: 9, scope: !15605, inlinedAt: !15749)
!16050 = !DILocation(line: 117, column: 24, scope: !15642, inlinedAt: !15589)
!16051 = !DILocation(line: 319, scope: !15583, inlinedAt: !15581)
!16052 = !DILocation(line: 0, scope: !15642, inlinedAt: !15589)
!16053 = !DILocation(line: 120, column: 17, scope: !15597, inlinedAt: !15589)
!16054 = !DILocation(line: 319, column: 15, scope: !15583, inlinedAt: !15581)
!16055 = !DILocation(line: 0, scope: !15897, inlinedAt: !15589)
!16056 = !DILocation(line: 93, column: 9, scope: !15597, inlinedAt: !15589)
!16057 = !DILocation(line: 118, column: 52, scope: !15642, inlinedAt: !15589)
!16058 = !DILocation(line: 118, column: 56, scope: !15642, inlinedAt: !15589)
!16059 = !DILocation(line: 118, column: 76, scope: !15642, inlinedAt: !15589)
!16060 = !DILocation(line: 1103, column: 9, scope: !398, inlinedAt: !15753)
!16061 = !DILocation(line: 256, column: 12, scope: !400, inlinedAt: !15752)
!16062 = !DILocation(line: 1165, column: 9, scope: !401, inlinedAt: !15755)
!16063 = !DILocation(line: 260, column: 21, scope: !402, inlinedAt: !15752)
!16064 = !DILocation(line: 260, column: 39, scope: !402, inlinedAt: !15752)
!16065 = !DILocation(line: 260, column: 59, scope: !402, inlinedAt: !15752)
!16066 = !DILocation(line: 260, column: 70, scope: !402, inlinedAt: !15752)
!16067 = !DILocation(line: 1054, column: 47, scope: !403, inlinedAt: !15757)
!16068 = !DILocation(line: 1054, column: 22, scope: !403, inlinedAt: !15757)
!16069 = !DILocation(line: 1879, column: 5, scope: !405, inlinedAt: !15756)
!16070 = !DILocation(line: 1880, column: 5, scope: !405, inlinedAt: !15756)
!16071 = !DILocation(line: 42, column: 26, scope: !406, inlinedAt: !15762)
!16072 = !DILocation(line: 1196, column: 18, scope: !410, inlinedAt: !15759)
!16073 = !DILocation(line: 261, column: 21, scope: !412, inlinedAt: !15752)
!16074 = !DILocation(line: 780, column: 9, scope: !413, inlinedAt: !15763)
!16075 = !DILocation(line: 262, column: 19, scope: !414, inlinedAt: !15752)
!16076 = !DILocation(line: 304, column: 9, scope: !415, inlinedAt: !15767)
!16077 = !DILocation(line: 695, column: 13, scope: !416, inlinedAt: !15766)
!16078 = !DILocation(line: 698, column: 13, scope: !416, inlinedAt: !15766)
!16079 = !DILocation(line: 304, column: 9, scope: !415, inlinedAt: !15768)
!16080 = !DILocation(line: 694, column: 9, scope: !912, inlinedAt: !15766)
!16081 = !DILocation(line: 694, column: 9, scope: !416, inlinedAt: !15766)
!16082 = !DILocation(line: 268, column: 23, scope: !400, inlinedAt: !15752)
!16083 = !DILocation(line: 269, column: 23, scope: !418, inlinedAt: !15752)
!16084 = !DILocation(line: 256, column: 9, scope: !400, inlinedAt: !15752)
!16085 = !DILocation(line: 264, column: 13, scope: !412, inlinedAt: !15752)
!16086 = !DILocation(line: 848, column: 1, scope: !94, inlinedAt: !15773)
!16087 = !DILocation(line: 2437, column: 9, scope: !163, inlinedAt: !15779)
!16088 = !DILocation(line: 658, column: 32, scope: !168, inlinedAt: !15780)
!16089 = !DILocation(line: 670, column: 18, scope: !93, inlinedAt: !15774)
!16090 = !DILocation(line: 670, column: 43, scope: !93, inlinedAt: !15774)
!16091 = !DILocation(line: 652, column: 9, scope: !419, inlinedAt: !15781)
!16092 = !DILocation(line: 653, column: 20, scope: !419, inlinedAt: !15781)
!16093 = !DILocation(line: 871, column: 18, scope: !420, inlinedAt: !15782)
!16094 = !DILocation(line: 704, column: 6, scope: !416, inlinedAt: !15766)
!16095 = !DILocation(line: 263, column: 17, scope: !414, inlinedAt: !15752)
!16096 = !DILocation(line: 264, column: 13, scope: !402, inlinedAt: !15752)
!16097 = !DILocation(line: 254, column: 5, scope: !399, inlinedAt: !15752)
!16098 = !DILocation(line: 0, scope: !400, inlinedAt: !15752)
!16099 = !DILocation(line: 118, column: 83, scope: !15642, inlinedAt: !15589)
!16100 = !DILocation(line: 118, column: 32, scope: !15642, inlinedAt: !15589)
!16101 = !DILocation(line: 0, scope: !15909, inlinedAt: !15589)
!16102 = !DILocation(line: 848, column: 1, scope: !256, inlinedAt: !15785)
!16103 = !DILocation(line: 196, column: 9, scope: !15605, inlinedAt: !15786)
!16104 = !DILocation(line: 125, column: 21, scope: !15640, inlinedAt: !15589)
!16105 = !DILocation(line: 77, column: 5, scope: !15588, inlinedAt: !15589)
!16106 = !DILocation(line: 126, column: 48, scope: !15640, inlinedAt: !15589)
!16107 = !DILocation(line: 126, column: 52, scope: !15640, inlinedAt: !15589)
!16108 = !DILocation(line: 126, column: 72, scope: !15640, inlinedAt: !15589)
!16109 = !DILocation(line: 1103, column: 9, scope: !398, inlinedAt: !15790)
!16110 = !DILocation(line: 256, column: 12, scope: !400, inlinedAt: !15789)
!16111 = !DILocation(line: 1165, column: 9, scope: !401, inlinedAt: !15792)
!16112 = !DILocation(line: 260, column: 21, scope: !402, inlinedAt: !15789)
!16113 = !DILocation(line: 260, column: 39, scope: !402, inlinedAt: !15789)
!16114 = !DILocation(line: 260, column: 59, scope: !402, inlinedAt: !15789)
!16115 = !DILocation(line: 260, column: 70, scope: !402, inlinedAt: !15789)
!16116 = !DILocation(line: 1054, column: 47, scope: !403, inlinedAt: !15794)
!16117 = !DILocation(line: 1054, column: 22, scope: !403, inlinedAt: !15794)
!16118 = !DILocation(line: 1879, column: 5, scope: !405, inlinedAt: !15793)
!16119 = !DILocation(line: 1880, column: 5, scope: !405, inlinedAt: !15793)
!16120 = !DILocation(line: 42, column: 26, scope: !406, inlinedAt: !15799)
!16121 = !DILocation(line: 1196, column: 18, scope: !410, inlinedAt: !15796)
!16122 = !DILocation(line: 261, column: 21, scope: !412, inlinedAt: !15789)
!16123 = !DILocation(line: 780, column: 9, scope: !413, inlinedAt: !15800)
!16124 = !DILocation(line: 262, column: 19, scope: !414, inlinedAt: !15789)
!16125 = !DILocation(line: 304, column: 9, scope: !415, inlinedAt: !15804)
!16126 = !DILocation(line: 695, column: 13, scope: !416, inlinedAt: !15803)
!16127 = !DILocation(line: 698, column: 13, scope: !416, inlinedAt: !15803)
!16128 = !DILocation(line: 304, column: 9, scope: !415, inlinedAt: !15805)
!16129 = !DILocation(line: 694, column: 9, scope: !912, inlinedAt: !15803)
!16130 = !DILocation(line: 694, column: 9, scope: !416, inlinedAt: !15803)
!16131 = !DILocation(line: 268, column: 23, scope: !400, inlinedAt: !15789)
!16132 = !DILocation(line: 269, column: 23, scope: !418, inlinedAt: !15789)
!16133 = !DILocation(line: 256, column: 9, scope: !400, inlinedAt: !15789)
!16134 = !DILocation(line: 264, column: 13, scope: !412, inlinedAt: !15789)
!16135 = !DILocation(line: 848, column: 1, scope: !94, inlinedAt: !15810)
!16136 = !DILocation(line: 2437, column: 9, scope: !163, inlinedAt: !15816)
!16137 = !DILocation(line: 658, column: 32, scope: !168, inlinedAt: !15817)
!16138 = !DILocation(line: 670, column: 18, scope: !93, inlinedAt: !15811)
!16139 = !DILocation(line: 670, column: 43, scope: !93, inlinedAt: !15811)
!16140 = !DILocation(line: 652, column: 9, scope: !419, inlinedAt: !15818)
!16141 = !DILocation(line: 653, column: 20, scope: !419, inlinedAt: !15818)
!16142 = !DILocation(line: 871, column: 18, scope: !420, inlinedAt: !15819)
!16143 = !DILocation(line: 704, column: 6, scope: !416, inlinedAt: !15803)
!16144 = !DILocation(line: 263, column: 17, scope: !414, inlinedAt: !15789)
!16145 = !DILocation(line: 264, column: 13, scope: !402, inlinedAt: !15789)
!16146 = !DILocation(line: 126, column: 28, scope: !15640, inlinedAt: !15589)
!16147 = !DILocation(line: 254, column: 5, scope: !399, inlinedAt: !15789)
!16148 = !DILocation(line: 0, scope: !400, inlinedAt: !15789)
!16149 = !DILocation(line: 126, column: 79, scope: !15640, inlinedAt: !15589)
!16150 = !DILocation(line: 126, column: 21, scope: !15640, inlinedAt: !15589)
!16151 = !DILocation(line: 333, column: 9, scope: !15583, inlinedAt: !15581)
!16152 = !DILocation(line: 334, column: 6, scope: !15580, inlinedAt: !15581)
!16153 = !DILocation(line: 63, column: 30, scope: !15578)
!16154 = !DILocation(line: 68, column: 5, scope: !15575)
!16155 = !DILocation(line: 330, column: 18, scope: !15583, inlinedAt: !15581)
!16156 = !DILocation(line: 1162, column: 15, scope: !15820, inlinedAt: !15821)
!16157 = !DILocation(line: 1162, column: 9, scope: !15820, inlinedAt: !15821)
!16158 = !DILocation(line: 1163, column: 18, scope: !15820, inlinedAt: !15821)
!16159 = !DILocation(line: 836, column: 15, scope: !15822, inlinedAt: !15826)
!16160 = !DILocation(line: 836, column: 9, scope: !15822, inlinedAt: !15826)
!16161 = !DILocation(line: 840, column: 5, scope: !15822, inlinedAt: !15826)
!16162 = !DILocation(line: 837, column: 16, scope: !15822, inlinedAt: !15826)
!16163 = !DILocation(line: 840, column: 6, scope: !15822, inlinedAt: !15826)
!16164 = !DILocation(line: 321, column: 22, scope: !15583, inlinedAt: !15581)
!16165 = !DILocation(line: 321, column: 40, scope: !15827, inlinedAt: !15581)
!16166 = !DILocation(line: 321, column: 34, scope: !15827, inlinedAt: !15581)
!16167 = !DILocation(line: 62, column: 9, scope: !15578)
!16168 = !DILocation(line: 324, column: 21, scope: !15827, inlinedAt: !15581)
!16169 = !DILocation(line: 325, column: 45, scope: !15827, inlinedAt: !15581)
!16170 = !DILocation(line: 325, column: 52, scope: !15827, inlinedAt: !15581)
!16171 = !DILocation(line: 62, scope: !15578)
!16172 = !DILocation(line: 229, column: 9, scope: !15828, inlinedAt: !15927)
!16173 = !DILocation(line: 327, column: 13, scope: !15583, inlinedAt: !15581)
!16174 = !DILocation(line: 2175, column: 15, scope: !15830, inlinedAt: !15831)
!16175 = !DILocation(line: 0, scope: !15830, inlinedAt: !15831)
!16176 = !DILocation(line: 2175, column: 9, scope: !15830, inlinedAt: !15831)
!16177 = !DILocation(line: 325, column: 67, scope: !15827, inlinedAt: !15581)
!16178 = !DILocation(line: 2176, column: 16, scope: !15830, inlinedAt: !15831)
!16179 = !DILocation(line: 314, column: 5, scope: !15580, inlinedAt: !15581)
!16180 = !DILocation(line: 0, scope: !15583, inlinedAt: !15581)
!16181 = !DILocation(line: 64, column: 34, scope: !15578)
!16182 = !DILocation(line: 64, column: 50, scope: !15578)
!16183 = !DILocation(line: 302, scope: !6, inlinedAt: !15851)
!16184 = !DILocation(line: 130, column: 9, scope: !10, inlinedAt: !15852)
!16185 = !DILocation(line: 251, column: 11, scope: !9, inlinedAt: !15848)
!16186 = !DILocation(line: 251, column: 5, scope: !9, inlinedAt: !15848)
!16187 = !DILocation(line: 253, column: 19, scope: !9, inlinedAt: !15848)
!16188 = !DILocation(line: 296, column: 5, scope: !31, inlinedAt: !15847)
!16189 = !DILocation(line: 288, column: 5, scope: !31, inlinedAt: !15847)
!16190 = !DILocation(line: 293, column: 56, scope: !34, inlinedAt: !15847)
!16191 = !DILocation(line: 296, column: 6, scope: !31, inlinedAt: !15847)
!16192 = !DILocation(line: 462, column: 9, scope: !452, inlinedAt: !15844)
!16193 = !DILocation(line: 66, column: 44, scope: !15842)
!16194 = !DILocation(line: 66, column: 80, scope: !15578)
!16195 = !DILocation(line: 65, column: 45, scope: !15853)
!16196 = !DILocation(line: 65, column: 33, scope: !15578)
!16197 = !DILocation(line: 65, column: 72, scope: !15578)
!16198 = !DILocation(line: 68, column: 6, scope: !15575)
!16199 = distinct !DISubprogram(name: "is_end_stream<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>, fn(tonic::status::Status) -> tonic::status::Status, tonic::status::Status>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations", scope: !573, file: !545, line: 70, type: !466, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16200 = distinct !DILocation(line: 71, column: 20, scope: !16199)
!16201 = !DILocation(line: 71, column: 20, scope: !16199)
!16202 = !DILocation(line: 311, column: 9, scope: !50, inlinedAt: !16200)
!16203 = !DILocation(line: 72, column: 6, scope: !16199)
!16204 = distinct !DISubprogram(name: "size_hint<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>, fn(tonic::status::Status) -> tonic::status::Status, tonic::status::Status>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !573, file: !545, line: 74, type: !466, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16205 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs1_NtCshXnn1MjyudA_9http_body9size_hintNtB5_8SizeHintNtNtCs3oUPovFnLWP_4core7default7Default7default", scope: !942, file: !940, line: 7, type: !466, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16206 = distinct !DISubprogram(name: "size_hint<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>>", linkageName: "_RNvYINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3x_4once4OnceB1I_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1I_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !944, file: !943, line: 85, type: !470, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16207 = distinct !DILocation(line: 75, column: 20, scope: !16204)
!16208 = distinct !DILocation(line: 86, column: 9, scope: !16206, inlinedAt: !16207)
!16209 = distinct !{!16209, !"_RNvYINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3x_4once4OnceB1I_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1I_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations"}
!16210 = distinct !{!16210, !16209, !"_RNvYINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3x_4once4OnceB1I_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1I_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations: argument 0"}
!16211 = !{!16210}
!16212 = !DILocation(line: 7, column: 17, scope: !16205, inlinedAt: !16208)
!16213 = !DILocation(line: 76, column: 6, scope: !16204)
!16214 = distinct !DISubprogram(name: "drop<hyper::error::Error>", linkageName: "_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtCsaCYLheajBls_5hyper5error5ErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations", scope: !948, file: !724, line: 479, type: !466, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16215 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<futures_channel::oneshot::Inner<hyper::error::Error>>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorEEE6as_refCsbaWXNhtWAp9_11foundations", scope: !647, file: !645, line: 450, type: !466, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16216 = distinct !DISubprogram(name: "deref<futures_channel::oneshot::Inner<hyper::error::Error>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsbaWXNhtWAp9_11foundations", scope: !838, file: !648, line: 2513, type: !466, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16217 = distinct !DISubprogram(name: "inner<futures_channel::oneshot::Inner<hyper::error::Error>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorEE5innerCsbaWXNhtWAp9_11foundations", scope: !650, file: !648, line: 2187, type: !466, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16218 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCsbaWXNhtWAp9_11foundations", scope: !659, file: !657, line: 2434, type: !466, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16219 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !655, file: !652, line: 791, type: !466, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16220 = distinct !DISubprogram(name: "drop_rx<hyper::error::Error>", linkageName: "_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations", scope: !831, file: !724, line: 300, type: !466, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16221 = distinct !DILocation(line: 480, column: 20, scope: !16214)
!16222 = distinct !DILocation(line: 303, column: 23, scope: !16220, inlinedAt: !16221)
!16223 = distinct !DILocation(line: 795, column: 60, scope: !16219, inlinedAt: !16222)
!16224 = distinct !DILocation(line: 795, column: 13, scope: !16219, inlinedAt: !16222)
!16225 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs2_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicbE4swap", scope: !655, file: !652, line: 825, type: !466, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16226 = distinct !DISubprogram(name: "try_lock<core::option::Option<core::task::wake::Waker>>", linkageName: "_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_4LockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBX_4task4wake5WakerEE8try_lockCsbaWXNhtWAp9_11foundations", scope: !836, file: !834, line: 52, type: !466, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16227 = distinct !DILexicalBlock(scope: !16220, file: !724, line: 309, column: 57)
!16228 = distinct !DILocation(line: 309, column: 46, scope: !16227, inlinedAt: !16221)
!16229 = distinct !DILocation(line: 53, column: 25, scope: !16226, inlinedAt: !16228)
!16230 = distinct !DILocation(line: 830, column: 41, scope: !16225, inlinedAt: !16229)
!16231 = distinct !DISubprogram(name: "atomic_swap<u8>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_swaphECsbaWXNhtWAp9_11foundations", scope: !654, file: !652, line: 4011, type: !466, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16232 = distinct !DILocation(line: 830, column: 22, scope: !16225, inlinedAt: !16229)
!16233 = distinct !DISubprogram(name: "replace<core::option::Option<core::task::wake::Waker>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations", scope: !489, file: !488, line: 961, type: !466, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16234 = distinct !DISubprogram(name: "take<core::task::wake::Waker>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtB4_4task4wake5WakerE4takeCsbaWXNhtWAp9_11foundations", scope: !544, file: !542, line: 1899, type: !466, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16235 = distinct !DILocation(line: 310, column: 29, scope: !16227, inlinedAt: !16221)
!16236 = distinct !DILocation(line: 1901, column: 9, scope: !16234, inlinedAt: !16235)
!16237 = distinct !DILexicalBlock(scope: !16233, file: !488, line: 975, column: 9)
!16238 = distinct !DILexicalBlock(scope: !16227, file: !724, line: 310, column: 13)
!16239 = distinct !DISubprogram(name: "drop<futures_channel::lock::TryLock<core::option::Option<core::task::wake::Waker>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem4dropINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations", scope: !489, file: !488, line: 1045, type: !466, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16240 = distinct !DILocation(line: 311, column: 13, scope: !16238, inlinedAt: !16221)
!16241 = distinct !DILocation(line: 1049, column: 1, scope: !16239, inlinedAt: !16240)
!16242 = distinct !DISubprogram(name: "drop<core::option::Option<core::task::wake::Waker>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem4dropINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations", scope: !489, file: !488, line: 1045, type: !466, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16243 = distinct !DILocation(line: 312, column: 13, scope: !16238, inlinedAt: !16221)
!16244 = distinct !DILocation(line: 1049, column: 1, scope: !16242, inlinedAt: !16243)
!16245 = distinct !DILocation(line: 848, column: 1, scope: !179, inlinedAt: !16244)
!16246 = distinct !DILocation(line: 848, column: 1, scope: !183, inlinedAt: !16245)
!16247 = distinct !{null, null}
!16248 = distinct !DILexicalBlock(scope: !16220, file: !724, line: 322, column: 59)
!16249 = distinct !DILocation(line: 322, column: 48, scope: !16248, inlinedAt: !16221)
!16250 = distinct !DILocation(line: 53, column: 25, scope: !16273, inlinedAt: !16249)
!16251 = distinct !DILocation(line: 830, column: 41, scope: !16272, inlinedAt: !16250)
!16252 = distinct !DILocation(line: 830, column: 22, scope: !16272, inlinedAt: !16250)
!16253 = distinct !DILocation(line: 313, column: 9, scope: !16227, inlinedAt: !16221)
!16254 = distinct !DILocation(line: 848, column: 1, scope: !179, inlinedAt: !16253)
!16255 = distinct !DILocation(line: 848, column: 1, scope: !183, inlinedAt: !16254)
!16256 = distinct !DILexicalBlock(scope: !16248, file: !724, line: 323, column: 47)
!16257 = distinct !DILocation(line: 323, column: 40, scope: !16256, inlinedAt: !16221)
!16258 = distinct !DILocation(line: 1901, column: 9, scope: !16274, inlinedAt: !16257)
!16259 = distinct !DILexicalBlock(scope: !16233, file: !488, line: 975, column: 9)
!16260 = distinct !DILocation(line: 324, column: 17, scope: !16256, inlinedAt: !16221)
!16261 = distinct !DILocation(line: 1049, column: 1, scope: !16239, inlinedAt: !16260)
!16262 = distinct !DILocation(line: 327, column: 9, scope: !16220, inlinedAt: !16221)
!16263 = distinct !DISubprogram(name: "wake", linkageName: "_RNvMs6_NtNtCs3oUPovFnLWP_4core4task4wakeNtB5_5Waker4wake", scope: !868, file: !700, line: 439, type: !466, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16264 = distinct !DILexicalBlock(scope: !16263, file: !700, line: 444, column: 9)
!16265 = distinct !DILocation(line: 325, column: 22, scope: !16256, inlinedAt: !16221)
!16266 = distinct !{null}
!16267 = distinct !DILocation(line: 326, column: 13, scope: !16248, inlinedAt: !16221)
!16268 = distinct !DILocation(line: 848, column: 1, scope: !183, inlinedAt: !16267)
!16269 = !DILocation(line: 480, column: 9, scope: !16214)
!16270 = !DILocation(line: 2514, column: 15, scope: !16216, inlinedAt: !16269)
!16271 = !DILocation(line: 2193, column: 27, scope: !16217, inlinedAt: !16270)
!16272 = !DILexicalBlockFile(scope: !16225, file: !652, discriminator: 2)
!16273 = !DILexicalBlockFile(scope: !16226, file: !834, discriminator: 2)
!16274 = !DILexicalBlockFile(scope: !16234, file: !542, discriminator: 2)
!16275 = !DILocation(line: 454, column: 20, scope: !16215, inlinedAt: !16271)
!16276 = !DILocation(line: 2437, column: 9, scope: !16218, inlinedAt: !16223)
!16277 = !DILocation(line: 3984, column: 23, scope: !155, inlinedAt: !16224)
!16278 = !DILocation(line: 2437, column: 9, scope: !16218, inlinedAt: !16230)
!16279 = !DILocation(line: 4019, column: 23, scope: !16231, inlinedAt: !16232)
!16280 = !DILocation(line: 830, column: 22, scope: !16225, inlinedAt: !16229)
!16281 = !DILocation(line: 53, column: 13, scope: !16226, inlinedAt: !16228)
!16282 = !DILocation(line: 309, column: 33, scope: !16227, inlinedAt: !16221)
!16283 = !DILocation(line: 975, column: 22, scope: !16233, inlinedAt: !16236)
!16284 = !DILocation(line: 976, column: 49, scope: !16237, inlinedAt: !16236)
!16285 = !DILocation(line: 311, column: 18, scope: !16238, inlinedAt: !16221)
!16286 = !DILocation(line: 848, column: 1, scope: !347, inlinedAt: !16241)
!16287 = !DILocation(line: 311, column: 22, scope: !16238, inlinedAt: !16221)
!16288 = !DILocation(line: 848, column: 1, scope: !179, inlinedAt: !16244)
!16289 = !DILocation(line: 675, column: 18, scope: !182, inlinedAt: !16246)
!16290 = !DILocation(line: 2437, column: 9, scope: !16218, inlinedAt: !16251)
!16291 = !DILocation(line: 4019, column: 23, scope: !16231, inlinedAt: !16252)
!16292 = !DILocation(line: 830, column: 22, scope: !16225, inlinedAt: !16250)
!16293 = !DILocation(line: 53, column: 13, scope: !16226, inlinedAt: !16249)
!16294 = !DILocation(line: 300, column: 5, scope: !16220, inlinedAt: !16221)
!16295 = !DILocation(line: 848, column: 1, scope: !179, inlinedAt: !16253)
!16296 = !DILocation(line: 675, column: 18, scope: !182, inlinedAt: !16255)
!16297 = !DILocation(line: 322, column: 35, scope: !16248, inlinedAt: !16221)
!16298 = !DILocation(line: 322, column: 21, scope: !16248, inlinedAt: !16221)
!16299 = !DILocation(line: 975, column: 22, scope: !16233, inlinedAt: !16258)
!16300 = !DILocation(line: 976, column: 49, scope: !16259, inlinedAt: !16258)
!16301 = !DILocation(line: 323, column: 33, scope: !16256, inlinedAt: !16221)
!16302 = !DILocation(line: 323, column: 20, scope: !16256, inlinedAt: !16221)
!16303 = !DILocation(line: 324, column: 22, scope: !16256, inlinedAt: !16221)
!16304 = !DILocation(line: 848, column: 1, scope: !347, inlinedAt: !16261)
!16305 = !DILocation(line: 848, column: 1, scope: !347, inlinedAt: !16262)
!16306 = !DILocation(line: 327, column: 9, scope: !16220, inlinedAt: !16221)
!16307 = !DILocation(line: 324, column: 28, scope: !16256, inlinedAt: !16221)
!16308 = !DILocation(line: 449, column: 18, scope: !16264, inlinedAt: !16265)
!16309 = !DILocation(line: 322, column: 9, scope: !16220, inlinedAt: !16221)
!16310 = !DILocation(line: 675, column: 18, scope: !182, inlinedAt: !16268)
!16311 = !DILocation(line: 481, column: 6, scope: !16214)
!16312 = distinct !DISubprogram(name: "drop<http::header::map::HeaderMap<http::header::value::HeaderValue>>", linkageName: "_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations", scope: !948, file: !724, line: 479, type: !466, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16313 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<futures_channel::oneshot::Inner<http::header::map::HeaderMap<http::header::value::HeaderValue>>>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapEEE6as_refCsbaWXNhtWAp9_11foundations", scope: !647, file: !645, line: 450, type: !466, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16314 = distinct !DISubprogram(name: "deref<futures_channel::oneshot::Inner<http::header::map::HeaderMap<http::header::value::HeaderValue>>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsbaWXNhtWAp9_11foundations", scope: !838, file: !648, line: 2513, type: !466, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16315 = distinct !DISubprogram(name: "inner<futures_channel::oneshot::Inner<http::header::map::HeaderMap<http::header::value::HeaderValue>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapEE5innerCsbaWXNhtWAp9_11foundations", scope: !650, file: !648, line: 2187, type: !466, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16316 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCsbaWXNhtWAp9_11foundations", scope: !659, file: !657, line: 2434, type: !466, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16317 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !655, file: !652, line: 791, type: !466, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16318 = distinct !DISubprogram(name: "drop_rx<http::header::map::HeaderMap<http::header::value::HeaderValue>>", linkageName: "_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapE7drop_rxCsbaWXNhtWAp9_11foundations", scope: !831, file: !724, line: 300, type: !466, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16319 = distinct !DILocation(line: 480, column: 20, scope: !16312)
!16320 = distinct !DILocation(line: 303, column: 23, scope: !16318, inlinedAt: !16319)
!16321 = distinct !DILocation(line: 795, column: 60, scope: !16317, inlinedAt: !16320)
!16322 = distinct !DILocation(line: 795, column: 13, scope: !16317, inlinedAt: !16320)
!16323 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs2_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicbE4swap", scope: !655, file: !652, line: 825, type: !466, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16324 = distinct !DISubprogram(name: "try_lock<core::option::Option<core::task::wake::Waker>>", linkageName: "_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_4LockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBX_4task4wake5WakerEE8try_lockCsbaWXNhtWAp9_11foundations", scope: !836, file: !834, line: 52, type: !466, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16325 = distinct !DILexicalBlock(scope: !16318, file: !724, line: 309, column: 57)
!16326 = distinct !DILocation(line: 309, column: 46, scope: !16325, inlinedAt: !16319)
!16327 = distinct !DILocation(line: 53, column: 25, scope: !16324, inlinedAt: !16326)
!16328 = distinct !DILocation(line: 830, column: 41, scope: !16323, inlinedAt: !16327)
!16329 = distinct !DISubprogram(name: "atomic_swap<u8>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_swaphECsbaWXNhtWAp9_11foundations", scope: !654, file: !652, line: 4011, type: !466, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16330 = distinct !DILocation(line: 830, column: 22, scope: !16323, inlinedAt: !16327)
!16331 = distinct !DISubprogram(name: "replace<core::option::Option<core::task::wake::Waker>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations", scope: !489, file: !488, line: 961, type: !466, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16332 = distinct !DISubprogram(name: "take<core::task::wake::Waker>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtB4_4task4wake5WakerE4takeCsbaWXNhtWAp9_11foundations", scope: !544, file: !542, line: 1899, type: !466, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16333 = distinct !DILocation(line: 310, column: 29, scope: !16325, inlinedAt: !16319)
!16334 = distinct !DILocation(line: 1901, column: 9, scope: !16332, inlinedAt: !16333)
!16335 = distinct !DILexicalBlock(scope: !16331, file: !488, line: 975, column: 9)
!16336 = distinct !DILexicalBlock(scope: !16325, file: !724, line: 310, column: 13)
!16337 = distinct !DISubprogram(name: "drop<futures_channel::lock::TryLock<core::option::Option<core::task::wake::Waker>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem4dropINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations", scope: !489, file: !488, line: 1045, type: !466, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16338 = distinct !DILocation(line: 311, column: 13, scope: !16336, inlinedAt: !16319)
!16339 = distinct !DILocation(line: 1049, column: 1, scope: !16337, inlinedAt: !16338)
!16340 = distinct !DISubprogram(name: "drop<core::option::Option<core::task::wake::Waker>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem4dropINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations", scope: !489, file: !488, line: 1045, type: !466, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !465)
!16341 = distinct !DILocation(line: 312, column: 13, scope: !16336, inlinedAt: !16319)
!16342 = distinct !DILocation(line: 1049, column: 1, scope: !16340, inlinedAt: !16341)
!16343 = distinct !DILocation(line: 848, column: 1, scope: !179, inlinedAt: !16342)
!16344 = distinct !DILocation(line: 848, column: 1, scope: !183, inlinedAt: !16343)
!16345 = distinct !{null, null}
!16346 = distinct !DILexicalBlock(scope: !16318, file: !724, line: 322, column: 59)
!16347 = distinct !DILocation(line: 322, column: 48, scope: !16346, inlinedAt: !16319)
!16348 = distinct !DILocation(line: 53, column: 25, scope: !16371, inlinedAt: !16347)
!16349 = distinct !DILocation(line: 830, column: 41, scope: !16370, inlinedAt: !16348)
end_hunk_1
