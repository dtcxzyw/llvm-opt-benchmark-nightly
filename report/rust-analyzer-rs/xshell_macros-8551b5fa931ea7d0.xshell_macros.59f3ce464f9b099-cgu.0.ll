Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xshell_macros-8551b5fa931ea7d0.xshell_macros.59f3ce464f9b099-cgu.0?download=true
inline.NumInlined: 359
inline.NumDeleted: 221
begin_hunk_0_@_RINvNvNtNtCsiwvLk4GMN8X_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientNtB24_6Client7expand1NvCstVp8Vjf2Ll_13xshell_macros5___cmdE0EB2D_:bb.a
bb.em:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.el
  %i.mq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body6.i.i.i.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.eo
  %i.mr = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.eq, %bb.en
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mr, %bb.en ], [ %i.mv, %bb.eq ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECstVp8Vjf2Ll_13xshell_macros(ptr nonnull align 8 %i.h) #17
          to label %.body6.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ey, !noalias !84

bb.eo:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !84
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !noalias !84
  %i.mt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mt, align 8, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !84
  invoke void @_RNvXsc_CsiwvLk4GMN8X_10proc_macroNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc5.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.en, !noalias !84

.noexc5.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !84
  %i.mu = load i64, ptr %i.e, align 8, !noalias !84
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mu, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.et, label %bb.ep

bb.ep:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !84
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr nonnull @33, i64 43, ptr nonnull %i.d, ptr nonnull align 8 @32, ptr nonnull align 8 @30) #18
          to label %bb.er unwind label %bb.eq, !noalias !84

bb.eq:                                            ; preds = %bb.ep
  %i.mv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro8LexErrorECstVp8Vjf2Ll_13xshell_macros(ptr nonnull align 8 %i.d) #17
          to label %.body.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.es, !noalias !84

bb.er:                                            ; preds = %bb.ep
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

bb.et:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.my = load i32, ptr %i.mx, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !84
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.eu, !noalias !84

bb.eu:                                            ; preds = %bb.et
  %i.mz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %.body6.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ev, !noalias !84

bb.ev:                                            ; preds = %bb.eu
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.em, !noalias !84

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.i)
          to label %_RNCNvCstVp8Vjf2Ll_13xshell_macros5___cmd0B3_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.ew, !noalias !84

bb.ew:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.nb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.i)
          to label %.body.i.i.i.i.i.i unwind label %bb.ex, !noalias !84

bb.ex:                                            ; preds = %bb.ew
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

bb.ey:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i, %.body6.i.i.i.i.i.i.i.i.i.i.i
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

_RNCNvCstVp8Vjf2Ll_13xshell_macros5___cmd0B3_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.i)
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.ez, !noalias !84

.noexc5.i.i.i.i.i.i:                              ; preds = %_RNCNvCstVp8Vjf2Ll_13xshell_macros5___cmd0B3_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !84
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECstVp8Vjf2Ll_13xshell_macros.exit8.i.i.i.i.i.i

bb.ez:                                            ; preds = %_RNCNvCstVp8Vjf2Ll_13xshell_macros5___cmd0B3_.exit.i.i.i.i.i.i.i.i.i.i, %bb.eh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiwvLk4GMN8X_10proc_macro9TokenTreeEECstVp8Vjf2Ll_13xshell_macros.exit60.i.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ez, %bb.ew, %.body6.i.i.i.i.i.i.i.i.i.i.i, %bb.ek, %bb.ej, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECstVp8Vjf2Ll_13xshell_macros.exit66.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ne, %bb.ez ], [ %.pn33.i.i.i.i.i.i.i.i.i.i, %bb.ej ], [ %.pn.pn.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn33.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECstVp8Vjf2Ll_13xshell_macros.exit66.i.i.i.i.i.i.i.i.i.i ], [ %.pn33.i.i.i.i.i.i.i.i.i.i, %bb.ek ], [ %i.nb, %bb.ew ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %.body6.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvXNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.bh)
          to label %.thread.i.i.i.i.i unwind label %bb.fa, !noalias !84

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECstVp8Vjf2Ll_13xshell_macros.exit8.i.i.i.i.i.i: ; preds = %.noexc5.i.i.i.i.i.i, %_RNvCstVp8Vjf2Ll_13xshell_macros7try_cmd.exit.i.i.i.i.i.i.i.i.i, %_RNvCstVp8Vjf2Ll_13xshell_macros7try_cmd.exit.thread.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.my, %.noexc5.i.i.i.i.i.i ], [ %i.ju, %_RNvCstVp8Vjf2Ll_13xshell_macros7try_cmd.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.sroa.0.1.i.i.i.i.i.i.i.i.i, %_RNvCstVp8Vjf2Ll_13xshell_macros7try_cmd.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !84
  invoke void @_RNvXNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.bh)
          to label %.thread62.i.i unwind label %bb.fb, !noalias !84

