Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.12?download=true
inline.NumInlined: 969
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrIBY_INtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1J_5codec6decodeINtB2l_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1F_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2X_EE0ENCB2f_s_0EINvMs1_NtB1J_6statusNtB63_6Status9map_errorB6g_EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations:bb.a
  br label %bb.i, !dbg !15393

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15394
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15394, !noalias !15381, !nonnull !13, !align !2623, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15395
  store ptr %i.f, ptr %i.b, align 8, !noalias !15402
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !15405, !noalias !15387
  %i.g = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 8, i64 noundef range(i64 1, 9) 8) #34, !dbg !15418, !noalias !15387 ; 3 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !15420
  br i1 %i.h, label %bb.c, label %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23, !dbg !15421, !prof !122

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc.i.i.i.i unwind label %bb.d, !dbg !15422, !noalias !15387

.noexc.i.i.i.i:                                   ; preds = %bb.c
  unreachable, !dbg !15422

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %common.resume unwind label %bb.e, !dbg !15423, !noalias !15387

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15424, !noalias !15387
  unreachable, !dbg !15424

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !15425

_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23: ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8, !dbg !15426, !noalias !15387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15427, !noalias !15395
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status10from_error(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @259), !dbg !15428, !noalias !15387 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15389, !noalias !15381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15432
  store ptr %i.k, ptr %i.a, align 8, !noalias !15441
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !15444
  %i.l = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 8, i64 noundef range(i64 1, 9) 8) #34, !dbg !15457 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !15459
  br i1 %i.m, label %bb.f, label %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, !dbg !15460, !prof !122

_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15461
  %.sroa.8.0.copyload9 = load ptr, ptr %.sroa.8.0..sroa_idx8, align 8, !dbg !15461, !noalias !15462
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15461
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10.0..sroa_idx10, i64 80, i1 false), !dbg !15461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15389, !noalias !15381
  store i64 %i.d, ptr %0, align 8, !dbg !15463
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15463
  store ptr %.sroa.8.0.copyload9, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !15463
  br label %bb.i, !dbg !15465

bb.f:                                             ; preds = %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc.i.i.i.i6 unwind label %bb.g, !dbg !15466

.noexc.i.i.i.i6:                                  ; preds = %bb.f
  unreachable, !dbg !15466

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %common.resume unwind label %bb.h, !dbg !15467

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15468
  unreachable, !dbg !15468

_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread23
  store ptr %i.k, ptr %i.l, align 8, !dbg !15469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15470, !noalias !15432
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status10from_error(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @259), !dbg !15471
  store i64 -2, ptr %0, align 8, !dbg !15473
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15473
  store ptr %i.p, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !15473
  br label %bb.i, !dbg !15474

bb.i:                                             ; preds = %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread20, %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, %_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1F_5codec6decodeINtB2h_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1B_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2T_EE0ENCB2b_s_0ENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread
  ret void, !dbg !15475
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrIBY_INtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1J_5codec6decodeINtB2l_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1F_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2X_EE0ENCB2f_s_0EINvMs1_NtB1J_6statusNtB63_6Status9map_errorB6g_EENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 !dbg !15476 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators9map_frameINtB4_8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1i_5codec6decodeINtB1U_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1e_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2w_EE0ENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !15477
  ret i1 %i.a, !dbg !15479
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrIBY_INtNtB6_9map_frame8MapFrameNtNtCsfUalJnHtWpm_5tonic4body4BodyNCINvMs_NtNtB1J_5codec6decodeINtB2l_9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseE3newB1F_INtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstDecoderB2X_EE0ENCB2f_s_0EINvMs1_NtB1J_6statusNtB63_6Status9map_errorB6g_EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 !dbg !15480 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15481
  store i64 0, ptr %i.a, align 8, !dbg !15481, !alias.scope !15493
  store i64 0, ptr %0, align 8, !dbg !15481, !alias.scope !15493
  ret void, !dbg !15498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #11 !dbg !15499 {
bb.a:
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !dbg !15500, !alias.scope !15511, !noalias !15514 ; 2 uses
  store ptr null, ptr %1, align 8, !dbg !15516, !alias.scope !15511, !noalias !15514
  %.not.i = icmp eq ptr %.sroa.04.0.copyload.i, null, !dbg !15518
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !15521

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15500
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15522
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa.0.0..sroa_idx.i, i64 24, i1 false), !dbg !15524
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15522
  store ptr %.sroa.04.0.copyload.i, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !15522
  br label %bb.c, !dbg !15525

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ -1, %bb.b ], [ -3, %bb.a ], !dbg !15526
  store i64 %.sink, ptr %0, align 8, !dbg !15526
  ret void, !dbg !15527
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !15528 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !15529, !noundef !13
  %.not.i = icmp eq ptr %.val, null, !dbg !15530
  ret i1 %.not.i, !dbg !15539
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !15540 {
bb.a:
  tail call void @_RNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1), !dbg !15541
  ret void, !dbg !15542
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #6 !dbg !15543 {
bb.a:
  store i64 -3, ptr %0, align 8, !dbg !15544
  ret void, !dbg !15546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !15547 {
bb.a:
  ret i1 true, !dbg !15548
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 !dbg !15549 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15550
  store i64 0, ptr %i.a, align 8, !dbg !15550, !alias.scope !15559
  store i64 1, ptr %0, align 8, !dbg !15550, !alias.scope !15559
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15550
  store i64 0, ptr %i.b, align 8, !dbg !15550, !alias.scope !15559
  ret void, !dbg !15562
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(144) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15563 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15564), !dbg !15567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !15569
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !15569
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i), !dbg !15575
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30.i), !dbg !15575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15577), !dbg !15580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15581), !dbg !15580
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15583
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15589 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !15590 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !15591
  %.val30.i.i = load i64, ptr %i.ag, align 8, !dbg !15591, !alias.scope !15593, !noalias !15594, !noundef !13
  %i.ah = load ptr, ptr %i.af, align 8, !dbg !15598, !alias.scope !15593, !noalias !15594, !align !2623, !noundef !13 ; 2 uses
  store ptr null, ptr %i.af, align 8, !dbg !15605, !alias.scope !15593, !noalias !15594
  %.not.i.i = icmp eq ptr %i.ah, null, !dbg !15607
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread108.i, !dbg !15608

.preheader.i.i:                                   ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %bb.b, !dbg !15609

bb.b:                                             ; preds = %bb.aa, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15610, !noalias !15611
  call void @_RNvXs_NtNtCsau3QU8iZK1I_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB6_3map3MapINtNtB8_4once4OnceNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1A_NtNtCsfUalJnHtWpm_5tonic6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !dbg !15612, !noalias !15613
  %i.an = load i64, ptr %i.y, align 8, !dbg !15610, !range !13711, !noalias !15611, !noundef !13
  switch i64 %i.an, label %bb.m [
    i64 -3, label %bb.c
    i64 -2, label %bb.d
    i64 -1, label %bb.l
  ], !dbg !15609

bb.c:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %i.aj, align 8, !dbg !15614, !alias.scope !15593, !noalias !15594, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !15614
  br i1 %i.ap, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread33, label %bb.e, !dbg !15617

bb.d:                                             ; preds = %bb.b
  %i.aq = load i64, ptr %i.aj, align 8, !dbg !15618, !alias.scope !15593, !noalias !15594, !noundef !13 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !15618
  br i1 %i.ar, label %bb.as, label %bb.e, !dbg !15620

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = phi i64 [ %i.ao, %bb.c ], [ %i.aq, %bb.d ], !dbg !15621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15624, !noalias !15611
  call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.as), !dbg !15625, !noalias !15613
  call void @llvm.experimental.noalias.scope.decl(metadata !15626), !dbg !15629
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !15630
  %i.au = load ptr, ptr %i.at, align 8, !dbg !15630, !alias.scope !15626, !noalias !15633, !noundef !13
  %i.av = ptrtoint ptr %i.au to i64, !dbg !15630  ; 3 uses
  %i.aw = and i64 %i.av, 1, !dbg !15630
  %.not.i.i.i = icmp eq i64 %i.aw, 0, !dbg !15635
  br i1 %.not.i.i.i, label %bb.h, label %bb.f, !dbg !15635

bb.f:                                             ; preds = %bb.e
  %i.ax = lshr i64 %i.av, 5, !dbg !15636          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !15638, !noalias !15639
  %i.ay = load ptr, ptr %i.x, align 8, !dbg !15640, !alias.scope !15626, !noalias !15633, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !15641
  %i.ba = load i64, ptr %i.az, align 8, !dbg !15641, !alias.scope !15626, !noalias !15633, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !15642
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !15642, !alias.scope !15626, !noalias !15633, !noundef !13
  %i.bd = sub nsw i64 0, %i.ax, !dbg !15643
  %i.be = getelementptr inbounds i8, ptr %i.ay, i64 %i.bd, !dbg !15646
  %i.bf = add i64 %i.ba, %i.ax, !dbg !15647
  %i.bg = add i64 %i.bc, %i.ax, !dbg !15648       ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, -1, !dbg !15649
  call void @llvm.assume(i1 %i.bh), !dbg !15649
  store i64 %i.bg, ptr %i.t, align 8, !dbg !15655, !noalias !15639
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !15655
  store ptr %i.be, ptr %i.bi, align 8, !dbg !15655, !noalias !15639
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !15655
  store i64 %i.bf, ptr %i.bj, align 8, !dbg !15655, !noalias !15639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15656, !noalias !15639
  call void @_RNvXsE_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !dbg !15657, !noalias !15659
  call void @llvm.experimental.noalias.scope.decl(metadata !15660), !dbg !15663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15639
  store i64 %i.ax, ptr %i.r, align 8, !noalias !15664
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !15665
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !15665, !alias.scope !15660, !noalias !15639, !noundef !13 ; 4 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ax, %i.bl, !dbg !15668
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.j, !dbg !15668, !prof !874

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !15669, !noalias !15664
  store i64 %i.bl, ptr %i.q, align 8, !dbg !15670, !noalias !15664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !15672, !noalias !15664
  store ptr %i.r, ptr %i.p, align 8, !dbg !15672, !noalias !15664
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !15672
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !dbg !15672, !noalias !15664
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !15672
  store ptr %i.q, ptr %i.bm, align 8, !dbg !15672, !noalias !15664
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !15672
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !dbg !15672, !noalias !15664
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #36
          to label %.noexc.i.i.i unwind label %bb.i, !dbg !15673, !noalias !15659

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable, !dbg !15673

bb.h:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.x, align 8, !dbg !15674, !alias.scope !15626, !noalias !15633, !nonnull !13, !noundef !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !15675
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !15675, !alias.scope !15626, !noalias !15633, !noundef !13
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i, !dbg !15676

bb.i:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15677), !dbg !15680
  call void @llvm.experimental.noalias.scope.decl(metadata !15681), !dbg !15684
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !15686
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !15693, !alias.scope !15695, !noalias !15639, !noundef !13
  %i.bt = load ptr, ptr %i.s, align 8, !dbg !15696, !alias.scope !15695, !noalias !15639, !nonnull !13, !align !2623, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32, !dbg !15696
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !15696, !noalias !15697, !nonnull !13, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !15698
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !15698, !alias.scope !15695, !noalias !15639, !noundef !13
  invoke void %i.bv(ptr noundef %i.bs, ptr noundef %i.bx, i64 noundef %i.bl)
          to label %common.resume unwind label %bb.k, !dbg !15696, !noalias !15659, !inline_history !1460

bb.j:                                             ; preds = %bb.f
  %i.by = sub nuw i64 %i.bl, %i.ax, !dbg !15699
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !15701
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !15701, !alias.scope !15660, !noalias !15639, !noundef !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ax, !dbg !15702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15704, !noalias !15639
  %.sroa.0.0.copyload45.i.i = load ptr, ptr %i.s, align 8, !dbg !15705, !noalias !15706
  %.sroa.7.0..sroa_idx50.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !15705
  %.sroa.7.0.copyload51.i.i = load ptr, ptr %.sroa.7.0..sroa_idx50.i.i, align 8, !dbg !15705, !noalias !15706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15680, !noalias !15639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !15707, !noalias !15639
  %.pre.i = ptrtoint ptr %.sroa.7.0.copyload51.i.i to i64, !dbg !15708
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i, !dbg !15676

bb.k:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15709, !noalias !15659
  unreachable, !dbg !15709

common.resume:                                    ; preds = %bb.bf, %bb.i, %.loopexit.split-lp.i.i.i.i, %bb.r, %bb.x, %bb.af, %bb.ak, %bb.ao, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.ay ], [ %i.fz, %bb.ao ], [ %i.el, %bb.af ], [ %i.bq, %bb.i ], [ %i.dc, %bb.r ], [ %i.fa, %bb.ak ], [ %lpad.phi.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.phi.i.i, %bb.x ], [ %i.hc, %bb.bf ]
  resume { ptr, i32 } %common.resume.op, !dbg !15710

_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i: ; preds = %bb.j, %bb.h
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.j ], [ %i.av, %bb.h ], !dbg !15708
  %.sroa.6.0.i.i = phi i64 [ %i.by, %bb.j ], [ %i.bp, %bb.h ], !dbg !15711
  %.sroa.5.0.i.i = phi ptr [ %i.cb, %bb.j ], [ %i.bn, %bb.h ], !dbg !15711
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.j ], [ @_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE, %bb.h ], !dbg !15711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15712, !noalias !15611
  store i64 %.pre-phi.i, ptr %.sroa.30.i, align 8, !dbg !15708, !alias.scope !15577, !noalias !15713
  br label %bb.ar, !dbg !15714

bb.l:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !15715
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !15715, !noalias !15611, !nonnull !13, !align !2623, !noundef !13 ; 3 uses
  %i.cf = load i64, ptr %i.aj, align 8, !dbg !15716, !alias.scope !15593, !noalias !15594, !noundef !13 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0, !dbg !15716
  br i1 %i.cg, label %.thread112.i, label %bb.ai, !dbg !15719

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !15720, !noalias !15611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !15720, !noalias !15611
  %i.ch = load i64, ptr %1, align 8, !dbg !15721, !range !870, !alias.scope !15593, !noalias !15594, !noundef !13
  %i.ci = load i64, ptr %i.ai, align 8, !dbg !15721, !alias.scope !15593, !noalias !15594
  call void @llvm.experimental.noalias.scope.decl(metadata !15724), !dbg !15727
  %i.cj = load i64, ptr %i.aj, align 8, !dbg !15728, !alias.scope !15733, !noalias !15734, !noundef !13 ; 6 uses
  %i.ck = load i64, ptr %i.ak, align 8, !dbg !15736, !alias.scope !15733, !noalias !15734, !noundef !13
  %i.cl = sub i64 %i.ck, %i.cj, !dbg !15743
  %i.cm = icmp ugt i64 %i.cl, 4, !dbg !15744
  br i1 %i.cm, label %.thread.i.i.i, label %bb.n, !dbg !15744

bb.n:                                             ; preds = %bb.m
  %i.cn = invoke noundef zeroext i1 @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.o unwind label %.loopexit.i.i, !dbg !15746, !noalias !15747 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.ak, align 8, !dbg !15748, !alias.scope !15733, !noalias !15734
  %.pre7.i.i.i = load i64, ptr %i.aj, align 8, !dbg !15752, !alias.scope !15733, !noalias !15734 ; 2 uses
  %.pre8.i.i.i = sub i64 %.pre.i.i.i, %.pre7.i.i.i, !dbg !15748 ; 2 uses
  %i.co = icmp ult i64 %.pre8.i.i.i, 5, !dbg !15754
  br i1 %i.co, label %bb.u, label %.thread.i.i.i, !dbg !15754, !prof !15756

.thread.i.i.i:                                    ; preds = %bb.o, %bb.m
  %i.cp = phi i64 [ %.pre7.i.i.i, %bb.o ], [ %i.cj, %bb.m ]
  %i.cq = add i64 %i.cp, 5, !dbg !15757
  store i64 %i.cq, ptr %i.aj, align 8, !dbg !15757, !alias.scope !15733, !noalias !15734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15758, !noalias !15759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !15758, !noalias !15611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15760, !noalias !15759
  store ptr %i.ae, ptr %i.n, align 8, !dbg !15761, !noalias !15759
  call void @llvm.experimental.noalias.scope.decl(metadata !15765), !dbg !15768
  %.val.i.i.i.i = load ptr, ptr %i.al, align 8, !dbg !15769, !alias.scope !15765, !noalias !15773, !nonnull !13, !noundef !13 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.am, align 8, !dbg !15769, !alias.scope !15765, !noalias !15773, !noundef !13 ; 4 uses
  %i.cr = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i, !dbg !15775
  %i.cs = invoke noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENvYB1n_NtNtCs2NttipCe0aR_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2S_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3K_5accumjNtB5J_3Sum3sumIBO_BN_B4E_EE0E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull readonly align 8 %.val.i.i.i.i, ptr noundef nonnull readonly %i.cr, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i, !dbg !15791, !noalias !15798

.noexc.i.i.i.i:                                   ; preds = %.thread.i.i.i
  %i.ct = add i64 %i.cs, %.val1.i.i.i.i, !dbg !15799 ; 2 uses
  %i.cu = load i64, ptr %i.aj, align 8, !dbg !15800, !alias.scope !15733, !noalias !15813, !noundef !13
  %i.cv = sub i64 9223372036854775807, %i.cu, !dbg !15817 ; 2 uses
  %i.cw = icmp ugt i64 %i.ct, %i.cv, !dbg !15818
  br i1 %i.cw, label %bb.q, label %bb.p, !dbg !15818

bb.p:                                             ; preds = %.noexc.i.i.i.i
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i, 104, !dbg !15820
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx.i.i.i.i.i.i, !dbg !15820
  %i.cy = icmp eq i64 %.val1.i.i.i.i, 0, !dbg !15834
  br i1 %i.cy, label %.loopexit2.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !15843

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.p, %.noexc2.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi ptr [ %i.cz, %.noexc2.i.i.i.i ], [ %.val.i.i.i.i, %bb.p ] ; 2 uses
  invoke void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.01.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc2.i.i.i.i unwind label %.loopexit.i.i.i.i, !dbg !15844, !noalias !15846

.noexc2.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i, i64 104, !dbg !15847 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cx, !dbg !15834
  br i1 %i.da, label %.loopexit2.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !15843

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
          to label %common.resume unwind label %bb.t, !dbg !15850, !noalias !15747

bb.q:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !15851, !noalias !15854
  store i64 %i.ct, ptr %i.l, align 8, !dbg !15851, !noalias !15854
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !15851
  store i64 %i.cv, ptr %i.db, align 8, !dbg !15851, !noalias !15854
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 39, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #36
          to label %.noexc3.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i, !dbg !15857, !noalias !15798

.noexc3.i.i.i.i:                                  ; preds = %bb.q
  unreachable, !dbg !15857

.loopexit2.i.i.i.i:                               ; preds = %.noexc2.i.i.i.i, %bb.p
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i unwind label %bb.r, !dbg !15859, !noalias !15747

bb.r:                                             ; preds = %.loopexit2.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.s, !dbg !15862, !noalias !15747

bb.s:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15859, !noalias !15747
  unreachable, !dbg !15859

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i: ; preds = %.loopexit2.i.i.i.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !dbg !15864, !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15866, !noalias !15759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15867, !noalias !15759
  %i.de = load i64, ptr %i.aj, align 8, !dbg !15868, !alias.scope !15733, !noalias !15734, !noundef !13 ; 4 uses
  %i.df = icmp ugt i64 %i.cj, %i.de, !dbg !15877
  br i1 %i.df, label %bb.v, label %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !15877, !prof !874

bb.t:                                             ; preds = %.loopexit.split-lp.i.i.i.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15882, !noalias !15747
  unreachable, !dbg !15882

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !15883, !noalias !15759
  store i64 5, ptr %i.m, align 8, !dbg !15883, !noalias !15759
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !15883
  store i64 %.pre8.i.i.i, ptr %i.dh, align 8, !dbg !15883, !noalias !15759
  invoke void @_RNvCs8QTyv2gZm5j_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m) #35
          to label %bb.w unwind label %.loopexit.split-lp.i.i, !dbg !15884, !noalias !15747

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.cj, i64 noundef %i.de, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !15885, !noalias !15747
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
          to label %common.resume unwind label %bb.y, !dbg !15886, !noalias !15613

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15887, !noalias !15613
  unreachable, !dbg !15887

_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  %i.dj = load ptr, ptr %i.ae, align 8, !dbg !15888, !alias.scope !15733, !noalias !15734, !nonnull !13, !noundef !13
  %i.dk = sub nuw i64 %i.de, %i.cj, !dbg !15889
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cj, !dbg !15890
  %i.dm = call noundef align 8 ptr @_RNvNtNtCsfUalJnHtWpm_5tonic5codec6encode15finish_encoding(i64 noundef range(i64 0, 2) %i.ch, i64 %i.ci, ptr noalias nofree noundef nonnull %i.dl, i64 noundef %i.dk), !dbg !15895, !noalias !15747 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.dm, null, !dbg !15727
  br i1 %.not28.i.i, label %bb.z, label %.loopexit.i, !dbg !15896

bb.z:                                             ; preds = %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.dn = load i64, ptr %i.aj, align 8, !dbg !15897, !alias.scope !15593, !noalias !15594, !noundef !13 ; 2 uses
  %.not29.i.i = icmp ult i64 %i.dn, %.val30.i.i, !dbg !15899
  br i1 %.not29.i.i, label %bb.aa, label %bb.ab, !dbg !15899

.loopexit.i:                                      ; preds = %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i
  %.sroa.26.1.i = phi i64 [ %.sroa.660.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ undef, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !15900
  %.sroa.12.1.i = phi ptr [ %.sroa.055.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ null, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !15901
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.30.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ %.sroa.19.i, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %.sroa.763.0.sink.i.i = phi ptr [ %.sroa.763.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i ], [ %i.dm, %_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  store ptr %.sroa.763.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !dbg !15901, !alias.scope !15577, !noalias !15713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !15902, !noalias !15611
  %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.pre.i = load i64, ptr %.sroa.19.i, align 8, !dbg !15903, !noalias !15904
  %3 = inttoptr i64 %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.pre.i to ptr, !dbg !15903
  br label %bb.ar, !dbg !15905

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !15902, !noalias !15611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15714, !noalias !15611
  br label %bb.b, !dbg !15907

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !15908, !noalias !15611
  call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.dn), !dbg !15909, !noalias !15613
  call void @llvm.experimental.noalias.scope.decl(metadata !15910), !dbg !15913
  %i.do = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !15914
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !15914, !alias.scope !15910, !noalias !15917, !noundef !13 ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64, !dbg !15914  ; 2 uses
  %i.dr = and i64 %i.dq, 1, !dbg !15914
  %.not.i31.i.i = icmp eq i64 %i.dr, 0, !dbg !15919
  br i1 %.not.i31.i.i, label %bb.ae, label %bb.ac, !dbg !15919

bb.ac:                                            ; preds = %bb.ab
  %i.ds = lshr i64 %i.dq, 5, !dbg !15920          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15922, !noalias !15923
  %i.dt = load ptr, ptr %i.v, align 8, !dbg !15924, !alias.scope !15910, !noalias !15917, !nonnull !13, !noundef !13
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15925
  %i.dv = load i64, ptr %i.du, align 8, !dbg !15925, !alias.scope !15910, !noalias !15917, !noundef !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !15926
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !15926, !alias.scope !15910, !noalias !15917, !noundef !13
  %i.dy = sub nsw i64 0, %i.ds, !dbg !15927
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy, !dbg !15930
  %i.ea = add i64 %i.dv, %i.ds, !dbg !15931
  %i.eb = add i64 %i.dx, %i.ds, !dbg !15932       ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, -1, !dbg !15933
  call void @llvm.assume(i1 %i.ec), !dbg !15933
  store i64 %i.eb, ptr %i.k, align 8, !dbg !15939, !noalias !15923
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15939
  store ptr %i.dz, ptr %i.ed, align 8, !dbg !15939, !noalias !15923
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15939
  store i64 %i.ea, ptr %i.ee, align 8, !dbg !15939, !noalias !15923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15940, !noalias !15923
  call void @_RNvXsE_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !15941, !noalias !15943
  call void @llvm.experimental.noalias.scope.decl(metadata !15944), !dbg !15947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15923
  store i64 %i.ds, ptr %i.i, align 8, !noalias !15948
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !15949
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !15949, !alias.scope !15944, !noalias !15923, !noundef !13 ; 4 uses
  %.not.i.i32.i.i = icmp ugt i64 %i.ds, %i.eg, !dbg !15952
  br i1 %.not.i.i32.i.i, label %bb.ad, label %bb.ag, !dbg !15952, !prof !874

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15953, !noalias !15948
  store i64 %i.eg, ptr %i.h, align 8, !dbg !15954, !noalias !15948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15956, !noalias !15948
  store ptr %i.i, ptr %i.g, align 8, !dbg !15956, !noalias !15948
  %.sroa.42.0..sroa_idx.i.i33.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !15956
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i33.i.i, align 8, !dbg !15956, !noalias !15948
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !15956
  store ptr %i.h, ptr %i.eh, align 8, !dbg !15956, !noalias !15948
  %.sroa.46.0..sroa_idx.i.i34.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !15956
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i34.i.i, align 8, !dbg !15956, !noalias !15948
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #36
          to label %.noexc.i36.i.i unwind label %bb.af, !dbg !15957, !noalias !15943

.noexc.i36.i.i:                                   ; preds = %bb.ad
  unreachable, !dbg !15957

bb.ae:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.v, align 8, !dbg !15958, !alias.scope !15910, !noalias !15917, !nonnull !13, !noundef !13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15959
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !15959, !alias.scope !15910, !noalias !15917, !noundef !13
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i, !dbg !15960

bb.af:                                            ; preds = %bb.ad
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15961), !dbg !15964
  call void @llvm.experimental.noalias.scope.decl(metadata !15965), !dbg !15968
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !15970
  %i.en = load ptr, ptr %i.em, align 8, !dbg !15977, !alias.scope !15979, !noalias !15923, !noundef !13
  %i.eo = load ptr, ptr %i.j, align 8, !dbg !15980, !alias.scope !15979, !noalias !15923, !nonnull !13, !align !2623, !noundef !13
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32, !dbg !15980
  %i.eq = load ptr, ptr %i.ep, align 8, !dbg !15980, !noalias !15981, !nonnull !13, !noundef !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !15982
  %i.es = load ptr, ptr %i.er, align 8, !dbg !15982, !alias.scope !15979, !noalias !15923, !noundef !13
  invoke void %i.eq(ptr noundef %i.en, ptr noundef %i.es, i64 noundef %i.eg)
          to label %common.resume unwind label %bb.ah, !dbg !15980, !noalias !15943, !inline_history !1460

bb.ag:                                            ; preds = %bb.ac
  %i.et = sub nuw i64 %i.eg, %i.ds, !dbg !15983
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !15985
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !15985, !alias.scope !15944, !noalias !15923, !noundef !13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ds, !dbg !15986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15988, !noalias !15923
  %.sroa.055.0.copyload56.i.i = load ptr, ptr %i.j, align 8, !dbg !15989, !noalias !15990
  %.sroa.763.0..sroa_idx64.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !15989
  %.sroa.763.0.copyload65.i.i = load ptr, ptr %.sroa.763.0..sroa_idx64.i.i, align 8, !dbg !15989, !noalias !15990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15964, !noalias !15923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15991, !noalias !15923
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i, !dbg !15960

bb.ah:                                            ; preds = %bb.af
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !15992, !noalias !15943
  unreachable, !dbg !15992

_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit37.i.i: ; preds = %bb.ag, %bb.ae
  %.sroa.763.0.i.i = phi ptr [ %i.dp, %bb.ae ], [ %.sroa.763.0.copyload65.i.i, %bb.ag ], !dbg !15993
  %.sroa.660.0.i.i = phi i64 [ %i.ek, %bb.ae ], [ %i.et, %bb.ag ], !dbg !15993
  %.sroa.557.0.i.i = phi ptr [ %i.ei, %bb.ae ], [ %i.ew, %bb.ag ], !dbg !15993
  %.sroa.055.0.i.i = phi ptr [ @_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE, %bb.ae ], [ %.sroa.055.0.copyload56.i.i, %bb.ag ], !dbg !15993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15994, !noalias !15611
  %4 = ptrtoint ptr %.sroa.557.0.i.i to i64, !dbg !15995
  store i64 %4, ptr %.sroa.19.i, align 8, !dbg !15995, !alias.scope !15577, !noalias !15713
  br label %.loopexit.i, !dbg !15996

bb.ai:                                            ; preds = %bb.l
  %i.ey = load ptr, ptr %i.af, align 8, !dbg !15998, !alias.scope !16000, !noalias !15594, !align !2623, !noundef !13
  %i.ez = icmp eq ptr %i.ey, null, !dbg !15998
  br i1 %i.ez, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.aj, !dbg !15998

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.af)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i unwind label %bb.ak, !dbg !15998, !noalias !15613

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i: ; preds = %bb.aj
  %.pre.i.i = load i64, ptr %i.aj, align 8, !dbg !16003, !alias.scope !15593, !noalias !15594
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !15998

.thread112.i:                                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15714, !noalias !15611
  br label %.thread108.i, !dbg !15903

bb.ak:                                            ; preds = %bb.aj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ce, ptr %i.af, align 8, !dbg !16005, !alias.scope !15593, !noalias !15594
  br label %common.resume, !dbg !16006

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i, %bb.ai
  %i.fb = phi i64 [ %.pre.i.i, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit_crit_edge.i.i ], [ %i.cf, %bb.ai ], !dbg !16003
  store ptr %i.ce, ptr %i.af, align 8, !dbg !16005, !alias.scope !15593, !noalias !15594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !16007, !noalias !15611
  call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.fb), !dbg !16008, !noalias !15613
  call void @llvm.experimental.noalias.scope.decl(metadata !16009), !dbg !16012
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !16013
  %i.fd = load ptr, ptr %i.fc, align 8, !dbg !16013, !alias.scope !16009, !noalias !16016, !noundef !13
  %i.fe = ptrtoint ptr %i.fd to i64, !dbg !16013  ; 3 uses
  %i.ff = and i64 %i.fe, 1, !dbg !16013
  %.not.i38.i.i = icmp eq i64 %i.ff, 0, !dbg !16018
  br i1 %.not.i38.i.i, label %bb.an, label %bb.al, !dbg !16018

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.fg = lshr i64 %i.fe, 5, !dbg !16019          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16021, !noalias !16022
  %i.fh = load ptr, ptr %i.u, align 8, !dbg !16023, !alias.scope !16009, !noalias !16016, !nonnull !13, !noundef !13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !16024
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !16024, !alias.scope !16009, !noalias !16016, !noundef !13
  %i.fk = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !16025
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !16025, !alias.scope !16009, !noalias !16016, !noundef !13
  %i.fm = sub nsw i64 0, %i.fg, !dbg !16026
  %i.fn = getelementptr inbounds i8, ptr %i.fh, i64 %i.fm, !dbg !16029
  %i.fo = add i64 %i.fj, %i.fg, !dbg !16030
  %i.fp = add i64 %i.fl, %i.fg, !dbg !16031       ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, -1, !dbg !16032
  call void @llvm.assume(i1 %i.fq), !dbg !16032
  store i64 %i.fp, ptr %i.f, align 8, !dbg !16038, !noalias !16022
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16038
  store ptr %i.fn, ptr %i.fr, align 8, !dbg !16038, !noalias !16022
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16038
  store i64 %i.fo, ptr %i.fs, align 8, !dbg !16038, !noalias !16022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16039, !noalias !16022
  call void @_RNvXsE_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !16040, !noalias !16042
  call void @llvm.experimental.noalias.scope.decl(metadata !16043), !dbg !16046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16022
  store i64 %i.fg, ptr %i.d, align 8, !noalias !16047
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !16048
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !16048, !alias.scope !16043, !noalias !16022, !noundef !13 ; 4 uses
  %.not.i.i39.i.i = icmp ugt i64 %i.fg, %i.fu, !dbg !16051
  br i1 %.not.i.i39.i.i, label %bb.am, label %bb.ap, !dbg !16051, !prof !874

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16052, !noalias !16047
  store i64 %i.fu, ptr %i.c, align 8, !dbg !16053, !noalias !16047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16055, !noalias !16047
  store ptr %i.d, ptr %i.b, align 8, !dbg !16055, !noalias !16047
  %.sroa.42.0..sroa_idx.i.i40.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16055
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i40.i.i, align 8, !dbg !16055, !noalias !16047
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16055
  store ptr %i.c, ptr %i.fv, align 8, !dbg !16055, !noalias !16047
  %.sroa.46.0..sroa_idx.i.i41.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16055
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i41.i.i, align 8, !dbg !16055, !noalias !16047
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #36
          to label %.noexc.i43.i.i unwind label %bb.ao, !dbg !16056, !noalias !16042

.noexc.i43.i.i:                                   ; preds = %bb.am
  unreachable, !dbg !16056

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.fw = load ptr, ptr %i.u, align 8, !dbg !16057, !alias.scope !16009, !noalias !16016, !nonnull !13, !noundef !13
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !16058
  %i.fy = load i64, ptr %i.fx, align 8, !dbg !16058, !alias.scope !16009, !noalias !16016, !noundef !13
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i, !dbg !16059

bb.ao:                                            ; preds = %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !16060), !dbg !16063
  call void @llvm.experimental.noalias.scope.decl(metadata !16064), !dbg !16067
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !16069
  %i.gb = load ptr, ptr %i.ga, align 8, !dbg !16076, !alias.scope !16078, !noalias !16022, !noundef !13
  %i.gc = load ptr, ptr %i.e, align 8, !dbg !16079, !alias.scope !16078, !noalias !16022, !nonnull !13, !align !2623, !noundef !13
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32, !dbg !16079
  %i.ge = load ptr, ptr %i.gd, align 8, !dbg !16079, !noalias !16080, !nonnull !13, !noundef !13
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16081
  %i.gg = load ptr, ptr %i.gf, align 8, !dbg !16081, !alias.scope !16078, !noalias !16022, !noundef !13
  invoke void %i.ge(ptr noundef %i.gb, ptr noundef %i.gg, i64 noundef %i.fu)
          to label %common.resume unwind label %bb.aq, !dbg !16079, !noalias !16042, !inline_history !1460

bb.ap:                                            ; preds = %bb.al
  %i.gh = sub nuw i64 %i.fu, %i.fg, !dbg !16082
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16084
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !16084, !alias.scope !16043, !noalias !16022, !noundef !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.fg, !dbg !16085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16087, !noalias !16022
  %.sroa.070.0.copyload71.i.i = load ptr, ptr %i.e, align 8, !dbg !16088, !noalias !16089
  %.sroa.778.0..sroa_idx79.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !16088
  %.sroa.778.0.copyload80.i.i = load ptr, ptr %.sroa.778.0..sroa_idx79.i.i, align 8, !dbg !16088, !noalias !16089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16063, !noalias !16022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16090, !noalias !16022
  %.pre170.i = ptrtoint ptr %.sroa.778.0.copyload80.i.i to i64, !dbg !16091
  br label %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i, !dbg !16059