bb.fa:                                            ; preds = %.body.i.i.i.i.i.i
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

bb.fb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECstVp8Vjf2Ll_13xshell_macros.exit8.i.i.i.i.i.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.fb, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ng, %bb.fb ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.310.0..sroa_idx.i.i.i.i.i, align 8, !noalias !84
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i17.i.i.i.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !84
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !84
  call void %i.ni(ptr nonnull byval([40 x i8]) align 8 %i.b) #19, !noalias !84, !inline_history !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  br label %.body37.i.i

bb.fc:                                            ; preds = %.invoke.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i, %.invoke110.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i5.i.i.i.i.i.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i1.i.i.i.i.i.i.i, %_RNvXsf_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i.i.i.i.i, %.noexc23.i.i, %bb.a
  %i.nj = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body37.i.i

.body37.i.i:                                      ; preds = %bb.fc, %.thread.i.i.i.i.i
  %eh.lpad-body38.i.i = phi { ptr, i32 } [ %i.nj, %bb.fc ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.nk = extractvalue { ptr, i32 } %eh.lpad-body38.i.i, 0
  %i.nl = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr %i.nk)
          to label %bb.fe unwind label %bb.fd, !noalias !84 ; 2 uses

bb.fd:                                            ; preds = %.body37.i.i
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #15, !noalias !84
  unreachable

.thread62.i.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECstVp8Vjf2Ll_13xshell_macros.exit8.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !84
  %i.nn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !84
  call void %i.no(ptr nonnull byval([40 x i8]) align 8 %i.c) #19, !noalias !84, !inline_history !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i64 40, i1 false), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !84
  %.sroa.4.8.insert.ext.i.i = zext i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i64
  %i.np = inttoptr i64 %.sroa.4.8.insert.ext.i.i to ptr
  store i64 0, ptr %i.cw, align 8, !noalias !84
  br label %.thread64.i.i

bb.fe:                                            ; preds = %.body37.i.i
  %i.nq = extractvalue { ptr, ptr } %i.nl, 0      ; 2 uses
  %i.nr = extractvalue { ptr, ptr } %i.nl, 1      ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 35 uses
  store i64 0, ptr %i.ns, align 8, !noalias !84
  %.not.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i, label %.thread64.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvXNtNtCsiwvLk4GMN8X_10proc_macro6bridge13panic_messageNtB2_12PanicMessageINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB1g_3any3AnyNtNtB1g_6marker4SendEL_EE4from(ptr nonnull sret([24 x i8]) align 8 %i.cr, ptr nonnull %i.nq, ptr align 8 %i.nr)
          to label %bb.fg unwind label %bb.gc, !noalias !84

.thread64.i.i:                                    ; preds = %bb.fe, %.thread62.i.i
  %i.nt = phi ptr [ %i.cw, %.thread62.i.i ], [ %i.ns, %bb.fe ]
  %i.nu = phi ptr [ %i.np, %.thread62.i.i ], [ %i.nr, %bb.fe ]
  %i.nv = ptrtoint ptr %i.nu to i64
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %i.nv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 8, !noalias !84 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.fh