bb.aq:                                            ; preds = %bb.ao
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16092, !noalias !16042
  unreachable, !dbg !16092

_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i: ; preds = %bb.ap, %bb.an
  %.pre-phi171.i = phi i64 [ %.pre170.i, %bb.ap ], [ %i.fe, %bb.an ], !dbg !16091
  %.sroa.675.0.i.i = phi i64 [ %i.gh, %bb.ap ], [ %i.fy, %bb.an ], !dbg !16093
  %.sroa.572.0.i.i = phi ptr [ %i.gk, %bb.ap ], [ %i.fw, %bb.an ], !dbg !16093
  %.sroa.070.0.i.i = phi ptr [ %.sroa.070.0.copyload71.i.i, %bb.ap ], [ @_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE, %bb.an ], !dbg !16093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !16094, !noalias !15611
  store i64 %.pre-phi171.i, ptr %.sroa.30.i, align 8, !dbg !16091, !alias.scope !15577, !noalias !15713
  br label %bb.ar, !dbg !16095

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread33: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15714, !noalias !15611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16097
  store i64 3, ptr %0, align 8, !dbg !16098
  br label %bb.bi, !dbg !16099

bb.ar:                                            ; preds = %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i, %.loopexit.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.i = phi ptr [ %3, %.loopexit.i ], [ %.sroa.5.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i ], [ %.sroa.572.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i ], !dbg !15903 ; 2 uses
  %.sroa.26.0.ph.ph.i = phi i64 [ %.sroa.26.1.i, %.loopexit.i ], [ %.sroa.6.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i ], [ %.sroa.675.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i ]
  %.sroa.12.0.ph.ph.i = phi ptr [ %.sroa.12.1.i, %.loopexit.i ], [ %.sroa.0.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i.i ], [ %.sroa.070.0.i.i, %_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit44.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15714, !noalias !15611
  %i.gm = icmp eq ptr %.sroa.12.0.ph.ph.i, null, !dbg !15903
  br i1 %i.gm, label %.thread108.i, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread, !dbg !15903

bb.as:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15714, !noalias !15611
  call void @_RNvMs1_NtNtCsfUalJnHtWpm_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac), !dbg !16100, !noalias !16101
  %i.gn = load i64, ptr %i.z, align 8, !dbg !16102, !range !12921, !noalias !15904, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.gn, -2, !dbg !16102
  br i1 %.not.i, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, label %bb.at, !dbg !16105

bb.at:                                            ; preds = %bb.as
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !16106
  %.sroa.563.0.copyload.i = load ptr, ptr %.sroa.563.0..sroa_idx.i, align 8, !dbg !16106, !noalias !15904 ; 3 uses
  %i.go = icmp eq i64 %i.gn, -1, !dbg !16107
  br i1 %i.go, label %bb.au, label %bb.av, !dbg !16114

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload.i) ]
  br label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, !dbg !16115

bb.av:                                            ; preds = %bb.at
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !16106
  %.sroa.770.i.sroa.0.0.copyload = load ptr, ptr %.sroa.666.0..sroa_idx.i, align 8, !dbg !16116, !noalias !15904
  %.sroa.770.i.sroa.4.0..sroa.666.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !16116
  %.sroa.770.i.sroa.4.0.copyload = load i64, ptr %.sroa.770.i.sroa.4.0..sroa.666.0..sroa_idx.i.sroa_idx, align 8, !dbg !16116, !noalias !15904
  %.sroa.770.i.sroa.5.0..sroa.666.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32, !dbg !16116
  %.sroa.770.i.sroa.5.0.copyload = load i64, ptr %.sroa.770.i.sroa.5.0..sroa.666.0..sroa_idx.i.sroa_idx, align 8, !dbg !16116, !noalias !15904
  %.sroa.770.i.sroa.6.0..sroa.666.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40, !dbg !16116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6.0..sroa.666.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !dbg !16116
  br label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, !dbg !16117

.thread108.i:                                     ; preds = %bb.ar, %.thread112.i, %bb.a
  %i.gp = phi ptr [ %i.ce, %.thread112.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.i, %bb.ar ], [ %i.ah, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !16118, !noalias !15904
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  store ptr %i.gp, ptr %i.ab, align 8, !dbg !16118, !noalias !15904
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !16119
  %i.gr = load i8, ptr %i.gq, align 8, !dbg !16119, !range !978, !alias.scope !15564, !noalias !16121, !noundef !13
  %i.gs = trunc nuw i8 %i.gr to i1, !dbg !16119
  br i1 %i.gs, label %bb.aw, label %bb.ax, !dbg !16122

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %bb.ar
  %.sroa.30.i.0..sroa.30.i.0..sroa.30.i.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload107.i = load i64, ptr %.sroa.30.i, align 8, !dbg !15903, !noalias !15904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16097
  br label %bb.bh, !dbg !16123

bb.aw:                                            ; preds = %.thread108.i
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 137, !dbg !16124
  store i8 1, ptr %i.gt, align 1, !dbg !16124, !alias.scope !15564, !noalias !16121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !16125, !noalias !15904
  invoke void @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status13to_header_map(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.az unwind label %bb.ay, !dbg !16126, !noalias !16101

bb.ax:                                            ; preds = %.thread108.i, %bb.ba
  %.sroa.20.0 = phi i64 [ %.sroa.20.16.copyload, %bb.ba ], [ undef, %.thread108.i ], !dbg !16127
  %.sroa.19.0 = phi i64 [ %.sroa.19.16.copyload, %bb.ba ], [ undef, %.thread108.i ], !dbg !16127
  %.sroa.16.0 = phi ptr [ %.sroa.16.16.copyload, %bb.ba ], [ undef, %.thread108.i ], !dbg !16127
  %.sroa.10.0 = phi ptr [ %i.gy, %bb.ba ], [ %i.gp, %.thread108.i ], !dbg !16128
  %.sroa.0.0 = phi i64 [ %i.gv, %bb.ba ], [ -2, %.thread108.i ], !dbg !16128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !16134, !noalias !15904
  br label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, !dbg !16134

bb.ay:                                            ; preds = %bb.aw
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #31
          to label %common.resume unwind label %bb.bb, !dbg !16134, !noalias !16101

bb.az:                                            ; preds = %bb.aw
  %i.gv = load i64, ptr %i.aa, align 8, !dbg !16135, !range !270, !noalias !15904, !noundef !13 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1, !dbg !16135
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !16138
  %i.gy = load ptr, ptr %i.gx, align 8, !dbg !16138, !noalias !15904 ; 2 uses
  br i1 %i.gw, label %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39, label %bb.ba, !dbg !16139

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16140, !noalias !15904
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab), !dbg !16134, !noalias !16101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !16134, !noalias !15904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16097
  br label %bb.bd, !dbg !16123

bb.ba:                                            ; preds = %bb.az
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !16141
  %.sroa.16.16.copyload = load ptr, ptr %.sroa.542.0..sroa_idx.i, align 8, !dbg !16141, !noalias !16142
  %.sroa.19.16..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !16141
  %.sroa.19.16.copyload = load i64, ptr %.sroa.19.16..sroa.542.0..sroa_idx.i.sroa_idx, align 8, !dbg !16141, !noalias !16142
  %.sroa.20.16..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !16141
  %.sroa.20.16.copyload = load i64, ptr %.sroa.20.16..sroa.542.0..sroa_idx.i.sroa_idx, align 8, !dbg !16141, !noalias !16142
  %.sroa.21.16..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40, !dbg !16141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.16..sroa.542.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !dbg !16141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16140, !noalias !15904
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab), !dbg !16134, !noalias !16101
  br label %bb.ax, !dbg !16134

bb.bb:                                            ; preds = %bb.ay
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16143, !noalias !16101
  unreachable, !dbg !16143

_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.as, %bb.au, %bb.av, %bb.ax
  %.sroa.20.1 = phi i64 [ %.sroa.20.0, %bb.ax ], [ undef, %bb.as ], [ undef, %bb.au ], [ %.sroa.770.i.sroa.5.0.copyload, %bb.av ], !dbg !16127
  %.sroa.19.1 = phi i64 [ %.sroa.19.0, %bb.ax ], [ undef, %bb.as ], [ undef, %bb.au ], [ %.sroa.770.i.sroa.4.0.copyload, %bb.av ], !dbg !16127
  %.sroa.16.1 = phi ptr [ %.sroa.16.0, %bb.ax ], [ undef, %bb.as ], [ undef, %bb.au ], [ %.sroa.770.i.sroa.0.0.copyload, %bb.av ], !dbg !16127
  %.sroa.10.1 = phi ptr [ %.sroa.10.0, %bb.ax ], [ undef, %bb.as ], [ %.sroa.563.0.copyload.i, %bb.au ], [ %.sroa.563.0.copyload.i, %bb.av ], !dbg !16127 ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.ax ], [ -3, %bb.as ], [ -2, %bb.au ], [ %i.gn, %bb.av ], !dbg !16144 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i), !dbg !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !16097
  switch i64 %.sroa.0.1, label %bb.bh [
    i64 -2, label %bb.bd
    i64 -3, label %bb.bc
  ], !dbg !16123

bb.bc:                                            ; preds = %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit
  store i64 -3, ptr %0, align 8, !dbg !16145
  br label %bb.bi, !dbg !16146

bb.bd:                                            ; preds = %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39
  %.sroa.10.145 = phi ptr [ %i.gy, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread39 ], [ %.sroa.10.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16147
  store ptr %.sroa.10.145, ptr %i.a, align 8, !noalias !16156
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !16159
  %i.ha = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 8, i64 noundef range(i64 1, 9) 8) #34, !dbg !16170 ; 3 uses
  %i.hb = icmp eq ptr %i.ha, null, !dbg !16172
  br i1 %i.hb, label %bb.be, label %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, !dbg !16173, !prof !122

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc.i.i.i.i6 unwind label %bb.bf, !dbg !16174

.noexc.i.i.i.i6:                                  ; preds = %bb.be
  unreachable, !dbg !16174

bb.bf:                                            ; preds = %bb.be
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %common.resume unwind label %bb.bg, !dbg !16175

bb.bg:                                            ; preds = %bb.bf
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16176
  unreachable, !dbg !16176

_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.bd
  store ptr %.sroa.10.145, ptr %i.ha, align 8, !dbg !16177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16178, !noalias !16147
  %i.he = call noundef nonnull align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status10from_error(ptr noundef nonnull %i.ha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @259), !dbg !16179
  store i64 -2, ptr %0, align 8, !dbg !16180
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16180
  store ptr %i.he, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !16180
  br label %bb.bi, !dbg !16181

bb.bh:                                            ; preds = %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.132 = phi i64 [ -1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.0.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.10.131 = phi ptr [ %.sroa.12.0.ph.ph.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.10.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.16.130 = phi ptr [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.16.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.19.129 = phi i64 [ %.sroa.26.0.ph.ph.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.19.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.20.128 = phi i64 [ %.sroa.30.i.0..sroa.30.i.0..sroa.30.i.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload107.i, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread ], [ %.sroa.20.1, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.822.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.770.i.sroa.6, i64 56, i1 false), !dbg !16184
  store i64 %.sroa.0.132, ptr %0, align 8, !dbg !16182
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16182
  store ptr %.sroa.10.131, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !16182
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16182
  store ptr %.sroa.16.130, ptr %.sroa.519.0..sroa_idx, align 8, !dbg !16182
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16182
  store i64 %.sroa.19.129, ptr %.sroa.620.0..sroa_idx, align 8, !dbg !16182
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16182
  store i64 %.sroa.20.128, ptr %.sroa.721.0..sroa_idx, align 8, !dbg !16182
  br label %bb.bi, !dbg !16185

bb.bi:                                            ; preds = %bb.bc, %_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations.exit, %bb.bh, %_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations.exit.thread33
  ret void, !dbg !16186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #4 !dbg !16187 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137, !dbg !16188
  %.val = load i8, ptr %i.a, align 1, !dbg !16188, !range !978, !noundef !13
  %i.b = trunc nuw i8 %.val to i1, !dbg !16189
  ret i1 %i.b, !dbg !16191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 !dbg !16192 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16193
  store i64 0, ptr %i.a, align 8, !dbg !16193, !alias.scope !16198
  store i64 0, ptr %0, align 8, !dbg !16193, !alias.scope !16198
  ret void, !dbg !16201
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtCsaCYLheajBls_5hyper5error5ErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16202 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !16204, !nonnull !13, !noundef !13 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !16211
  store atomic i8 1, ptr %i.e seq_cst, align 1, !dbg !16218
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !16220
  %i.g = atomicrmw xchg ptr %i.f, i8 1 seq_cst, align 1, !dbg !16227
  %.not.i = icmp eq i8 %i.g, 0, !dbg !16230
  br i1 %.not.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16231

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !16232 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !16233, !align !2623, !noundef !13 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !16233
  %i.k = load ptr, ptr %i.j, align 8, !dbg !16233 ; 2 uses
  store ptr null, ptr %i.h, align 8, !dbg !16238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16240
  store ptr %i.h, ptr %i.c, align 8, !dbg !16240
  invoke void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !16242

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16246
  %i.l = icmp eq ptr %i.i, null, !dbg !16247
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.c, !dbg !16247

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16251
  %i.n = load ptr, ptr %i.m, align 8, !dbg !16251, !nonnull !13, !noundef !13
  call void %i.n(ptr noundef %i.k), !dbg !16251, !inline_history !16254
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16251

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !16255
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1, !dbg !16262
  %.not9.i = icmp eq i8 %i.p, 0, !dbg !16264
  br i1 %.not9.i, label %bb.g, label %_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations.exit, !dbg !16265

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i: ; preds = %bb.k, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ab, %bb.k ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn.i, !dbg !16266

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq ptr %i.i, null, !dbg !16267
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i, label %bb.e, !dbg !16267

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16269
  %i.t = load ptr, ptr %i.s, align 8, !dbg !16269, !nonnull !13, !noundef !13
  invoke void %i.t(ptr noundef %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i unwind label %bb.f, !dbg !16269, !inline_history !8476

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16266
  unreachable, !dbg !16266

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !16272 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16273
  store ptr %i.v, ptr %i.b, align 8, !dbg !16273
  %i.w = load ptr, ptr %i.v, align 8, !dbg !16274, !align !2623, !noundef !13 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !16274
  %i.y = load ptr, ptr %i.x, align 8, !dbg !16274 ; 2 uses
  store ptr null, ptr %i.v, align 8, !dbg !16279
  %.not10.i = icmp eq ptr %i.w, null, !dbg !16281
  br i1 %.not10.i, label %bb.i, label %bb.h, !dbg !16282

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16283
  store ptr %i.v, ptr %i.a, align 8, !dbg !16283
  invoke void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit20.i unwind label %bb.k, !dbg !16284

bb.i:                                             ; preds = %bb.g
  call void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !16287
  br label %bb.j, !dbg !16289

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit20.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16290
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !16291
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !16291, !nonnull !13, !noundef !13
  call void %i.aa(ptr noundef %i.y), !dbg !16291, !inline_history !16295
  br label %bb.j, !dbg !16291

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit20.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16289
  br label %_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations.exit, !dbg !16296

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !16297
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !16297, !nonnull !13, !noundef !13
  invoke void %i.ad(ptr noundef %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i unwind label %bb.f, !dbg !16297, !inline_history !13312

_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, %bb.j
  ret void, !dbg !16300
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16301 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !16302, !nonnull !13, !noundef !13 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168, !dbg !16309
  store atomic i8 1, ptr %i.e seq_cst, align 1, !dbg !16316
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 136, !dbg !16318
  %i.g = atomicrmw xchg ptr %i.f, i8 1 seq_cst, align 1, !dbg !16325
  %.not.i = icmp eq i8 %i.g, 0, !dbg !16328
  br i1 %.not.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16329

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !16330 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !16331, !align !2623, !noundef !13 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !16331
  %i.k = load ptr, ptr %i.j, align 8, !dbg !16331 ; 2 uses
  store ptr null, ptr %i.h, align 8, !dbg !16336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16338
  store ptr %i.h, ptr %i.c, align 8, !dbg !16338
  invoke void @_RNvXs3_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_7TryLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !16340

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16344
  %i.l = icmp eq ptr %i.i, null, !dbg !16345
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.c, !dbg !16345

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16349
  %i.n = load ptr, ptr %i.m, align 8, !dbg !16349, !nonnull !13, !noundef !13
  call void %i.n(ptr noundef %i.k), !dbg !16349, !inline_history !16352
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16349

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 160, !dbg !16353
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1, !dbg !16360
  %.not9.i = icmp eq i8 %i.p, 0, !dbg !16362
  br i1 %.not9.i, label %bb.g, label %_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapE7drop_rxCsbaWXNhtWAp9_11foundations.exit, !dbg !16363

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i: ; preds = %bb.k, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ab, %bb.k ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn.i, !dbg !16364

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq ptr %i.i, null, !dbg !16365
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i, label %bb.e, !dbg !16365

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16367
  %i.t = load ptr, ptr %i.s, align 8, !dbg !16367, !nonnull !13, !noundef !13
  invoke void %i.t(ptr noundef %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit18.i unwind label %bb.f, !dbg !16367, !inline_history !8476

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !16364
  unreachable, !dbg !16364

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 144, !dbg !16370 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16371
  store ptr %i.v, ptr %i.b, align 8, !dbg !16371
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!15508 = !DINamespace(name: "full", scope: !1005)
!15509 = distinct !DILocation(line: 62, column: 26, scope: !15510)
!15510 = distinct !DILexicalBlock(scope: !15499, file: !1001, line: 61, column: 9)
!15511 = !{!15512}
!15512 = distinct !{!15512, !15513, !"_RNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations: argument 1"}
!15513 = distinct !{!15513, !"_RNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations"}
!15514 = !{!15515}
!15515 = distinct !{!15515, !15513, !"_RNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations: argument 0"}
!15516 = !DILocation(line: 976, column: 49, scope: !15517, inlinedAt: !15502)
!15517 = distinct !DILexicalBlock(scope: !15501, file: !431, line: 975, column: 9)
!15518 = !DILocation(line: 1162, column: 15, scope: !15519, inlinedAt: !15520)
!15519 = distinct !DISubprogram(name: "map<bytes::bytes::Bytes, core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, !>, http_body_util::full::{impl#2}::poll_frame::{closure_env#0}<bytes::bytes::Bytes>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE3mapINtNtB5_6result6ResultINtNtCshXnn1MjyudA_9http_body5frame5FrameBI_EzENCNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB2C_4FullBI_ENtB1O_4Body10poll_frame0ECsbaWXNhtWAp9_11foundations", scope: !994, file: !993, line: 1158, type: !12, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15520 = distinct !DILocation(line: 61, column: 38, scope: !15505, inlinedAt: !15509)
!15521 = !DILocation(line: 1162, column: 9, scope: !15519, inlinedAt: !15520)
!15522 = !DILocation(line: 65, column: 45, scope: !15523)
!15523 = distinct !DILexicalBlock(scope: !15510, file: !1001, line: 65, column: 13)
!15524 = !DILocation(line: 1163, column: 18, scope: !15519, inlinedAt: !15520)
!15525 = !DILocation(line: 65, column: 72, scope: !15510)
!15526 = !DILocation(line: 0, scope: !15510)
!15527 = !DILocation(line: 68, column: 6, scope: !15499)
!15528 = distinct !DISubprogram(name: "is_end_stream<http_body_util::full::Full<bytes::bytes::Bytes>, fn(!) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 70, type: !12, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15529 = !DILocation(line: 71, column: 20, scope: !15528)
!15530 = !DILocation(line: 634, column: 18, scope: !15531, inlinedAt: !15534)
!15531 = !DILexicalBlockFile(scope: !15532, file: !993, discriminator: 0)
!15532 = distinct !DILexicalBlock(scope: !15533, file: !2438, line: 434, column: 9)
!15533 = distinct !DISubprogram(name: "is_some<bytes::bytes::Bytes>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE7is_someCsbaWXNhtWAp9_11foundations", scope: !994, file: !993, line: 633, type: !12, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15534 = distinct !DILocation(line: 683, column: 15, scope: !15535, inlinedAt: !15536)
!15535 = distinct !DISubprogram(name: "is_none<bytes::bytes::Bytes>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE7is_noneCsbaWXNhtWAp9_11foundations", scope: !994, file: !993, line: 682, type: !12, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15536 = distinct !DILocation(line: 65, column: 19, scope: !15537, inlinedAt: !15538)
!15537 = distinct !DISubprogram(name: "is_end_stream<bytes::bytes::Bytes>", linkageName: "_RNvXs0_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations", scope: !15507, file: !15506, line: 64, type: !92, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15538 = distinct !DILocation(line: 71, column: 20, scope: !15528)
!15539 = !DILocation(line: 72, column: 6, scope: !15528)
!15540 = distinct !DISubprogram(name: "size_hint<http_body_util::full::Full<bytes::bytes::Bytes>, fn(!) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2c_5error5ErrorNtNtB2c_6marker4SendNtB3E_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 74, type: !12, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15541 = !DILocation(line: 75, column: 20, scope: !15540)
!15542 = !DILocation(line: 76, column: 6, scope: !15540)
!15543 = distinct !DISubprogram(name: "poll_frame<http_body_util::empty::Empty<bytes::bytes::Bytes>, fn(!) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 57, type: !12, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15544 = !DILocation(line: 64, column: 34, scope: !15545)
!15545 = distinct !DILexicalBlock(scope: !15543, file: !1001, line: 61, column: 9)
!15546 = !DILocation(line: 68, column: 6, scope: !15543)
!15547 = distinct !DISubprogram(name: "is_end_stream<http_body_util::empty::Empty<bytes::bytes::Bytes>, fn(!) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 70, type: !12, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15548 = !DILocation(line: 72, column: 6, scope: !15547)
!15549 = distinct !DISubprogram(name: "size_hint<http_body_util::empty::Empty<bytes::bytes::Bytes>, fn(!) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_5empty5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB2e_5error5ErrorNtNtB2e_6marker4SendNtB3G_4SyncEL_EE4intoENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 74, type: !12, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15550 = !DILocation(line: 24, column: 9, scope: !15551, inlinedAt: !15553)
!15551 = distinct !DISubprogram(name: "with_exact", linkageName: "_RNvMNtCshXnn1MjyudA_9http_body9size_hintNtB2_8SizeHint10with_exact", scope: !15552, file: !15483, line: 23, type: !12, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15552 = !DINamespace(name: "SizeHint", scope: !15485)
!15553 = distinct !DILocation(line: 42, column: 9, scope: !15554, inlinedAt: !15558)
!15554 = distinct !DISubprogram(name: "size_hint<bytes::bytes::Bytes>", linkageName: "_RNvXs_NtCsefgzIPu8p8D_14http_body_util5emptyINtB4_5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !15556, file: !15555, line: 41, type: !92, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15555 = !DIFile(filename: "src/empty.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-body-util-0.1.5", checksumkind: CSK_MD5, checksum: "47eb384947eca09f5f6e4f7e2b52d95a")
!15556 = !DINamespace(name: "{impl#1}", scope: !15557)
!15557 = !DINamespace(name: "empty", scope: !1005)
!15558 = distinct !DILocation(line: 75, column: 20, scope: !15549)
!15559 = !{!15560}
!15560 = distinct !{!15560, !15561, !"_RNvXs_NtCsefgzIPu8p8D_14http_body_util5emptyINtB4_5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations: argument 0"}
!15561 = distinct !{!15561, !"_RNvXs_NtCsefgzIPu8p8D_14http_body_util5emptyINtB4_5EmptyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations"}
!15562 = !DILocation(line: 76, column: 6, scope: !15549)
!15563 = distinct !DISubprogram(name: "poll_frame<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>, fn(tonic::status::Status) -> tonic::status::Status, tonic::status::Status>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 57, type: !12, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15564 = !{!15565}
!15565 = distinct !{!15565, !15566, !"_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations: argument 1"}
!15566 = distinct !{!15566, !"_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations"}
!15567 = !DILocation(line: 62, column: 26, scope: !15568)
!15568 = distinct !DILexicalBlock(scope: !15563, file: !1001, line: 61, column: 9)
!15569 = !DILocation(line: 220, column: 5, scope: !15570, inlinedAt: !15572)
!15570 = distinct !DISubprogram(name: "project<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>", linkageName: "_RNvMNvNtNtCsfUalJnHtWpm_5tonic5codec6encodes_1__INtB4_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3H_4once4OnceB1S_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1S_NtNtB8_6status6StatusE2Ok0EE7projectCsbaWXNhtWAp9_11foundations", scope: !15571, file: !981, line: 215, type: !12, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15571 = !DINamespace(name: "EncodeBody", scope: !983)
!15572 = distinct !DILocation(line: 318, column: 30, scope: !15573, inlinedAt: !15574)
!15573 = distinct !DISubprogram(name: "poll_frame<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>", linkageName: "_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations", scope: !982, file: !981, line: 314, type: !12, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15574 = distinct !DILocation(line: 62, column: 26, scope: !15568)
!15575 = !DILocation(line: 319, column: 22, scope: !15576, inlinedAt: !15574)
!15576 = distinct !DILexicalBlock(scope: !15573, file: !981, line: 318, column: 9)
!15577 = !{!15578}
!15578 = distinct !{!15578, !15579, !"_RNvXs_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3E_4once4OnceB1P_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1P_NtNtB8_6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations: argument 0"}
!15579 = distinct !{!15579, !"_RNvXs_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3E_4once4OnceB1P_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1P_NtNtB8_6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations"}
!15580 = !DILocation(line: 319, column: 38, scope: !15576, inlinedAt: !15574)
!15581 = !{!15582}
!15582 = distinct !{!15582, !15579, !"_RNvXs_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3E_4once4OnceB1P_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1P_NtNtB8_6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations: argument 1"}
!15583 = !DILocation(line: 25, column: 5, scope: !15584, inlinedAt: !15585)
!15584 = distinct !DISubprogram(name: "project<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>", linkageName: "_RNvMNvNtNtCsfUalJnHtWpm_5tonic5codec6encode1__INtB4_12EncodedBytesINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3H_4once4OnceB1S_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1S_NtNtB8_6status6StatusE2Ok0EE7projectCsbaWXNhtWAp9_11foundations", scope: !8313, file: !981, line: 21, type: !12, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15585 = distinct !DILocation(line: 86, column: 18, scope: !15586, inlinedAt: !15588)
!15586 = distinct !DISubprogram(name: "poll_next<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>", linkageName: "_RNvXs_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3E_4once4OnceB1P_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1P_NtNtB8_6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations", scope: !15587, file: !981, line: 77, type: !12, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15587 = !DINamespace(name: "{impl#1}", scope: !983)
!15588 = distinct !DILocation(line: 319, column: 38, scope: !15576, inlinedAt: !15574)
!15589 = !DILocation(line: 29, column: 5, scope: !15584, inlinedAt: !15585)
!15590 = !DILocation(line: 31, column: 5, scope: !15584, inlinedAt: !15585)
!15591 = !DILocation(line: 87, column: 39, scope: !15592, inlinedAt: !15588)
!15592 = distinct !DILexicalBlock(scope: !15586, file: !981, line: 78, column: 9)
!15593 = !{!15582, !15565}
!15594 = !{!15578, !15595, !15596, !15597}
!15595 = distinct !{!15595, !15579, !"_RNvXs_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3E_4once4OnceB1P_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1P_NtNtB8_6status6StatusE2Ok0EENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations: argument 2"}
!15596 = distinct !{!15596, !15566, !"_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations: argument 0"}
!15597 = distinct !{!15597, !15566, !"_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3D_4once4OnceB1O_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1O_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frameCsbaWXNhtWAp9_11foundations: argument 2"}
!15598 = !DILocation(line: 975, column: 22, scope: !15599, inlinedAt: !15600)
!15599 = distinct !DISubprogram(name: "replace<core::option::Option<tonic::status::Status>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem7replaceINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations", scope: !432, file: !431, line: 961, type: !12, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15600 = distinct !DILocation(line: 1901, column: 9, scope: !15601, inlinedAt: !15602)
!15601 = distinct !DISubprogram(name: "take<tonic::status::Status>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusE4takeCsbaWXNhtWAp9_11foundations", scope: !994, file: !993, line: 1899, type: !12, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15602 = distinct !DILocation(line: 89, column: 37, scope: !15603, inlinedAt: !15588)
!15603 = distinct !DILexicalBlock(scope: !15604, file: !981, line: 89, column: 44)
!15604 = distinct !DILexicalBlock(scope: !15592, file: !981, line: 87, column: 9)
!15605 = !DILocation(line: 976, column: 49, scope: !15606, inlinedAt: !15600)
!15606 = distinct !DILexicalBlock(scope: !15599, file: !431, line: 975, column: 9)
!15607 = !DILocation(line: 89, column: 31, scope: !15603, inlinedAt: !15588)
!15608 = !DILocation(line: 89, column: 16, scope: !15603, inlinedAt: !15588)
!15609 = !DILocation(line: 94, column: 13, scope: !15604, inlinedAt: !15588)
!15610 = !DILocation(line: 94, column: 19, scope: !15604, inlinedAt: !15588)
!15611 = !{!15578, !15582, !15595, !15596, !15565, !15597}
!15612 = !DILocation(line: 94, column: 35, scope: !15604, inlinedAt: !15588)
!15613 = !{!15578, !15596}
!15614 = !DILocation(line: 211, column: 9, scope: !15615, inlinedAt: !15616)
!15615 = distinct !DISubprogram(name: "is_empty", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8is_empty", scope: !1268, file: !1267, line: 210, type: !12, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15616 = distinct !DILocation(line: 95, column: 38, scope: !15604, inlinedAt: !15588)
!15617 = !DILocation(line: 95, column: 34, scope: !15604, inlinedAt: !15588)
!15618 = !DILocation(line: 211, column: 9, scope: !15615, inlinedAt: !15619)
!15619 = distinct !DILocation(line: 98, column: 42, scope: !15604, inlinedAt: !15588)
!15620 = !DILocation(line: 98, column: 38, scope: !15604, inlinedAt: !15588)
!15621 = !DILocation(line: 196, column: 9, scope: !15622, inlinedAt: !15623)
!15622 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut3len", scope: !1268, file: !1267, line: 195, type: !12, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15623 = distinct !DILocation(line: 102, column: 65, scope: !15604, inlinedAt: !15588)
!15624 = !DILocation(line: 102, column: 48, scope: !15604, inlinedAt: !15588)
!15625 = !DILocation(line: 102, column: 52, scope: !15604, inlinedAt: !15588)
!15626 = !{!15627}
!15627 = distinct !{!15627, !15628, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!15628 = distinct !{!15628, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!15629 = !DILocation(line: 102, column: 72, scope: !15604, inlinedAt: !15588)
!15630 = !DILocation(line: 1103, column: 9, scope: !14351, inlinedAt: !15631)
!15631 = distinct !DILocation(line: 256, column: 18, scope: !14353, inlinedAt: !15632)
!15632 = distinct !DILocation(line: 102, column: 72, scope: !15604, inlinedAt: !15588)
!15633 = !{!15634, !15578, !15582, !15595, !15596, !15565, !15597}
!15634 = distinct !{!15634, !15628, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!15635 = !DILocation(line: 256, column: 12, scope: !14353, inlinedAt: !15632)
!15636 = !DILocation(line: 1165, column: 9, scope: !14358, inlinedAt: !15637)
!15637 = distinct !DILocation(line: 259, column: 33, scope: !14353, inlinedAt: !15632)
!15638 = !DILocation(line: 260, column: 21, scope: !14361, inlinedAt: !15632)
!15639 = !{!15634, !15627, !15578, !15582, !15595, !15596, !15565, !15597}
!15640 = !DILocation(line: 260, column: 39, scope: !14361, inlinedAt: !15632)
!15641 = !DILocation(line: 260, column: 59, scope: !14361, inlinedAt: !15632)
!15642 = !DILocation(line: 260, column: 70, scope: !14361, inlinedAt: !15632)
!15643 = !DILocation(line: 1054, column: 47, scope: !14365, inlinedAt: !15644)
!15644 = distinct !DILocation(line: 1878, column: 19, scope: !14367, inlinedAt: !15645)
!15645 = distinct !DILocation(line: 260, column: 27, scope: !14361, inlinedAt: !15632)
!15646 = !DILocation(line: 1054, column: 22, scope: !14365, inlinedAt: !15644)
!15647 = !DILocation(line: 1879, column: 5, scope: !14371, inlinedAt: !15645)
!15648 = !DILocation(line: 1880, column: 5, scope: !14371, inlinedAt: !15645)
!15649 = !DILocation(line: 42, column: 26, scope: !14374, inlinedAt: !15650)
!15650 = distinct !DILocation(line: 47, column: 47, scope: !14379, inlinedAt: !15651)
!15651 = distinct !DILocation(line: 267, column: 28, scope: !14381, inlinedAt: !15652)
!15652 = distinct !DILocation(line: 1196, column: 29, scope: !14384, inlinedAt: !15653)
!15653 = distinct !DILocation(line: 643, column: 18, scope: !14386, inlinedAt: !15654)
!15654 = distinct !DILocation(line: 1882, column: 5, scope: !14371, inlinedAt: !15645)
!15655 = !DILocation(line: 1196, column: 18, scope: !14384, inlinedAt: !15653)
!15656 = !DILocation(line: 261, column: 21, scope: !14390, inlinedAt: !15632)
!15657 = !DILocation(line: 780, column: 9, scope: !14392, inlinedAt: !15658)
!15658 = distinct !DILocation(line: 261, column: 40, scope: !14390, inlinedAt: !15632)
!15659 = !{!15634, !15627, !15578, !15596}
!15660 = !{!15661}
!15661 = distinct !{!15661, !15662, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!15662 = distinct !{!15662, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!15663 = !DILocation(line: 262, column: 19, scope: !14398, inlinedAt: !15632)
!15664 = !{!15661, !15634, !15627, !15578, !15582, !15595, !15596, !15565, !15597}
!15665 = !DILocation(line: 304, column: 9, scope: !14401, inlinedAt: !15666)
!15666 = distinct !DILocation(line: 695, column: 25, scope: !14403, inlinedAt: !15667)
!15667 = distinct !DILocation(line: 262, column: 19, scope: !14398, inlinedAt: !15632)
!15668 = !DILocation(line: 695, column: 13, scope: !14403, inlinedAt: !15667)
!15669 = !DILocation(line: 698, column: 13, scope: !14403, inlinedAt: !15667)
!15670 = !DILocation(line: 304, column: 9, scope: !14401, inlinedAt: !15671)
!15671 = distinct !DILocation(line: 698, column: 18, scope: !14403, inlinedAt: !15667)
!15672 = !DILocation(line: 694, column: 9, scope: !14411, inlinedAt: !15667)
!15673 = !DILocation(line: 694, column: 9, scope: !14403, inlinedAt: !15667)
!15674 = !DILocation(line: 268, column: 23, scope: !14353, inlinedAt: !15632)
!15675 = !DILocation(line: 269, column: 23, scope: !14419, inlinedAt: !15632)
!15676 = !DILocation(line: 256, column: 9, scope: !14353, inlinedAt: !15632)
!15677 = !{!15678}
!15678 = distinct !{!15678, !15679, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!15679 = distinct !{!15679, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!15680 = !DILocation(line: 264, column: 13, scope: !14390, inlinedAt: !15632)
!15681 = !{!15682}
!15682 = distinct !{!15682, !15683, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!15683 = distinct !{!15683, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!15684 = !DILocation(line: 848, column: 1, scope: !1453, inlinedAt: !15685)
!15685 = distinct !DILocation(line: 264, column: 13, scope: !14390, inlinedAt: !15632)
!15686 = !DILocation(line: 2437, column: 9, scope: !3300, inlinedAt: !15687)
!15687 = distinct !DILocation(line: 2539, column: 16, scope: !3302, inlinedAt: !15688)
!15688 = distinct !DILocation(line: 1609, column: 29, scope: !3304, inlinedAt: !15689)
!15689 = distinct !DILocation(line: 20, column: 24, scope: !3306, inlinedAt: !15690)
!15690 = distinct !DILocation(line: 658, column: 19, scope: !3313, inlinedAt: !15691)
!15691 = distinct !DILocation(line: 669, column: 25, scope: !1449, inlinedAt: !15692)
!15692 = distinct !DILocation(line: 848, column: 1, scope: !1453, inlinedAt: !15685)
!15693 = !DILocation(line: 658, column: 32, scope: !3317, inlinedAt: !15694)
!15694 = distinct !DILocation(line: 20, column: 17, scope: !3306, inlinedAt: !15690)
!15695 = !{!15682, !15678}
!15696 = !DILocation(line: 670, column: 18, scope: !1447, inlinedAt: !15692)
!15697 = !{!15682, !15678, !15634, !15627, !15578, !15596}
!15698 = !DILocation(line: 670, column: 43, scope: !1447, inlinedAt: !15692)
!15699 = !DILocation(line: 652, column: 9, scope: !14445, inlinedAt: !15700)
!15700 = distinct !DILocation(line: 702, column: 18, scope: !14403, inlinedAt: !15667)
!15701 = !DILocation(line: 653, column: 20, scope: !14445, inlinedAt: !15700)
!15702 = !DILocation(line: 871, column: 18, scope: !14449, inlinedAt: !15703)
!15703 = distinct !DILocation(line: 653, column: 29, scope: !14445, inlinedAt: !15700)
!15704 = !DILocation(line: 704, column: 6, scope: !14403, inlinedAt: !15667)
!15705 = !DILocation(line: 263, column: 17, scope: !14398, inlinedAt: !15632)
!15706 = !{!15627, !15578, !15582, !15595, !15596, !15565, !15597}
!15707 = !DILocation(line: 264, column: 13, scope: !14361, inlinedAt: !15632)
!15708 = !DILocation(line: 102, column: 28, scope: !15604, inlinedAt: !15588)
!15709 = !DILocation(line: 254, column: 5, scope: !14354, inlinedAt: !15632)
!15710 = !DILocation(line: 0, scope: !15568)
!15711 = !DILocation(line: 0, scope: !14353, inlinedAt: !15632)
!15712 = !DILocation(line: 102, column: 79, scope: !15604, inlinedAt: !15588)
!15713 = !{!15582, !15595, !15596, !15565, !15597}
!15714 = !DILocation(line: 128, column: 13, scope: !15604, inlinedAt: !15588)
!15715 = !DILocation(line: 121, column: 38, scope: !15604, inlinedAt: !15588)
!15716 = !DILocation(line: 211, column: 9, scope: !15615, inlinedAt: !15717)
!15717 = distinct !DILocation(line: 122, column: 28, scope: !15718, inlinedAt: !15588)
!15718 = distinct !DILexicalBlock(scope: !15604, file: !981, line: 121, column: 17)
!15719 = !DILocation(line: 122, column: 24, scope: !15718, inlinedAt: !15588)
!15720 = !DILocation(line: 104, column: 37, scope: !15604, inlinedAt: !15588)
!15721 = !DILocation(line: 110, column: 25, scope: !15722, inlinedAt: !15588)
!15722 = distinct !DILexicalBlock(scope: !15723, file: !981, line: 113, column: 23)
!15723 = distinct !DILexicalBlock(scope: !15604, file: !981, line: 104, column: 17)
!15724 = !{!15725}
!15725 = distinct !{!15725, !15726, !"_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations: argument 0"}
!15726 = distinct !{!15726, !"_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations"}
!15727 = !DILocation(line: 105, column: 42, scope: !15722, inlinedAt: !15588)
!15728 = !DILocation(line: 196, column: 9, scope: !15729, inlinedAt: !15730)
!15729 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut3len", scope: !1268, file: !1267, line: 195, type: !12, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15730 = distinct !DILocation(line: 145, column: 22, scope: !15731, inlinedAt: !15732)
!15731 = distinct !DISubprogram(name: "encode_item<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>>", linkageName: "_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations", scope: !983, file: !981, line: 133, type: !92, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15732 = distinct !DILocation(line: 105, column: 42, scope: !15722, inlinedAt: !15588)
!15733 = !{!15725, !15582, !15565}
!15734 = !{!15735, !15578, !15595, !15596, !15597}
!15735 = distinct !{!15735, !15726, !"_RINvNtNtCsfUalJnHtWpm_5tonic5codec6encode11encode_itemINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations: argument 1"}
!15736 = !DILocation(line: 226, column: 9, scope: !15737, inlinedAt: !15738)
!15737 = distinct !DISubprogram(name: "capacity", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut8capacity", scope: !1268, file: !1267, line: 225, type: !12, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15738 = distinct !DILocation(line: 612, column: 24, scope: !15739, inlinedAt: !15741)
!15739 = distinct !DILexicalBlock(scope: !15740, file: !1267, line: 611, column: 9)
!15740 = distinct !DISubprogram(name: "reserve", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut7reserve", scope: !1268, file: !1267, line: 610, type: !12, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15741 = distinct !DILocation(line: 147, column: 9, scope: !15742, inlinedAt: !15732)
!15742 = distinct !DILexicalBlock(scope: !15731, file: !981, line: 145, column: 5)
!15743 = !DILocation(line: 612, column: 19, scope: !15739, inlinedAt: !15741)
!15744 = !DILocation(line: 614, column: 12, scope: !15745, inlinedAt: !15741)
!15745 = distinct !DILexicalBlock(scope: !15739, file: !1267, line: 612, column: 9)
!15746 = !DILocation(line: 621, column: 22, scope: !15745, inlinedAt: !15741)
!15747 = !{!15735, !15578, !15596}
!15748 = !DILocation(line: 1273, column: 25, scope: !15749, inlinedAt: !15751)
!15749 = distinct !DISubprogram(name: "advance_mut", linkageName: "_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut", scope: !15750, file: !1267, line: 1272, type: !12, scopeLine: 1272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15750 = !DINamespace(name: "{impl#4}", scope: !1269)
!15751 = distinct !DILocation(line: 149, column: 13, scope: !15742, inlinedAt: !15732)
!15752 = !DILocation(line: 196, column: 9, scope: !15729, inlinedAt: !15753)
!15753 = distinct !DILocation(line: 1273, column: 41, scope: !15749, inlinedAt: !15751)
!15754 = !DILocation(line: 1274, column: 12, scope: !15755, inlinedAt: !15751)
!15755 = distinct !DILexicalBlock(scope: !15749, file: !1267, line: 1273, column: 9)
!15756 = !{!"branch_weights", !"expected", i32 2146411, i32 2145337237}
!15757 = !DILocation(line: 1281, column: 9, scope: !15755, inlinedAt: !15751)
!15758 = !DILocation(line: 173, column: 21, scope: !15742, inlinedAt: !15732)
!15759 = !{!15725, !15735, !15578, !15582, !15595, !15596, !15565, !15597}
!15760 = !DILocation(line: 173, column: 32, scope: !15742, inlinedAt: !15732)
!15761 = !DILocation(line: 57, column: 9, scope: !15762, inlinedAt: !15764)
!15762 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtNtCsfUalJnHtWpm_5tonic5codec6bufferNtB5_9EncodeBuf3new", scope: !15763, file: !2878, line: 56, type: !12, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15763 = !DINamespace(name: "EncodeBuf", scope: !2880)
!15764 = distinct !DILocation(line: 173, column: 32, scope: !15742, inlinedAt: !15732)
!15765 = !{!15766}
!15766 = distinct !{!15766, !15767, !"_RNvXs3_NtCscOl6cF6RnLx_11tonic_prost5codecINtB5_12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestENtNtCsfUalJnHtWpm_5tonic5codec7Encoder6encodeCsbaWXNhtWAp9_11foundations: argument 0"}
!15767 = distinct !{!15767, !"_RNvXs3_NtCscOl6cF6RnLx_11tonic_prost5codecINtB5_12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestENtNtCsfUalJnHtWpm_5tonic5codec7Encoder6encodeCsbaWXNhtWAp9_11foundations"}
!15768 = !DILocation(line: 173, column: 14, scope: !15742, inlinedAt: !15732)
!15769 = !DILocation(line: 98, column: 14, scope: !15770, inlinedAt: !15772)
!15770 = distinct !DISubprogram(name: "encode<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>", linkageName: "_RNvXs3_NtCscOl6cF6RnLx_11tonic_prost5codecINtB5_12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestENtNtCsfUalJnHtWpm_5tonic5codec7Encoder6encodeCsbaWXNhtWAp9_11foundations", scope: !15771, file: !13911, line: 97, type: !92, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15771 = !DINamespace(name: "{impl#5}", scope: !13913)
!15772 = distinct !DILocation(line: 173, column: 14, scope: !15742, inlinedAt: !15732)
!15773 = !{!15774, !15725, !15735, !15578, !15582, !15595, !15596, !15565, !15597}
!15774 = distinct !{!15774, !15767, !"_RNvXs3_NtCscOl6cF6RnLx_11tonic_prost5codecINtB5_12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestENtNtCsfUalJnHtWpm_5tonic5codec7Encoder6encodeCsbaWXNhtWAp9_11foundations: argument 1"}
!15775 = !DILocation(line: 970, column: 18, scope: !15776, inlinedAt: !15777)
!15776 = distinct !DISubprogram(name: "add<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpans3addCsbaWXNhtWAp9_11foundations", scope: !1315, file: !1314, line: 936, type: !12, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15777 = distinct !DILocation(line: 100, column: 78, scope: !15778, inlinedAt: !15781)
!15778 = distinct !DILexicalBlock(scope: !15779, file: !7958, line: 96, column: 9)
!15779 = distinct !DILexicalBlock(scope: !15780, file: !7958, line: 95, column: 9)
!15780 = distinct !DISubprogram(name: "new<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansE3newCsbaWXNhtWAp9_11foundations", scope: !7961, file: !7958, line: 94, type: !12, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15781 = distinct !DILocation(line: 1040, column: 9, scope: !15782, inlinedAt: !15783)
!15782 = distinct !DISubprogram(name: "iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpans4iterCsbaWXNhtWAp9_11foundations", scope: !6611, file: !6609, line: 1039, type: !12, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15783 = distinct !DILocation(line: 861, column: 18, scope: !15784, inlinedAt: !15785)
!15784 = distinct !DISubprogram(name: "encoded_len_repeated<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RINvNtNtCs2NttipCe0aR_5prost8encoding7message20encoded_len_repeatedNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansECsbaWXNhtWAp9_11foundations", scope: !2659, file: !2610, line: 855, type: !12, scopeLine: 855, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15785 = distinct !DILocation(line: 5, column: 28, scope: !15786, inlinedAt: !15788)
!15786 = distinct !DISubprogram(name: "encoded_len", linkageName: "_RNvXs1_NtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v1NtB5_25ExportTraceServiceRequestNtNtCs2NttipCe0aR_5prost7message7Message11encoded_len", scope: !15787, file: !2711, line: 5, type: !92, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15787 = !DINamespace(name: "{impl#3}", scope: !2713)
!15788 = distinct !DILocation(line: 50, column: 29, scope: !15789, inlinedAt: !15790)
!15789 = distinct !DISubprogram(name: "encode<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::codec::buffer::EncodeBuf>", linkageName: "_RINvYNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCs2NttipCe0aR_5prost7message7Message6encodeNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations", scope: !13926, file: !13925, line: 46, type: !92, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15790 = distinct !DILocation(line: 98, column: 14, scope: !15770, inlinedAt: !15772)
!15791 = !DILocation(line: 128, column: 19, scope: !15792, inlinedAt: !15793)
!15792 = distinct !DISubprogram(name: "fold<usize, core::iter::adapters::map::Map<core::slice::iter::Iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>, fn(&opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans) -> usize>, prost::encoding::message::encoded_len_repeated::{closure_env#0}<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>, usize, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>, fn(&opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans) -> usize>, prost::encoding::message::encoded_len_repeated::{closure_env#0}<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>>>>", linkageName: "_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENvYB1r_NtNtCs2NttipCe0aR_5prost7message7Message11encoded_lenENCINvNtNtB2W_8encoding7message20encoded_len_repeatedB1r_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvXsK_NtB4L_5accumjNtB5u_3Sum3sumBN_E0ECsbaWXNhtWAp9_11foundations", scope: !8298, file: !8297, line: 124, type: !12, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15793 = distinct !DILocation(line: 52, column: 22, scope: !15794, inlinedAt: !15795)
!15794 = distinct !DISubprogram(name: "sum<core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>, fn(&opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans) -> usize>, prost::encoding::message::encoded_len_repeated::{closure_env#0}<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>>>", linkageName: "_RINvXsK_NtNtNtCs3oUPovFnLWP_4core4iter6traits5accumjNtB6_3Sum3sumINtNtNtBa_8adapters3map3MapIB12_INtNtNtBc_5slice4iter4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENvYB1X_NtNtCs2NttipCe0aR_5prost7message7Message11encoded_lenENCINvNtNtB3s_8encoding7message20encoded_len_repeatedB1X_E0EECsbaWXNhtWAp9_11foundations", scope: !8304, file: !8303, line: 51, type: !12, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15795 = distinct !DILocation(line: 3668, column: 9, scope: !15796, inlinedAt: !15797)
!15796 = distinct !DISubprogram(name: "sum<core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>, fn(&opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans) -> usize>, prost::encoding::message::encoded_len_repeated::{closure_env#0}<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>>, usize>", linkageName: "_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtNtBc_5slice4iter4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENvYB1l_NtNtCs2NttipCe0aR_5prost7message7Message11encoded_lenENCINvNtNtB2Q_8encoding7message20encoded_len_repeatedB1l_E0ENtNtNtBa_6traits8iterator8Iterator3sumjECsbaWXNhtWAp9_11foundations", scope: !6857, file: !6856, line: 3663, type: !12, scopeLine: 3663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15797 = distinct !DILocation(line: 864, column: 18, scope: !15784, inlinedAt: !15785)
!15798 = !{!15766, !15774, !15735, !15578, !15596}
!15799 = !DILocation(line: 859, column: 9, scope: !15784, inlinedAt: !15785)
!15800 = !DILocation(line: 196, column: 9, scope: !15801, inlinedAt: !15802)
!15801 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut3len", scope: !1268, file: !1267, line: 195, type: !12, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15802 = distinct !DILocation(line: 1268, column: 36, scope: !15803, inlinedAt: !15804)
!15803 = distinct !DISubprogram(name: "remaining_mut", linkageName: "_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut13remaining_mut", scope: !15750, file: !1267, line: 1266, type: !12, scopeLine: 1266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15804 = distinct !DILocation(line: 1357, column: 22, scope: !15805, inlinedAt: !15807)
!15805 = distinct !DISubprogram(name: "remaining_mut<bytes::bytes_mut::BytesMut>", linkageName: "_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf7buf_mutQNtNtB6_9bytes_mut8BytesMutNtB2_6BufMut13remaining_mutCsbaWXNhtWAp9_11foundations", scope: !15806, file: !2091, line: 1356, type: !12, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15806 = !DINamespace(name: "{impl#0}", scope: !2093)
!15807 = distinct !DILocation(line: 76, column: 18, scope: !15808, inlinedAt: !15809)
!15808 = distinct !DISubprogram(name: "remaining_mut", linkageName: "_RNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6bufferNtB5_9EncodeBufNtNtNtCs8QTyv2gZm5j_5bytes3buf7buf_mut6BufMut13remaining_mut", scope: !6811, file: !2878, line: 75, type: !92, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15809 = distinct !DILocation(line: 1357, column: 22, scope: !15810, inlinedAt: !15811)
!15810 = distinct !DISubprogram(name: "remaining_mut<tonic::codec::buffer::EncodeBuf>", linkageName: "_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf7buf_mutQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufNtB2_6BufMut13remaining_mutCsbaWXNhtWAp9_11foundations", scope: !15806, file: !2091, line: 1356, type: !12, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15811 = distinct !DILocation(line: 51, column: 29, scope: !15812, inlinedAt: !15790)
!15812 = distinct !DILexicalBlock(scope: !15789, file: !13925, line: 50, column: 9)
!15813 = !{!15814, !15816, !15766, !15774, !15735, !15578, !15595, !15596, !15597}
!15814 = distinct !{!15814, !15815, !"_RINvYNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCs2NttipCe0aR_5prost7message7Message6encodeNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations: argument 0"}
!15815 = distinct !{!15815, !"_RINvYNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCs2NttipCe0aR_5prost7message7Message6encodeNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations"}
!15816 = distinct !{!15816, !15815, !"_RINvYNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCs2NttipCe0aR_5prost7message7Message6encodeNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations: argument 1"}
!15817 = !DILocation(line: 1268, column: 9, scope: !15803, inlinedAt: !15804)
!15818 = !DILocation(line: 52, column: 12, scope: !15819, inlinedAt: !15790)
!15819 = distinct !DILexicalBlock(scope: !15812, file: !13925, line: 51, column: 9)
!15820 = !DILocation(line: 970, column: 18, scope: !15821, inlinedAt: !15822)
!15821 = distinct !DISubprogram(name: "add<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpans3addCsbaWXNhtWAp9_11foundations", scope: !1315, file: !1314, line: 936, type: !12, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15822 = distinct !DILocation(line: 100, column: 78, scope: !15823, inlinedAt: !15826)
!15823 = distinct !DILexicalBlock(scope: !15824, file: !7958, line: 96, column: 9)
!15824 = distinct !DILexicalBlock(scope: !15825, file: !7958, line: 95, column: 9)
!15825 = distinct !DISubprogram(name: "new<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansE3newCsbaWXNhtWAp9_11foundations", scope: !7961, file: !7958, line: 94, type: !12, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15826 = distinct !DILocation(line: 1040, column: 9, scope: !15827, inlinedAt: !15828)
!15827 = distinct !DISubprogram(name: "iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpans4iterCsbaWXNhtWAp9_11foundations", scope: !6611, file: !6609, line: 1039, type: !12, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15828 = distinct !DILocation(line: 4048, column: 14, scope: !15829, inlinedAt: !15831)
!15829 = distinct !DISubprogram(name: "into_iter<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans, alloc::alloc::Global>", linkageName: "_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsbaWXNhtWAp9_11foundations", scope: !15830, file: !828, line: 4047, type: !12, scopeLine: 4047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15830 = !DINamespace(name: "{impl#19}", scope: !830)
!15831 = distinct !DILocation(line: 5, column: 28, scope: !15832, inlinedAt: !15833)
!15832 = distinct !DISubprogram(name: "encode_raw<tonic::codec::buffer::EncodeBuf>", linkageName: "_RINvXs1_NtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v1NtB6_25ExportTraceServiceRequestNtNtCs2NttipCe0aR_5prost7message7Message10encode_rawNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations", scope: !15787, file: !2711, line: 5, type: !92, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15833 = distinct !DILocation(line: 56, column: 14, scope: !15819, inlinedAt: !15790)
!15834 = !DILocation(line: 1663, column: 9, scope: !15835, inlinedAt: !15836)
!15835 = distinct !DISubprogram(name: "eq<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvXsd_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtB9_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !7968, file: !3043, line: 1662, type: !12, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15836 = distinct !DILocation(line: 180, column: 28, scope: !15837, inlinedAt: !15840)
!15837 = distinct !DILexicalBlock(scope: !15838, file: !7971, line: 162, column: 17)
!15838 = distinct !DILexicalBlock(scope: !15839, file: !7971, line: 161, column: 17)
!15839 = distinct !DISubprogram(name: "next<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations", scope: !7974, file: !7971, line: 157, type: !12, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15840 = distinct !DILocation(line: 5, column: 28, scope: !15841, inlinedAt: !15833)
!15841 = !DILexicalBlockFile(scope: !15842, file: !2711, discriminator: 2)
!15842 = distinct !DILexicalBlock(scope: !15832, file: !2711, line: 5, column: 28)
!15843 = !DILocation(line: 180, column: 28, scope: !15837, inlinedAt: !15840)
!15844 = !DILocation(line: 5, column: 28, scope: !15845, inlinedAt: !15833)
!15845 = distinct !DILexicalBlock(scope: !15842, file: !2711, line: 5, column: 28)
!15846 = !{!15766, !15735, !15578, !15596}
!15847 = !DILocation(line: 627, column: 28, scope: !15848, inlinedAt: !15849)
!15848 = distinct !DISubprogram(name: "add<opentelemetry_proto::proto::tonic::trace::v1::ResourceSpans>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansE3addCsbaWXNhtWAp9_11foundations", scope: !3044, file: !3043, line: 619, type: !12, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15849 = distinct !DILocation(line: 185, column: 40, scope: !15837, inlinedAt: !15840)
!15850 = !DILocation(line: 102, column: 5, scope: !15770, inlinedAt: !15772)
!15851 = !DILocation(line: 1184, column: 17, scope: !15852, inlinedAt: !15853)
!15852 = distinct !DISubprogram(name: "expect<(), prost::error::EncodeError>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtCs2NttipCe0aR_5prost5error11EncodeErrorE6expectCsbaWXNhtWAp9_11foundations", scope: !2756, file: !1058, line: 1178, type: !92, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15853 = distinct !DILocation(line: 99, column: 14, scope: !15770, inlinedAt: !15772)
!15854 = !{!15855, !15766, !15774, !15725, !15735, !15578, !15582, !15595, !15596, !15565, !15597}
!15855 = distinct !{!15855, !15856, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtCs2NttipCe0aR_5prost5error11EncodeErrorE6expectCsbaWXNhtWAp9_11foundations: argument 0"}
!15856 = distinct !{!15856, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtCs2NttipCe0aR_5prost5error11EncodeErrorE6expectCsbaWXNhtWAp9_11foundations"}
!15857 = !DILocation(line: 1184, column: 23, scope: !15858, inlinedAt: !15853)
!15858 = distinct !DILexicalBlock(scope: !15852, file: !1058, line: 1184, column: 13)
!15859 = !DILocation(line: 848, column: 1, scope: !4528, inlinedAt: !15860)
!15860 = distinct !DILocation(line: 848, column: 1, scope: !4530, inlinedAt: !15861)
!15861 = distinct !DILocation(line: 102, column: 5, scope: !15770, inlinedAt: !15772)
!15862 = !DILocation(line: 848, column: 1, scope: !4533, inlinedAt: !15863)
!15863 = distinct !DILocation(line: 848, column: 1, scope: !4528, inlinedAt: !15860)
!15864 = !DILocation(line: 848, column: 1, scope: !4533, inlinedAt: !15865)
!15865 = distinct !DILocation(line: 848, column: 1, scope: !4528, inlinedAt: !15860)
!15866 = !DILocation(line: 173, column: 51, scope: !15742, inlinedAt: !15732)
!15867 = !DILocation(line: 174, column: 80, scope: !15742, inlinedAt: !15732)
!15868 = !DILocation(line: 1008, column: 63, scope: !15869, inlinedAt: !15870)
!15869 = distinct !DISubprogram(name: "as_slice_mut", linkageName: "_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut12as_slice_mut", scope: !1268, file: !1267, line: 1007, type: !12, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15870 = distinct !DILocation(line: 1360, column: 14, scope: !15871, inlinedAt: !15873)
!15871 = distinct !DISubprogram(name: "as_mut", linkageName: "_RNvXs5_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutINtNtCs3oUPovFnLWP_4core7convert5AsMutShE6as_mut", scope: !15872, file: !1267, line: 1359, type: !12, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15872 = !DINamespace(name: "{impl#7}", scope: !1269)
!15873 = distinct !DILocation(line: 1367, column: 14, scope: !15874, inlinedAt: !15876)
!15874 = distinct !DISubprogram(name: "deref_mut", linkageName: "_RNvXs6_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut", scope: !15875, file: !1267, line: 1366, type: !12, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15875 = !DINamespace(name: "{impl#8}", scope: !1269)
!15876 = distinct !DILocation(line: 178, column: 66, scope: !15742, inlinedAt: !15732)
!15877 = !DILocation(line: 557, column: 12, scope: !15878, inlinedAt: !15879)
!15878 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations", scope: !14673, file: !6603, line: 556, type: !12, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15879 = distinct !DILocation(line: 32, column: 15, scope: !15880, inlinedAt: !15881)
!15880 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCs3oUPovFnLWP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCsbaWXNhtWAp9_11foundations", scope: !9036, file: !6603, line: 31, type: !12, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15881 = distinct !DILocation(line: 178, column: 69, scope: !15742, inlinedAt: !15732)
!15882 = !DILocation(line: 97, column: 5, scope: !15770, inlinedAt: !15772)
!15883 = !DILocation(line: 1275, column: 35, scope: !15755, inlinedAt: !15751)
!15884 = !DILocation(line: 1275, column: 13, scope: !15755, inlinedAt: !15751)
!15885 = !DILocation(line: 558, column: 13, scope: !15878, inlinedAt: !15879)
!15886 = !DILocation(line: 179, column: 1, scope: !15731, inlinedAt: !15732)
!15887 = !DILocation(line: 133, column: 1, scope: !15731, inlinedAt: !15732)
!15888 = !DILocation(line: 1008, column: 44, scope: !15869, inlinedAt: !15870)
!15889 = !DILocation(line: 562, column: 27, scope: !15878, inlinedAt: !15879)
!15890 = !DILocation(line: 102, column: 24, scope: !15891, inlinedAt: !15893)
!15891 = distinct !DILexicalBlock(scope: !15892, file: !6603, line: 100, column: 5)
!15892 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core5slice5index28get_offset_len_mut_noubcheckhECsbaWXNhtWAp9_11foundations", scope: !6605, file: !6603, line: 95, type: !12, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15893 = distinct !DILocation(line: 563, column: 19, scope: !15894, inlinedAt: !15879)
!15894 = distinct !DILexicalBlock(scope: !15878, file: !6603, line: 562, column: 13)
!15895 = !DILocation(line: 178, column: 5, scope: !15742, inlinedAt: !15732)
!15896 = !DILocation(line: 105, column: 28, scope: !15722, inlinedAt: !15588)
!15897 = !DILocation(line: 196, column: 9, scope: !15622, inlinedAt: !15898)
!15898 = distinct !DILocation(line: 117, column: 28, scope: !15723, inlinedAt: !15588)
!15899 = !DILocation(line: 117, column: 24, scope: !15723, inlinedAt: !15588)
!15900 = !DILocation(line: 319, scope: !15576, inlinedAt: !15574)
!15901 = !DILocation(line: 0, scope: !15723, inlinedAt: !15588)
!15902 = !DILocation(line: 120, column: 17, scope: !15604, inlinedAt: !15588)
!15903 = !DILocation(line: 319, column: 15, scope: !15576, inlinedAt: !15574)
!15904 = !{!15596, !15565, !15597}
!15905 = !DILocation(line: 0, scope: !15906, inlinedAt: !15588)
!15906 = !DILexicalBlockFile(scope: !15604, file: !1072, discriminator: 0)
!15907 = !DILocation(line: 93, column: 9, scope: !15604, inlinedAt: !15588)
!15908 = !DILocation(line: 118, column: 52, scope: !15723, inlinedAt: !15588)
!15909 = !DILocation(line: 118, column: 56, scope: !15723, inlinedAt: !15588)
!15910 = !{!15911}
!15911 = distinct !{!15911, !15912, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!15912 = distinct !{!15912, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!15913 = !DILocation(line: 118, column: 76, scope: !15723, inlinedAt: !15588)
!15914 = !DILocation(line: 1103, column: 9, scope: !14351, inlinedAt: !15915)
!15915 = distinct !DILocation(line: 256, column: 18, scope: !14353, inlinedAt: !15916)
!15916 = distinct !DILocation(line: 118, column: 76, scope: !15723, inlinedAt: !15588)
!15917 = !{!15918, !15578, !15582, !15595, !15596, !15565, !15597}
!15918 = distinct !{!15918, !15912, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!15919 = !DILocation(line: 256, column: 12, scope: !14353, inlinedAt: !15916)
!15920 = !DILocation(line: 1165, column: 9, scope: !14358, inlinedAt: !15921)
!15921 = distinct !DILocation(line: 259, column: 33, scope: !14353, inlinedAt: !15916)
!15922 = !DILocation(line: 260, column: 21, scope: !14361, inlinedAt: !15916)
!15923 = !{!15918, !15911, !15578, !15582, !15595, !15596, !15565, !15597}
!15924 = !DILocation(line: 260, column: 39, scope: !14361, inlinedAt: !15916)
!15925 = !DILocation(line: 260, column: 59, scope: !14361, inlinedAt: !15916)
!15926 = !DILocation(line: 260, column: 70, scope: !14361, inlinedAt: !15916)
!15927 = !DILocation(line: 1054, column: 47, scope: !14365, inlinedAt: !15928)
!15928 = distinct !DILocation(line: 1878, column: 19, scope: !14367, inlinedAt: !15929)
!15929 = distinct !DILocation(line: 260, column: 27, scope: !14361, inlinedAt: !15916)
!15930 = !DILocation(line: 1054, column: 22, scope: !14365, inlinedAt: !15928)
!15931 = !DILocation(line: 1879, column: 5, scope: !14371, inlinedAt: !15929)
!15932 = !DILocation(line: 1880, column: 5, scope: !14371, inlinedAt: !15929)
!15933 = !DILocation(line: 42, column: 26, scope: !14374, inlinedAt: !15934)
!15934 = distinct !DILocation(line: 47, column: 47, scope: !14379, inlinedAt: !15935)
!15935 = distinct !DILocation(line: 267, column: 28, scope: !14381, inlinedAt: !15936)
!15936 = distinct !DILocation(line: 1196, column: 29, scope: !14384, inlinedAt: !15937)
!15937 = distinct !DILocation(line: 643, column: 18, scope: !14386, inlinedAt: !15938)
!15938 = distinct !DILocation(line: 1882, column: 5, scope: !14371, inlinedAt: !15929)
!15939 = !DILocation(line: 1196, column: 18, scope: !14384, inlinedAt: !15937)
!15940 = !DILocation(line: 261, column: 21, scope: !14390, inlinedAt: !15916)
!15941 = !DILocation(line: 780, column: 9, scope: !14392, inlinedAt: !15942)
!15942 = distinct !DILocation(line: 261, column: 40, scope: !14390, inlinedAt: !15916)
!15943 = !{!15918, !15911, !15578, !15596}
!15944 = !{!15945}
!15945 = distinct !{!15945, !15946, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!15946 = distinct !{!15946, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!15947 = !DILocation(line: 262, column: 19, scope: !14398, inlinedAt: !15916)
!15948 = !{!15945, !15918, !15911, !15578, !15582, !15595, !15596, !15565, !15597}
!15949 = !DILocation(line: 304, column: 9, scope: !14401, inlinedAt: !15950)
!15950 = distinct !DILocation(line: 695, column: 25, scope: !14403, inlinedAt: !15951)
!15951 = distinct !DILocation(line: 262, column: 19, scope: !14398, inlinedAt: !15916)
!15952 = !DILocation(line: 695, column: 13, scope: !14403, inlinedAt: !15951)
!15953 = !DILocation(line: 698, column: 13, scope: !14403, inlinedAt: !15951)
!15954 = !DILocation(line: 304, column: 9, scope: !14401, inlinedAt: !15955)
!15955 = distinct !DILocation(line: 698, column: 18, scope: !14403, inlinedAt: !15951)
!15956 = !DILocation(line: 694, column: 9, scope: !14411, inlinedAt: !15951)
!15957 = !DILocation(line: 694, column: 9, scope: !14403, inlinedAt: !15951)
!15958 = !DILocation(line: 268, column: 23, scope: !14353, inlinedAt: !15916)
!15959 = !DILocation(line: 269, column: 23, scope: !14419, inlinedAt: !15916)
!15960 = !DILocation(line: 256, column: 9, scope: !14353, inlinedAt: !15916)
!15961 = !{!15962}
!15962 = distinct !{!15962, !15963, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!15963 = distinct !{!15963, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!15964 = !DILocation(line: 264, column: 13, scope: !14390, inlinedAt: !15916)
!15965 = !{!15966}
!15966 = distinct !{!15966, !15967, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!15967 = distinct !{!15967, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!15968 = !DILocation(line: 848, column: 1, scope: !1453, inlinedAt: !15969)
!15969 = distinct !DILocation(line: 264, column: 13, scope: !14390, inlinedAt: !15916)
!15970 = !DILocation(line: 2437, column: 9, scope: !3300, inlinedAt: !15971)
!15971 = distinct !DILocation(line: 2539, column: 16, scope: !3302, inlinedAt: !15972)
!15972 = distinct !DILocation(line: 1609, column: 29, scope: !3304, inlinedAt: !15973)
!15973 = distinct !DILocation(line: 20, column: 24, scope: !3306, inlinedAt: !15974)
!15974 = distinct !DILocation(line: 658, column: 19, scope: !3313, inlinedAt: !15975)
!15975 = distinct !DILocation(line: 669, column: 25, scope: !1449, inlinedAt: !15976)
!15976 = distinct !DILocation(line: 848, column: 1, scope: !1453, inlinedAt: !15969)
!15977 = !DILocation(line: 658, column: 32, scope: !3317, inlinedAt: !15978)
!15978 = distinct !DILocation(line: 20, column: 17, scope: !3306, inlinedAt: !15974)
!15979 = !{!15966, !15962}
!15980 = !DILocation(line: 670, column: 18, scope: !1447, inlinedAt: !15976)
!15981 = !{!15966, !15962, !15918, !15911, !15578, !15596}
!15982 = !DILocation(line: 670, column: 43, scope: !1447, inlinedAt: !15976)
!15983 = !DILocation(line: 652, column: 9, scope: !14445, inlinedAt: !15984)
!15984 = distinct !DILocation(line: 702, column: 18, scope: !14403, inlinedAt: !15951)
!15985 = !DILocation(line: 653, column: 20, scope: !14445, inlinedAt: !15984)
!15986 = !DILocation(line: 871, column: 18, scope: !14449, inlinedAt: !15987)
!15987 = distinct !DILocation(line: 653, column: 29, scope: !14445, inlinedAt: !15984)
!15988 = !DILocation(line: 704, column: 6, scope: !14403, inlinedAt: !15951)
!15989 = !DILocation(line: 263, column: 17, scope: !14398, inlinedAt: !15916)
!15990 = !{!15911, !15578, !15582, !15595, !15596, !15565, !15597}
!15991 = !DILocation(line: 264, column: 13, scope: !14361, inlinedAt: !15916)
!15992 = !DILocation(line: 254, column: 5, scope: !14354, inlinedAt: !15916)
!15993 = !DILocation(line: 0, scope: !14353, inlinedAt: !15916)
!15994 = !DILocation(line: 118, column: 83, scope: !15723, inlinedAt: !15588)
!15995 = !DILocation(line: 118, column: 32, scope: !15723, inlinedAt: !15588)
!15996 = !DILocation(line: 0, scope: !15997, inlinedAt: !15588)
!15997 = !DILexicalBlockFile(scope: !15723, file: !1072, discriminator: 0)
!15998 = !DILocation(line: 848, column: 1, scope: !4651, inlinedAt: !15999)
!15999 = distinct !DILocation(line: 125, column: 21, scope: !15718, inlinedAt: !15588)
!16000 = !{!16001, !15582, !15565}
!16001 = distinct !{!16001, !16002, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations: argument 0"}
!16002 = distinct !{!16002, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations"}
!16003 = !DILocation(line: 196, column: 9, scope: !15622, inlinedAt: !16004)
!16004 = distinct !DILocation(line: 126, column: 65, scope: !15718, inlinedAt: !15588)
!16005 = !DILocation(line: 125, column: 21, scope: !15718, inlinedAt: !15588)
!16006 = !DILocation(line: 77, column: 5, scope: !15586, inlinedAt: !15588)
!16007 = !DILocation(line: 126, column: 48, scope: !15718, inlinedAt: !15588)
!16008 = !DILocation(line: 126, column: 52, scope: !15718, inlinedAt: !15588)
!16009 = !{!16010}
!16010 = distinct !{!16010, !16011, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!16011 = distinct !{!16011, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!16012 = !DILocation(line: 126, column: 72, scope: !15718, inlinedAt: !15588)
!16013 = !DILocation(line: 1103, column: 9, scope: !14351, inlinedAt: !16014)
!16014 = distinct !DILocation(line: 256, column: 18, scope: !14353, inlinedAt: !16015)
!16015 = distinct !DILocation(line: 126, column: 72, scope: !15718, inlinedAt: !15588)
!16016 = !{!16017, !15578, !15582, !15595, !15596, !15565, !15597}
!16017 = distinct !{!16017, !16011, !"_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!16018 = !DILocation(line: 256, column: 12, scope: !14353, inlinedAt: !16015)
!16019 = !DILocation(line: 1165, column: 9, scope: !14358, inlinedAt: !16020)
!16020 = distinct !DILocation(line: 259, column: 33, scope: !14353, inlinedAt: !16015)
!16021 = !DILocation(line: 260, column: 21, scope: !14361, inlinedAt: !16015)
!16022 = !{!16017, !16010, !15578, !15582, !15595, !15596, !15565, !15597}
!16023 = !DILocation(line: 260, column: 39, scope: !14361, inlinedAt: !16015)
!16024 = !DILocation(line: 260, column: 59, scope: !14361, inlinedAt: !16015)
!16025 = !DILocation(line: 260, column: 70, scope: !14361, inlinedAt: !16015)
!16026 = !DILocation(line: 1054, column: 47, scope: !14365, inlinedAt: !16027)
!16027 = distinct !DILocation(line: 1878, column: 19, scope: !14367, inlinedAt: !16028)
!16028 = distinct !DILocation(line: 260, column: 27, scope: !14361, inlinedAt: !16015)
!16029 = !DILocation(line: 1054, column: 22, scope: !14365, inlinedAt: !16027)
!16030 = !DILocation(line: 1879, column: 5, scope: !14371, inlinedAt: !16028)
!16031 = !DILocation(line: 1880, column: 5, scope: !14371, inlinedAt: !16028)
!16032 = !DILocation(line: 42, column: 26, scope: !14374, inlinedAt: !16033)
!16033 = distinct !DILocation(line: 47, column: 47, scope: !14379, inlinedAt: !16034)
!16034 = distinct !DILocation(line: 267, column: 28, scope: !14381, inlinedAt: !16035)
!16035 = distinct !DILocation(line: 1196, column: 29, scope: !14384, inlinedAt: !16036)
!16036 = distinct !DILocation(line: 643, column: 18, scope: !14386, inlinedAt: !16037)
!16037 = distinct !DILocation(line: 1882, column: 5, scope: !14371, inlinedAt: !16028)
!16038 = !DILocation(line: 1196, column: 18, scope: !14384, inlinedAt: !16036)
!16039 = !DILocation(line: 261, column: 21, scope: !14390, inlinedAt: !16015)
!16040 = !DILocation(line: 780, column: 9, scope: !14392, inlinedAt: !16041)
!16041 = distinct !DILocation(line: 261, column: 40, scope: !14390, inlinedAt: !16015)
!16042 = !{!16017, !16010, !15578, !15596}
!16043 = !{!16044}
!16044 = distinct !{!16044, !16045, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!16045 = distinct !{!16045, !"_RNvXs3_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!16046 = !DILocation(line: 262, column: 19, scope: !14398, inlinedAt: !16015)
!16047 = !{!16044, !16017, !16010, !15578, !15582, !15595, !15596, !15565, !15597}
!16048 = !DILocation(line: 304, column: 9, scope: !14401, inlinedAt: !16049)
!16049 = distinct !DILocation(line: 695, column: 25, scope: !14403, inlinedAt: !16050)
!16050 = distinct !DILocation(line: 262, column: 19, scope: !14398, inlinedAt: !16015)
!16051 = !DILocation(line: 695, column: 13, scope: !14403, inlinedAt: !16050)
!16052 = !DILocation(line: 698, column: 13, scope: !14403, inlinedAt: !16050)
!16053 = !DILocation(line: 304, column: 9, scope: !14401, inlinedAt: !16054)
!16054 = distinct !DILocation(line: 698, column: 18, scope: !14403, inlinedAt: !16050)
!16055 = !DILocation(line: 694, column: 9, scope: !14411, inlinedAt: !16050)
!16056 = !DILocation(line: 694, column: 9, scope: !14403, inlinedAt: !16050)
!16057 = !DILocation(line: 268, column: 23, scope: !14353, inlinedAt: !16015)
!16058 = !DILocation(line: 269, column: 23, scope: !14419, inlinedAt: !16015)
!16059 = !DILocation(line: 256, column: 9, scope: !14353, inlinedAt: !16015)
!16060 = !{!16061}
!16061 = distinct !{!16061, !16062, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!16062 = distinct !{!16062, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!16063 = !DILocation(line: 264, column: 13, scope: !14390, inlinedAt: !16015)
!16064 = !{!16065}
!16065 = distinct !{!16065, !16066, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!16066 = distinct !{!16066, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!16067 = !DILocation(line: 848, column: 1, scope: !1453, inlinedAt: !16068)
!16068 = distinct !DILocation(line: 264, column: 13, scope: !14390, inlinedAt: !16015)
!16069 = !DILocation(line: 2437, column: 9, scope: !3300, inlinedAt: !16070)
!16070 = distinct !DILocation(line: 2539, column: 16, scope: !3302, inlinedAt: !16071)
!16071 = distinct !DILocation(line: 1609, column: 29, scope: !3304, inlinedAt: !16072)
!16072 = distinct !DILocation(line: 20, column: 24, scope: !3306, inlinedAt: !16073)
!16073 = distinct !DILocation(line: 658, column: 19, scope: !3313, inlinedAt: !16074)
!16074 = distinct !DILocation(line: 669, column: 25, scope: !1449, inlinedAt: !16075)
!16075 = distinct !DILocation(line: 848, column: 1, scope: !1453, inlinedAt: !16068)
!16076 = !DILocation(line: 658, column: 32, scope: !3317, inlinedAt: !16077)
!16077 = distinct !DILocation(line: 20, column: 17, scope: !3306, inlinedAt: !16073)
!16078 = !{!16065, !16061}
!16079 = !DILocation(line: 670, column: 18, scope: !1447, inlinedAt: !16075)
!16080 = !{!16065, !16061, !16017, !16010, !15578, !15596}
!16081 = !DILocation(line: 670, column: 43, scope: !1447, inlinedAt: !16075)
!16082 = !DILocation(line: 652, column: 9, scope: !14445, inlinedAt: !16083)
!16083 = distinct !DILocation(line: 702, column: 18, scope: !14403, inlinedAt: !16050)
!16084 = !DILocation(line: 653, column: 20, scope: !14445, inlinedAt: !16083)
!16085 = !DILocation(line: 871, column: 18, scope: !14449, inlinedAt: !16086)
!16086 = distinct !DILocation(line: 653, column: 29, scope: !14445, inlinedAt: !16083)
!16087 = !DILocation(line: 704, column: 6, scope: !14403, inlinedAt: !16050)
!16088 = !DILocation(line: 263, column: 17, scope: !14398, inlinedAt: !16015)
!16089 = !{!16010, !15578, !15582, !15595, !15596, !15565, !15597}
!16090 = !DILocation(line: 264, column: 13, scope: !14361, inlinedAt: !16015)
!16091 = !DILocation(line: 126, column: 28, scope: !15718, inlinedAt: !15588)
!16092 = !DILocation(line: 254, column: 5, scope: !14354, inlinedAt: !16015)
!16093 = !DILocation(line: 0, scope: !14353, inlinedAt: !16015)
!16094 = !DILocation(line: 126, column: 79, scope: !15718, inlinedAt: !15588)
!16095 = !DILocation(line: 126, column: 21, scope: !15718, inlinedAt: !15588)
!16096 = !DILocation(line: 333, column: 9, scope: !15576, inlinedAt: !15574)
!16097 = !DILocation(line: 334, column: 6, scope: !15573, inlinedAt: !15574)
!16098 = !DILocation(line: 63, column: 30, scope: !15568)
!16099 = !DILocation(line: 68, column: 5, scope: !15563)
!16100 = !DILocation(line: 330, column: 18, scope: !15576, inlinedAt: !15574)
!16101 = !{!15596}
!16102 = !DILocation(line: 1162, column: 15, scope: !16103, inlinedAt: !16104)
!16103 = distinct !DISubprogram(name: "map<core::result::Result<http::header::map::HeaderMap<http::header::value::HeaderValue>, tonic::status::Status>, core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>, tonic::codec::encode::{impl#4}::poll_frame::{closure_env#0}<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapNtNtCsfUalJnHtWpm_5tonic6status6StatusEE3mapIBJ_INtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEB1O_ENCNvXs2_NtNtB1S_5codec6encodeINtB43_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB7m_4once4OnceB5x_ENcNtIBJ_B5x_B1O_E2Ok0EENtB2F_4Body10poll_frame0ECsbaWXNhtWAp9_11foundations", scope: !994, file: !993, line: 1158, type: !12, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16104 = distinct !DILocation(line: 331, column: 18, scope: !15576, inlinedAt: !15574)
!16105 = !DILocation(line: 1162, column: 9, scope: !16103, inlinedAt: !16104)
!16106 = !DILocation(line: 1163, column: 18, scope: !16103, inlinedAt: !16104)
!16107 = !DILocation(line: 836, column: 15, scope: !16108, inlinedAt: !16109)
!16108 = distinct !DISubprogram(name: "map<http::header::map::HeaderMap<http::header::value::HeaderValue>, tonic::status::Status, http_body::frame::Frame<bytes::bytes::Bytes>, fn(http::header::map::HeaderMap<http::header::value::HeaderValue>) -> http_body::frame::Frame<bytes::bytes::Bytes>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapNtNtCsfUalJnHtWpm_5tonic6status6StatusE3mapINtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvMB2c_B29_8trailersECsbaWXNhtWAp9_11foundations", scope: !2756, file: !1058, line: 832, type: !12, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16109 = distinct !DILocation(line: 331, column: 28, scope: !16110, inlinedAt: !16112)
!16110 = distinct !DISubprogram(name: "{closure#0}<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>", linkageName: "_RNCNvXs2_NtNtCsfUalJnHtWpm_5tonic5codec6encodeINtB7_10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3F_4once4OnceB1Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1Q_NtNtBb_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body10poll_frame0CsbaWXNhtWAp9_11foundations", scope: !16111, file: !981, line: 331, type: !12, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16111 = !DINamespace(name: "poll_frame", scope: !982)
!16112 = distinct !DILocation(line: 1163, column: 29, scope: !16113, inlinedAt: !16104)
!16113 = distinct !DILexicalBlock(scope: !16103, file: !993, line: 1163, column: 13)
!16114 = !DILocation(line: 836, column: 9, scope: !16108, inlinedAt: !16109)
!16115 = !DILocation(line: 840, column: 5, scope: !16108, inlinedAt: !16109)
!16116 = !DILocation(line: 837, column: 16, scope: !16108, inlinedAt: !16109)
!16117 = !DILocation(line: 840, column: 6, scope: !16108, inlinedAt: !16109)
!16118 = !DILocation(line: 321, column: 22, scope: !15576, inlinedAt: !15574)
!16119 = !DILocation(line: 321, column: 40, scope: !16120, inlinedAt: !15574)
!16120 = distinct !DILexicalBlock(scope: !15576, file: !981, line: 321, column: 13)
!16121 = !{!15596, !15597}
!16122 = !DILocation(line: 321, column: 34, scope: !16120, inlinedAt: !15574)
!16123 = !DILocation(line: 62, column: 9, scope: !15568)
!16124 = !DILocation(line: 324, column: 21, scope: !16120, inlinedAt: !15574)
!16125 = !DILocation(line: 325, column: 45, scope: !16120, inlinedAt: !15574)
!16126 = !DILocation(line: 325, column: 52, scope: !16120, inlinedAt: !15574)
!16127 = !DILocation(line: 62, scope: !15568)
!16128 = !DILocation(line: 229, column: 9, scope: !16129, inlinedAt: !16131)
!16129 = distinct !DISubprogram(name: "from<core::option::Option<core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>>>", linkageName: "_RNvXs1_NtNtCs3oUPovFnLWP_4core4task4pollINtB5_4PollINtNtB9_6option6OptionINtNtB9_6result6ResultINtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtCsfUalJnHtWpm_5tonic6status6StatusEEEINtNtB9_7convert4FromBN_E4fromCsbaWXNhtWAp9_11foundations", scope: !16130, file: !1428, line: 228, type: !12, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16130 = !DINamespace(name: "{impl#3}", scope: !1431)
!16131 = !DILocation(line: 780, column: 9, scope: !16132, inlinedAt: !16133)
!16132 = distinct !DISubprogram(name: "into<core::option::Option<core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>>, core::task::poll::Poll<core::option::Option<core::result::Result<http_body::frame::Frame<bytes::bytes::Bytes>, tonic::status::Status>>>>", linkageName: "_RNvXs1_NtCs3oUPovFnLWP_4core7convertINtNtB7_6option6OptionINtNtB7_6result6ResultINtNtCshXnn1MjyudA_9http_body5frame5FrameNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtCsfUalJnHtWpm_5tonic6status6StatusEEINtB5_4IntoINtNtNtB7_4task4poll4PollBy_EE4intoCsbaWXNhtWAp9_11foundations", scope: !516, file: !515, line: 779, type: !12, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16133 = !DILocation(line: 0, scope: !16120, inlinedAt: !15574)
!16134 = !DILocation(line: 327, column: 13, scope: !15576, inlinedAt: !15574)
!16135 = !DILocation(line: 2175, column: 15, scope: !16136, inlinedAt: !16137)
!16136 = distinct !DISubprogram(name: "branch<http::header::map::HeaderMap<http::header::value::HeaderValue>, tonic::status::Status>", linkageName: "_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapNtNtCsfUalJnHtWpm_5tonic6status6StatusENtNtNtB7_3ops9try_trait3Try6branchCsbaWXNhtWAp9_11foundations", scope: !1059, file: !1058, line: 2174, type: !12, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16137 = distinct !DILocation(line: 325, column: 45, scope: !16120, inlinedAt: !15574)
!16138 = !DILocation(line: 0, scope: !16136, inlinedAt: !16137)
!16139 = !DILocation(line: 2175, column: 9, scope: !16136, inlinedAt: !16137)
!16140 = !DILocation(line: 325, column: 67, scope: !16120, inlinedAt: !15574)
!16141 = !DILocation(line: 2176, column: 16, scope: !16136, inlinedAt: !16137)
!16142 = !{!15565, !15597}
!16143 = !DILocation(line: 314, column: 5, scope: !15573, inlinedAt: !15574)
!16144 = !DILocation(line: 0, scope: !15576, inlinedAt: !15574)
!16145 = !DILocation(line: 64, column: 34, scope: !15568)
!16146 = !DILocation(line: 64, column: 50, scope: !15568)
!16147 = !{!16148, !16150, !16152, !16154}
!16148 = distinct !{!16148, !16149, !"_RNvXse_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsfUalJnHtWpm_5tonic6status6StatusE4fromCsbaWXNhtWAp9_11foundations: argument 0"}
!16149 = distinct !{!16149, !"_RNvXse_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsfUalJnHtWpm_5tonic6status6StatusE4fromCsbaWXNhtWAp9_11foundations"}
!16150 = distinct !{!16150, !16151, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsfUalJnHtWpm_5tonic6status6StatusINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2g_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations: argument 0"}
!16151 = distinct !{!16151, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsfUalJnHtWpm_5tonic6status6StatusINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2g_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations"}
!16152 = distinct !{!16152, !16153, !"_RINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB6_6Status9map_errorBz_ECsbaWXNhtWAp9_11foundations: argument 0"}
!16153 = distinct !{!16153, !"_RINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB6_6Status9map_errorBz_ECsbaWXNhtWAp9_11foundations"}
!16154 = distinct !{!16154, !16155, !"_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations: argument 0"}
!16155 = distinct !{!16155, !"_RNvYINvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB9_6Status9map_errorBC_EINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTBC_EE8call_mutCsbaWXNhtWAp9_11foundations"}
!16156 = !{!16157, !16148, !16150, !16152, !16154}
!16157 = distinct !{!16157, !16158, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCsfUalJnHtWpm_5tonic6status6StatusE3newCsbaWXNhtWAp9_11foundations: argument 0"}
!16158 = distinct !{!16158, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCsfUalJnHtWpm_5tonic6status6StatusE3newCsbaWXNhtWAp9_11foundations"}
!16159 = !DILocation(line: 302, scope: !95, inlinedAt: !16160)
!16160 = distinct !DILocation(line: 424, column: 9, scope: !102, inlinedAt: !16161)
!16161 = distinct !DILocation(line: 541, column: 14, scope: !104, inlinedAt: !16162)
!16162 = distinct !DILocation(line: 251, column: 18, scope: !107, inlinedAt: !16163)
!16163 = distinct !DILocation(line: 290, column: 19, scope: !507, inlinedAt: !16164)
!16164 = distinct !DILocation(line: 557, column: 9, scope: !509, inlinedAt: !16165)
!16165 = distinct !DILocation(line: 780, column: 9, scope: !514, inlinedAt: !16166)
!16166 = distinct !DILocation(line: 461, column: 53, scope: !15452, inlinedAt: !16167)
!16167 = distinct !DILocation(line: 166, column: 5, scope: !15454, inlinedAt: !16168)
!16168 = distinct !DILocation(line: 66, column: 65, scope: !16169)
!16169 = distinct !DILexicalBlock(scope: !15568, file: !1001, line: 66, column: 13)
!16170 = !DILocation(line: 130, column: 9, scope: !118, inlinedAt: !16171)
!16171 = distinct !DILocation(line: 302, column: 73, scope: !95, inlinedAt: !16160)
!16172 = !DILocation(line: 251, column: 11, scope: !107, inlinedAt: !16163)
!16173 = !DILocation(line: 251, column: 5, scope: !107, inlinedAt: !16163)
!16174 = !DILocation(line: 253, column: 19, scope: !107, inlinedAt: !16163)
!16175 = !DILocation(line: 296, column: 5, scope: !507, inlinedAt: !16164)
!16176 = !DILocation(line: 288, column: 5, scope: !507, inlinedAt: !16164)
!16177 = !DILocation(line: 293, column: 56, scope: !530, inlinedAt: !16164)
!16178 = !DILocation(line: 296, column: 6, scope: !507, inlinedAt: !16164)
!16179 = !DILocation(line: 462, column: 9, scope: !15472, inlinedAt: !16167)
!16180 = !DILocation(line: 66, column: 44, scope: !16169)
!16181 = !DILocation(line: 66, column: 80, scope: !15568)
!16182 = !DILocation(line: 65, column: 45, scope: !16183)
!16183 = distinct !DILexicalBlock(scope: !15568, file: !1001, line: 65, column: 13)
!16184 = !DILocation(line: 65, column: 33, scope: !15568)
!16185 = !DILocation(line: 65, column: 72, scope: !15568)
!16186 = !DILocation(line: 68, column: 6, scope: !15563)
!16187 = distinct !DISubprogram(name: "is_end_stream<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>, fn(tonic::status::Status) -> tonic::status::Status, tonic::status::Status>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body13is_end_streamCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 70, type: !12, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16188 = !DILocation(line: 71, column: 20, scope: !16187)
!16189 = !DILocation(line: 311, column: 9, scope: !980, inlinedAt: !16190)
!16190 = distinct !DILocation(line: 71, column: 20, scope: !16187)
!16191 = !DILocation(line: 72, column: 6, scope: !16187)
!16192 = distinct !DISubprogram(name: "size_hint<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>, fn(tonic::status::Status) -> tonic::status::Status, tonic::status::Status>", linkageName: "_RNvXs_NtNtCsefgzIPu8p8D_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB4F_4once4OnceB2Q_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB2Q_NtNtB1h_6status6StatusE2Ok0EEINvMs1_B6B_B6z_9map_errorB6z_EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !1168, file: !1001, line: 74, type: !12, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16193 = !DILocation(line: 7, column: 17, scope: !16194, inlinedAt: !16195)
!16194 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs1_NtCshXnn1MjyudA_9http_body9size_hintNtB5_8SizeHintNtNtCs3oUPovFnLWP_4core7default7Default7default", scope: !15484, file: !15483, line: 7, type: !12, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16195 = distinct !DILocation(line: 86, column: 9, scope: !16196, inlinedAt: !16197)
!16196 = distinct !DISubprogram(name: "size_hint<tonic::codec::encode::EncodeBody<tonic_prost::codec::ProstEncoder<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, tokio_stream::stream_ext::map::Map<tokio_stream::once::Once<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest>, fn(opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest) -> core::result::Result<opentelemetry_proto::proto::tonic::collector::trace::v1::ExportTraceServiceRequest, tonic::status::Status>>>>", linkageName: "_RNvYINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3x_4once4OnceB1I_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1I_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations", scope: !15489, file: !15488, line: 85, type: !92, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16197 = distinct !DILocation(line: 75, column: 20, scope: !16192)
!16198 = !{!16199}
!16199 = distinct !{!16199, !16200, !"_RNvYINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3x_4once4OnceB1I_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1I_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations: argument 0"}
!16200 = distinct !{!16200, !"_RNvYINtNtNtCsfUalJnHtWpm_5tonic5codec6encode10EncodeBodyINtNtCscOl6cF6RnLx_11tonic_prost5codec12ProstEncoderNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEINtNtNtCsau3QU8iZK1I_12tokio_stream10stream_ext3map3MapINtNtB3x_4once4OnceB1I_ENcNtINtNtCs3oUPovFnLWP_4core6result6ResultB1I_NtNtB9_6status6StatusE2Ok0EENtCshXnn1MjyudA_9http_body4Body9size_hintCsbaWXNhtWAp9_11foundations"}
!16201 = !DILocation(line: 76, column: 6, scope: !16192)
!16202 = distinct !DISubprogram(name: "drop<hyper::error::Error>", linkageName: "_RNvXsa_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_8ReceiverNtNtCsaCYLheajBls_5hyper5error5ErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations", scope: !16203, file: !6171, line: 479, type: !12, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16203 = !DINamespace(name: "{impl#12}", scope: !6172)
!16204 = !DILocation(line: 454, column: 20, scope: !16205, inlinedAt: !16206)
!16205 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<futures_channel::oneshot::Inner<hyper::error::Error>>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorEEE6as_refCsbaWXNhtWAp9_11foundations", scope: !3044, file: !3043, line: 450, type: !12, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16206 = !DILocation(line: 2193, column: 27, scope: !16207, inlinedAt: !16208)
!16207 = distinct !DISubprogram(name: "inner<futures_channel::oneshot::Inner<hyper::error::Error>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorEE5innerCsbaWXNhtWAp9_11foundations", scope: !3049, file: !3048, line: 2187, type: !12, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16208 = !DILocation(line: 2514, column: 15, scope: !16209, inlinedAt: !16210)
!16209 = distinct !DISubprogram(name: "deref<futures_channel::oneshot::Inner<hyper::error::Error>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4QIrBFOvxlJ_15futures_channel7oneshot5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsbaWXNhtWAp9_11foundations", scope: !8604, file: !3048, line: 2513, type: !12, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16210 = !DILocation(line: 480, column: 9, scope: !16202)
!16211 = !DILocation(line: 2437, column: 9, scope: !16212, inlinedAt: !16213)
!16212 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCsbaWXNhtWAp9_11foundations", scope: !3177, file: !3176, line: 2434, type: !12, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16213 = distinct !DILocation(line: 795, column: 60, scope: !16214, inlinedAt: !16215)
!16214 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !3065, file: !3060, line: 791, type: !12, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16215 = distinct !DILocation(line: 303, column: 23, scope: !16216, inlinedAt: !16217)
!16216 = distinct !DISubprogram(name: "drop_rx<hyper::error::Error>", linkageName: "_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerNtNtCsaCYLheajBls_5hyper5error5ErrorE7drop_rxCsbaWXNhtWAp9_11foundations", scope: !8434, file: !6171, line: 300, type: !12, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16217 = distinct !DILocation(line: 480, column: 20, scope: !16202)
!16218 = !DILocation(line: 3984, column: 23, scope: !3256, inlinedAt: !16219)
!16219 = distinct !DILocation(line: 795, column: 13, scope: !16214, inlinedAt: !16215)
!16220 = !DILocation(line: 2437, column: 9, scope: !16212, inlinedAt: !16221)
!16221 = distinct !DILocation(line: 830, column: 41, scope: !16222, inlinedAt: !16223)
!16222 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs2_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicbE4swap", scope: !3065, file: !3060, line: 825, type: !12, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16223 = distinct !DILocation(line: 53, column: 25, scope: !16224, inlinedAt: !16225)
!16224 = distinct !DISubprogram(name: "try_lock<core::option::Option<core::task::wake::Waker>>", linkageName: "_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel4lockINtB5_4LockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBX_4task4wake5WakerEE8try_lockCsbaWXNhtWAp9_11foundations", scope: !8460, file: !8459, line: 52, type: !12, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16225 = distinct !DILocation(line: 309, column: 46, scope: !16226, inlinedAt: !16217)
!16226 = distinct !DILexicalBlock(scope: !16216, file: !6171, line: 309, column: 57)
!16227 = !DILocation(line: 4019, column: 23, scope: !16228, inlinedAt: !16229)
!16228 = distinct !DISubprogram(name: "atomic_swap<u8>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_swaphECsbaWXNhtWAp9_11foundations", scope: !3061, file: !3060, line: 4011, type: !12, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16229 = distinct !DILocation(line: 830, column: 22, scope: !16222, inlinedAt: !16223)
!16230 = !DILocation(line: 830, column: 22, scope: !16222, inlinedAt: !16223)
!16231 = !DILocation(line: 53, column: 13, scope: !16224, inlinedAt: !16225)
!16232 = !DILocation(line: 309, column: 33, scope: !16226, inlinedAt: !16217)
!16233 = !DILocation(line: 975, column: 22, scope: !16234, inlinedAt: !16235)
!16234 = distinct !DISubprogram(name: "replace<core::option::Option<core::task::wake::Waker>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations", scope: !432, file: !431, line: 961, type: !12, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16235 = distinct !DILocation(line: 1901, column: 9, scope: !16236, inlinedAt: !16237)
!16236 = distinct !DISubprogram(name: "take<core::task::wake::Waker>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtB4_4task4wake5WakerE4takeCsbaWXNhtWAp9_11foundations", scope: !994, file: !993, line: 1899, type: !12, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16237 = distinct !DILocation(line: 310, column: 29, scope: !16226, inlinedAt: !16217)
!16238 = !DILocation(line: 976, column: 49, scope: !16239, inlinedAt: !16235)
!16239 = distinct !DILexicalBlock(scope: !16234, file: !431, line: 975, column: 9)
!16240 = !DILocation(line: 311, column: 18, scope: !16241, inlinedAt: !16217)
!16241 = distinct !DILexicalBlock(scope: !16226, file: !6171, line: 310, column: 13)
!16242 = !DILocation(line: 848, column: 1, scope: !8478, inlinedAt: !16243)
!16243 = distinct !DILocation(line: 1049, column: 1, scope: !16244, inlinedAt: !16245)
!16244 = distinct !DISubprogram(name: "drop<futures_channel::lock::TryLock<core::option::Option<core::task::wake::Waker>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem4dropINtNtCs4QIrBFOvxlJ_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations", scope: !432, file: !431, line: 1045, type: !12, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16245 = distinct !DILocation(line: 311, column: 13, scope: !16241, inlinedAt: !16217)
!16246 = !DILocation(line: 311, column: 22, scope: !16241, inlinedAt: !16217)
!16247 = !DILocation(line: 848, column: 1, scope: !3380, inlinedAt: !16248)
!16248 = distinct !DILocation(line: 1049, column: 1, scope: !16249, inlinedAt: !16250)
!16249 = distinct !DISubprogram(name: "drop<core::option::Option<core::task::wake::Waker>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem4dropINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations", scope: !432, file: !431, line: 1045, type: !12, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16250 = distinct !DILocation(line: 312, column: 13, scope: !16241, inlinedAt: !16217)
!16251 = !DILocation(line: 675, column: 18, scope: !3387, inlinedAt: !16252)
!16252 = distinct !DILocation(line: 848, column: 1, scope: !3392, inlinedAt: !16253)
!16253 = distinct !DILocation(line: 848, column: 1, scope: !3380, inlinedAt: !16248)
!16254 = distinct !{null, null}
!16255 = !DILocation(line: 2437, column: 9, scope: !16212, inlinedAt: !16256)
!16256 = distinct !DILocation(line: 830, column: 41, scope: !16257, inlinedAt: !16258)
!16257 = !DILexicalBlockFile(scope: !16222, file: !3060, discriminator: 2)
!16258 = distinct !DILocation(line: 53, column: 25, scope: !16259, inlinedAt: !16260)
!16259 = !DILexicalBlockFile(scope: !16224, file: !8459, discriminator: 2)
!16260 = distinct !DILocation(line: 322, column: 48, scope: !16261, inlinedAt: !16217)
!16261 = distinct !DILexicalBlock(scope: !16216, file: !6171, line: 322, column: 59)
!16262 = !DILocation(line: 4019, column: 23, scope: !16228, inlinedAt: !16263)
!16263 = distinct !DILocation(line: 830, column: 22, scope: !16257, inlinedAt: !16258)
!16264 = !DILocation(line: 830, column: 22, scope: !16222, inlinedAt: !16258)
!16265 = !DILocation(line: 53, column: 13, scope: !16224, inlinedAt: !16260)
!16266 = !DILocation(line: 300, column: 5, scope: !16216, inlinedAt: !16217)
!16267 = !DILocation(line: 848, column: 1, scope: !3380, inlinedAt: !16268)
!16268 = distinct !DILocation(line: 313, column: 9, scope: !16226, inlinedAt: !16217)
!16269 = !DILocation(line: 675, column: 18, scope: !3387, inlinedAt: !16270)
!16270 = distinct !DILocation(line: 848, column: 1, scope: !3392, inlinedAt: !16271)
!16271 = distinct !DILocation(line: 848, column: 1, scope: !3380, inlinedAt: !16268)
!16272 = !DILocation(line: 322, column: 35, scope: !16261, inlinedAt: !16217)
!16273 = !DILocation(line: 322, column: 21, scope: !16261, inlinedAt: !16217)
!16274 = !DILocation(line: 975, column: 22, scope: !16234, inlinedAt: !16275)
!16275 = distinct !DILocation(line: 1901, column: 9, scope: !16276, inlinedAt: !16277)
!16276 = !DILexicalBlockFile(scope: !16236, file: !993, discriminator: 2)
!16277 = distinct !DILocation(line: 323, column: 40, scope: !16278, inlinedAt: !16217)
!16278 = distinct !DILexicalBlock(scope: !16261, file: !6171, line: 323, column: 47)
!16279 = !DILocation(line: 976, column: 49, scope: !16280, inlinedAt: !16275)
!16280 = distinct !DILexicalBlock(scope: !16234, file: !431, line: 975, column: 9)
!16281 = !DILocation(line: 323, column: 33, scope: !16278, inlinedAt: !16217)
!16282 = !DILocation(line: 323, column: 20, scope: !16278, inlinedAt: !16217)
!16283 = !DILocation(line: 324, column: 22, scope: !16278, inlinedAt: !16217)
!16284 = !DILocation(line: 848, column: 1, scope: !8478, inlinedAt: !16285)
!16285 = distinct !DILocation(line: 1049, column: 1, scope: !16244, inlinedAt: !16286)
!16286 = distinct !DILocation(line: 324, column: 17, scope: !16278, inlinedAt: !16217)
!16287 = !DILocation(line: 848, column: 1, scope: !8478, inlinedAt: !16288)
!16288 = distinct !DILocation(line: 327, column: 9, scope: !16216, inlinedAt: !16217)
!16289 = !DILocation(line: 327, column: 9, scope: !16216, inlinedAt: !16217)
!16290 = !DILocation(line: 324, column: 28, scope: !16278, inlinedAt: !16217)
!16291 = !DILocation(line: 449, column: 18, scope: !16292, inlinedAt: !16294)
!16292 = distinct !DILexicalBlock(scope: !16293, file: !3388, line: 444, column: 9)
!16293 = distinct !DISubprogram(name: "wake", linkageName: "_RNvMs6_NtNtCs3oUPovFnLWP_4core4task4wakeNtB5_5Waker4wake", scope: !12655, file: !3388, line: 439, type: !12, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!16294 = distinct !DILocation(line: 325, column: 22, scope: !16278, inlinedAt: !16217)
end_hunk_1