._crit_edge.i.i:                                  ; preds = %bb.fg
  %.pre.i.i = load i64, ptr %i.ns, align 8, !noalias !84
  br label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i, i64 12, i1 false), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !84
  %i.nw = load i64, ptr %i.ns, align 8, !noalias !84 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 5 uses
  %i.ny = load i64, ptr %i.nx, align 8, !noalias !84
  %i.nz = icmp eq i64 %i.nw, %i.ny
  br i1 %i.nz, label %bb.fi, label %bb.fs

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !84
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !84
  call void %i.ob(ptr nonnull sret([40 x i8]) align 8 %i.co, ptr nonnull byval([40 x i8]) align 8 %i.cp, i64 1) #19, !noalias !84, !inline_history !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !84
  %i.oc = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !noalias !84
  call void %i.od(ptr nonnull byval([40 x i8]) align 8 %i.cn) #19, !noalias !84, !inline_history !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.co, i64 40, i1 false), !noalias !84
  %.pre.i.i.i.i = load i64, ptr %i.ns, align 8, !noalias !84
  br label %bb.fs

bb.fj:                                            ; preds = %._crit_edge.i.i, %.thread64.i.i
  %2 = phi i64 [ 0, %.thread64.i.i ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.4.04868.i.i = phi i32 [ %.sroa.4.8.extract.trunc.i.i, %.thread64.i.i ], [ %.sroa.4.0.copyload.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.oe = phi ptr [ %i.nt, %.thread64.i.i ], [ %i.ns, %._crit_edge.i.i ] ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !84
  %i.of = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 4 uses
  %i.og = load i64, ptr %i.of, align 8, !noalias !84
  %i.oh = icmp eq i64 %2, %i.og
  br i1 %i.oh, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  %.sroa.4.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !84
  %i.oi = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !84
  call void %i.oj(ptr nonnull sret([40 x i8]) align 8 %i.cl, ptr nonnull byval([40 x i8]) align 8 %i.cm, i64 1) #19, !noalias !84, !inline_history !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !84
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8, !noalias !84
  call void %i.ol(ptr nonnull byval([40 x i8]) align 8 %i.ck) #19, !noalias !84, !inline_history !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.cl, i64 40, i1 false), !noalias !84
  %.pre.i6.i.i.i = load i64, ptr %i.oe, align 8, !noalias !84
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.om = phi i64 [ %2, %bb.fj ], [ %.pre.i6.i.i.i, %bb.fk ]
  %i.on = load ptr, ptr %i.cs, align 8, !noalias !84
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.om
  store i8 0, ptr %i.oo, align 1, !noalias !84
  %i.op = load i64, ptr %i.oe, align 8, !noalias !84
  %i.oq = add i64 %i.op, 1                        ; 5 uses
  store i64 %i.oq, ptr %i.oe, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !84
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.4.04868.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !84
  %i.or = load i64, ptr %i.of, align 8, !noalias !84
  %i.os = icmp eq i64 %i.oq, %i.or
  br i1 %i.os, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !84
  %i.ot = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.ou = load ptr, ptr %i.ot, align 8, !noalias !84
  call void %i.ou(ptr nonnull sret([40 x i8]) align 8 %i.ci, ptr nonnull byval([40 x i8]) align 8 %i.cj, i64 1) #19, !noalias !84, !inline_history !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !84
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !84
  call void %i.ow(ptr nonnull byval([40 x i8]) align 8 %i.ch) #19, !noalias !84, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false), !noalias !84
  %.pre.i.i.i.i.i.i = load i64, ptr %i.oe, align 8, !noalias !84
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !84
  %i.ox = load i64, ptr %i.of, align 8, !noalias !84
  %i.oy = icmp eq i64 %i.oq, %i.ox
  br i1 %i.oy, label %bb.fp, label %_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCstVp8Vjf2Ll_13xshell_macros.exit7.i.i.i.i.i

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  %.sroa.4.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !84
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !noalias !84
  call void %i.pa(ptr nonnull sret([40 x i8]) align 8 %i.cf, ptr nonnull byval([40 x i8]) align 8 %i.cg, i64 1) #19, !noalias !84, !inline_history !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !84
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8, !noalias !84
  call void %i.pc(ptr nonnull byval([40 x i8]) align 8 %i.ce) #19, !noalias !84, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !noalias !84
  %.pre.i6.i.i.i.i.i = load i64, ptr %i.oe, align 8, !noalias !84
  br label %_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCstVp8Vjf2Ll_13xshell_macros.exit7.i.i.i.i.i

_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCstVp8Vjf2Ll_13xshell_macros.exit7.i.i.i.i.i: ; preds = %bb.fp, %bb.fo
  %i.pd = phi i64 [ %i.oq, %bb.fo ], [ %.pre.i6.i.i.i.i.i, %bb.fp ]
  %i.pe = load ptr, ptr %i.cs, align 8, !noalias !84
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pd
  store i8 1, ptr %i.pf, align 1, !noalias !84
  %i.pg = load i64, ptr %i.oe, align 8, !noalias !84
  %i.ph = add i64 %i.pg, 1
  store i64 %i.ph, ptr %i.oe, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !84
  br label %bb.gd

bb.fq:                                            ; preds = %bb.fn, %bb.fm
  %i.pi = phi i64 [ %i.oq, %bb.fm ], [ %.pre.i.i.i.i.i.i, %bb.fn ]
  %i.pj = load ptr, ptr %i.cs, align 8, !noalias !84
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  store i8 0, ptr %i.pk, align 1, !noalias !84
  %i.pl = load i64, ptr %i.oe, align 8, !noalias !84
  %i.pm = add i64 %i.pl, 1                        ; 3 uses
  store i64 %i.pm, ptr %i.oe, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !84
  %i.pn = load i64, ptr %i.of, align 8, !noalias !84
  %i.po = sub i64 %i.pn, %i.pm
  %i.pp = icmp ult i64 %i.po, 4
  br i1 %i.pp, label %bb.fr, label %_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !84
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !84
  call void %i.pr(ptr nonnull sret([40 x i8]) align 8 %i.cc, ptr nonnull byval([40 x i8]) align 8 %i.cd, i64 4) #19, !noalias !84, !inline_history !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false), !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !84
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !84
  %i.ps = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !84
  call void %i.pt(ptr nonnull byval([40 x i8]) align 8 %i.cb) #19, !noalias !84, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i64 40, i1 false), !noalias !84
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.oe, align 8, !noalias !84
  br label %_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i

_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCstVp8Vjf2Ll_13xshell_macros.exit.i.i.i.i.i: ; preds = %bb.fr, %bb.fq
  %i.pu = phi i64 [ %i.pm, %bb.fq ], [ %.pre.i.i.i.i.i.i.i, %bb.fr ]
  %i.pv = load ptr, ptr %i.cs, align 8, !noalias !84
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pu
  store i32 %.sroa.4.04868.i.i, ptr %i.pw, align 1, !noalias !84
  %i.px = load i64, ptr %i.oe, align 8, !noalias !84
  %i.py = add i64 %i.px, 4
  store i64 %i.py, ptr %i.oe, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !84
  br label %bb.gd

bb.fs:                                            ; preds = %bb.fi, %bb.fh
  %i.pz = phi i64 [ %i.nw, %bb.fh ], [ %.pre.i.i.i.i, %bb.fi ]
  %i.qa = load ptr, ptr %i.cs, align 8, !noalias !84
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.pz
  store i8 1, ptr %i.qb, align 1, !noalias !84
  %i.qc = load i64, ptr %i.ns, align 8, !noalias !84
  %i.qd = add i64 %i.qc, 1                        ; 5 uses
  store i64 %i.qd, ptr %i.ns, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !84
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.cq, align 8, !noalias !84
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !noalias !84
  %i.qe = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775806
  br i1 %i.qe, label %.thread.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !84 ; 2 uses
  %.sroa.4.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.4.0.i.i.i.i = load i64, ptr %.sroa.4.0.in.i.i.i.i, align 8, !noalias !84 ; 5 uses
  %.not.i.i8.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i8.i.i.i, label %.thread.i.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !84
end_hunk_0
