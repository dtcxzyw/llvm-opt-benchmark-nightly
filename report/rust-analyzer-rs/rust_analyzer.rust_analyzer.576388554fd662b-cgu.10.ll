Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer.rust_analyzer.576388554fd662b-cgu.10?download=true
inline.NumInlined: 172
inline.NumDeleted: 111
begin_hunk_0_@_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing4jsonINtB5_11TimingLayerINtNtNtCsity1gTxgZvF_18tracing_subscriber5layer7layered7LayeredINtNtNtB1f_6filter13layer_filters8FilteredINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDINtB1d_5LayerNtNtNtB1f_8registry7sharded8RegistryENtNtCshzWfHUSfYae_4core6marker4SyncNtB4f_4SendEL_ENtNtB2e_7targets7TargetsB3C_EB3C_ENvNtNtCscAsMj0W7j8b_3std2io5stdio6stderrEIB3q_B18_E8on_closeCst4wJMUmv2x_13rust_analyzer:bb.a
  %.sroa.7.040 = phi ptr [ %.sroa.0.0.i.i.i, %.thread ], [ %.sroa.7.0.copyload29, %bb.v ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.040) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !267
  store ptr %.sroa.7.040, ptr %i.b, align 8, !noalias !267
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 24, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #19
          to label %bb.y unwind label %bb.x, !noalias !267

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5error5ErrorECst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #16
          to label %.body unwind label %bb.z, !noalias !267

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !267
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  store i64 %.sroa.026.0.copyload27, ptr %i.j, align 8, !alias.scope !267
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %.sroa.7.0.copyload29, ptr %.sroa.6.0..sroa_idx22, align 8, !alias.scope !267
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload31, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !267
  %i.bp = icmp sgt i64 %.sroa.9.0.copyload31, -1
  call void @llvm.assume(i1 %i.bp)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %bb.ac unwind label %bb.ab

.body14:                                          ; preds = %bb.ah, %bb.ae, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %i.by, %bb.ae ], [ %i.bz, %bb.ah ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #16
          to label %.body unwind label %bb.an

bb.ab:                                            ; preds = %bb.aa, %bb.ac
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body14

bb.ac:                                            ; preds = %bb.aa
  %i.br = load ptr, ptr %.sroa.6.0..sroa_idx22, align 8, !alias.scope !270, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.9.0.copyload31
  store i8 10, ptr %i.bs, align 1
  %i.bt = add nuw i64 %.sroa.9.0.copyload31, 1
  store i64 %i.bt, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bu = invoke noundef nonnull align 8 ptr @_RNvXNtNtCsity1gTxgZvF_18tracing_subscriber3fmt6writerNvNtNtCscAsMj0W7j8b_3std2io5stdio6stderrNtB2_10MakeWriter11make_writerCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bu, ptr %i.i, align 8
  %i.bv = load ptr, ptr %.sroa.6.0..sroa_idx22, align 8, !nonnull !5, !noundef !5
  %i.bw = load i64, ptr %.sroa.8.0..sroa_idx24, align 8, !noundef !5
  %i.bx = invoke noundef ptr @_RNvXso_NtNtCscAsMj0W7j8b_3std2io5stdioNtB5_6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bw)
          to label %bb.af unwind label %bb.ae     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body14

bb.af:                                            ; preds = %bb.ad
  %.not.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i13, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCst4wJMUmv2x_13rust_analyzer.exit, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bx, ptr %i.a, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16
          to label %.body14 unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCst4wJMUmv2x_13rust_analyzer.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECst4wJMUmv2x_13rust_analyzer.exit.i16 unwind label %bb.ak

bb.ak:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCst4wJMUmv2x_13rust_analyzer.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECst4wJMUmv2x_13rust_analyzer.exit.i16: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCst4wJMUmv2x_13rust_analyzer.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECst4wJMUmv2x_13rust_analyzer.exit unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECst4wJMUmv2x_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECst4wJMUmv2x_13rust_analyzer.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.am

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry10extensions13ExtensionsMutECst4wJMUmv2x_13rust_analyzer.exit7, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECst4wJMUmv2x_13rust_analyzer.exit
  call void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.an:                                            ; preds = %bb.g, %.body, %.body14
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry10extensions13ExtensionsMutECst4wJMUmv2x_13rust_analyzer.exit7: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.am

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtNtNtBG_6filter13layer_filters8FilteredINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDINtB1A_5LayerNtNtBE_7sharded8RegistryENtNtB4_6marker4SyncNtB3U_4SendEL_ENtNtB26_7targets7TargetsB3t_EB3t_EEECst4wJMUmv2x_13rust_analyzer.exit: ; preds = %.body
  resume { ptr, i32 } %.pn3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !9, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, i32 noundef %1) #20
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !9, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #20
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsity1gTxgZvF_18tracing_subscriber5fieldRNtNtCsaMQbKjKCVRW_12tracing_core5event5EventNtB5_12RecordFields6recordCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  tail call void @_RNvXs_NtCsity1gTxgZvF_18tracing_subscriber5fieldNtNtCsaMQbKjKCVRW_12tracing_core5event5EventNtB4_12RecordFields6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtNtNtCsity1gTxgZvF_18tracing_subscriber3fmt4time10time_crateINtB5_10OffsetTimeNtNtNtNtCsjsYc2335iSi_4time18format_description10well_known7rfc33397Rfc3339ENtB7_10FormatTime11format_timeCst4wJMUmv2x_13rust_analyzer(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !287
  %i.h = tail call { i64, i32 } @_RNvMs5_NtCscAsMj0W7j8b_3std4timeNtB5_10SystemTime3now(), !noalias !287 ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.h, 0
  %i.j = extractvalue { i64, i32 } %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !noalias !287
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.j, ptr %i.k, align 8, !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !287
  call void @_RNvMs5_NtCscAsMj0W7j8b_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 0, i32 noundef 0), !noalias !287
  %i.l = load i64, ptr %i.f, align 8, !range !13, !noalias !287, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !287, !noundef !5 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i32, ptr %i.p, align 8, !range !288, !noalias !287, !noundef !5 ; 3 uses
  %i.r = urem i64 %i.o, 60                        ; 4 uses
  %i.s = udiv i64 %i.o, 60
  %i.t = urem i64 %i.s, 60                        ; 4 uses
  br i1 %i.m, label %bb.b, label %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i

bb.b:                                             ; preds = %bb.a
  %i.u = sub nsw i64 0, %i.t
  %i.v = udiv i64 %i.o, 3600
  %i.w = urem i64 %i.v, 24                        ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.thread.i.i.i, label %.thread.i.i.thread.i, !prof !15

.thread.i.i.thread.i:                             ; preds = %bb.b
  %i.x = sub nuw nsw i32 1000000000, %i.q
  %i.y = xor i64 %i.r, -1
  br label %.thread43.i.i.thread.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.z = sub nsw i64 0, %i.r
  %.not60.i = icmp eq i64 %i.r, 0
  br i1 %.not60.i, label %.thread43.i.i.i, label %.thread43.i.i.thread.i, !prof !289

.thread43.i.i.thread.i:                           ; preds = %.thread.i.i.i, %.thread.i.i.thread.i
  %.sroa.04.040.i.i25.i = phi i32 [ %i.x, %.thread.i.i.thread.i ], [ 0, %.thread.i.i.i ]
  %.sroa.09.041.i.i23.i = phi i64 [ %i.y, %.thread.i.i.thread.i ], [ %i.z, %.thread.i.i.i ]
  %i.aa = add nsw i64 %.sroa.09.041.i.i23.i, 60
  %i.ab = xor i64 %i.t, -1
  br label %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i

.thread43.i.i.i:                                  ; preds = %.thread.i.i.i
  %.not61.i = icmp eq i64 %i.t, 0
  br i1 %.not61.i, label %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i, label %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i, !prof !289

_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i: ; preds = %.thread43.i.i.i, %.thread43.i.i.thread.i
  %.sroa.09.150.i.i33.i = phi i64 [ %i.aa, %.thread43.i.i.thread.i ], [ 0, %.thread43.i.i.i ]
  %.sroa.016.051.i.i31.i = phi i64 [ %i.ab, %.thread43.i.i.thread.i ], [ %i.u, %.thread43.i.i.i ]
  %.sroa.04.040.i.i2430.i = phi i32 [ %.sroa.04.040.i.i25.i, %.thread43.i.i.thread.i ], [ 0, %.thread43.i.i.i ]
  %i.ac = add nsw i64 %.sroa.016.051.i.i31.i, 60
  %i.ad = icmp ugt i64 %i.o, 185542587187199
  br i1 %i.ad, label %bb.k, label %bb.e

_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i: ; preds = %.thread43.i.i.i
  %.not62.i = icmp eq i64 %i.w, 0
  br i1 %.not62.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i
  %or.cond.i.a = icmp ugt i64 %i.o, 377705203199
  br i1 %or.cond.i.a, label %bb.f, label %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i, !prof !290

_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i: ; preds = %bb.c
  %i.ae = udiv i64 %i.o, 86400
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = sub nuw nsw i32 869850581, %i.af        ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 3853261555       ; 2 uses
  %i.aj = lshr i64 %i.ai, 15
  %i.ak = lshr i64 %i.ai, 47
  %i.al = trunc nuw nsw i64 %i.ak to i32          ; 3 uses
  %i.am = trunc i64 %i.aj to i32
  %i.an = icmp ugt i32 %i.am, 42920275
  %i.ao = and i32 %i.al, 3
  %i.ap = icmp eq i32 %i.ao, 0
  %.sroa.0.0.i.i.i.i.i = or i1 %i.an, %i.ap       ; 2 uses
  %i.aq = lshr i32 %i.al, 2
  %i.ar = add nuw nsw i32 %i.ag, %i.al
  %i.as = sub nuw nsw i32 %i.ar, %i.aq
  %i.at = zext nneg i32 %i.as to i64
  %i.au = mul nuw nsw i64 %i.at, 3010298776       ; 2 uses
  %i.av = lshr i64 %i.au, 8
  %i.aw = lshr i64 %i.au, 40
  %i.ax = trunc nuw nsw i64 %i.aw to i32          ; 2 uses
  %i.ay = and i64 %i.av, 4294967295
  %i.az = mul nuw nsw i64 %i.ay, 1461
  %i.ba = lshr i64 %i.az, 34
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = zext i1 %.sroa.0.0.i.i.i.i.i to i32
  %i.bd = add nuw nsw i32 %i.bb, %i.bc
  %i.be = and i32 %i.ax, 3
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = and i1 %.sroa.0.0.i.i.i.i.i, %i.bf
  %i.bh = shl nuw i32 %i.ax, 10
  %i.bi = add nsw i32 %i.bh, 1858256896
  %i.bj = select i1 %i.bg, i32 512, i32 0
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = or i32 %i.bk, %i.bd                     ; 2 uses
  %i.bm = icmp ne i32 %i.bl, 0
  call void @llvm.assume(i1 %i.bm)
  br label %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i

bb.d:                                             ; preds = %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i
  %i.bn = icmp ugt i64 %i.o, 185542587187199
  br i1 %i.bn, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i
  %.sroa.09.150.i.i324050.i = phi i64 [ %.sroa.09.150.i.i33.i, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.04.040.i.i24294249.i = phi i32 [ %.sroa.04.040.i.i2430.i, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.016.1.i.i4448.i = phi i64 [ %i.ac, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i ], [ 0, %bb.d ] ; 2 uses
  %.pn.i = phi i64 [ 23, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i ], [ 24, %bb.d ] ; 2 uses
  %or.cond.i.i16.i.i = icmp samesign ugt i64 %i.o, 377705203199
  br i1 %or.cond.i.i16.i.i, label %bb.k, label %bb.g, !prof !291

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !292
  unreachable

bb.g:                                             ; preds = %bb.e
  %2 = udiv i64 %i.o, 86400
  %3 = trunc nuw nsw i64 %2 to i32
  %i.bo = sub nuw nsw i32 869850581, %3           ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bp, 3853261555       ; 2 uses
  %i.br = lshr i64 %i.bq, 15
  %i.bs = lshr i64 %i.bq, 47
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %i.bu = trunc i64 %i.br to i32
  %i.bv = icmp ugt i32 %i.bu, 42920275
  %i.bw = and i32 %i.bt, 3
  %i.bx = icmp eq i32 %i.bw, 0
  %.sroa.0.0.i.i.i17.i.i = or i1 %i.bv, %i.bx     ; 2 uses
  %i.by = lshr i32 %i.bt, 2
  %i.bz = add nuw nsw i32 %i.bo, %i.bt
  %i.ca = sub nuw nsw i32 %i.bz, %i.by
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = mul nuw nsw i64 %i.cb, 3010298776       ; 2 uses
  %i.cd = lshr i64 %i.cc, 8
  %i.ce = lshr i64 %i.cc, 40
  %i.cf = trunc nuw nsw i64 %i.ce to i32          ; 2 uses
  %i.cg = and i64 %i.cd, 4294967295
  %i.ch = mul nuw nsw i64 %i.cg, 1461
  %i.ci = lshr i64 %i.ch, 34
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = zext i1 %.sroa.0.0.i.i.i17.i.i to i32
  %i.cl = add nuw nsw i32 %i.cj, %i.ck            ; 2 uses
  %i.cm = and i32 %i.cf, 3
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = and i1 %.sroa.0.0.i.i.i17.i.i, %i.cn
  %i.cp = shl nuw i32 %i.cf, 10
  %i.cq = add nsw i32 %i.cp, 1858256896           ; 2 uses
  %i.cr = select i1 %i.co, i32 512, i32 0
  %i.cs = or disjoint i32 %i.cr, %i.cq
  %i.ct = or i32 %i.cs, %i.cl                     ; 3 uses
  %i.cu = icmp ne i32 %i.ct, 0
  call void @llvm.assume(i1 %i.cu)
  %.not.i.i.i = icmp eq i32 %i.cl, 1
  br i1 %.not.i.i.i, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.cv = icmp eq i32 %i.ct, -10238975
  br i1 %i.cv, label %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date12previous_day.exit.i.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cw = add i32 %i.ct, -1                       ; 2 uses
  %i.cx = icmp ne i32 %i.cw, 0
  call void @llvm.assume(i1 %i.cx)
  br label %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cy = ashr exact i32 %i.cq, 10                ; 3 uses
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  %i.da = icmp slt i32 %i.cy, 1
  %i.db = sub nsw i32 1, %i.cy
  %.sroa.04.0.i.i.i = select i1 %i.da, i32 %i.db, i32 %i.cz
  %i.dc = mul i32 %.sroa.04.0.i.i.i, 33555415
  %i.dd = and i32 %i.dc, 100695055
  %i.de = icmp samesign ult i32 %i.dd, 31745      ; 2 uses
  %i.df = select i1 %i.de, i32 512, i32 0
  %.sroa.01.0.i.i.i = select i1 %i.de, i32 366, i32 365
  %i.dg = shl nsw i32 %i.cz, 10
  %i.dh = or disjoint i32 %i.df, %i.dg
  %i.di = or disjoint i32 %i.dh, %.sroa.01.0.i.i.i
  br label %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i

bb.k:                                             ; preds = %bb.e, %bb.d, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !292
  unreachable

_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date12previous_day.exit.i.i: ; preds = %bb.h
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18, !noalias !292
  unreachable

_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i: ; preds = %bb.j, %bb.i, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i
  %.pn63.i = phi i64 [ 0, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i ], [ %.pn.i, %bb.j ], [ %.pn.i, %bb.i ]
  %.sroa.016.1.i.i43.i = phi i64 [ 0, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i ], [ %.sroa.016.1.i.i4448.i, %bb.j ], [ %.sroa.016.1.i.i4448.i, %bb.i ]
  %.sroa.04.040.i.i242941.i = phi i32 [ 0, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i ], [ %.sroa.04.040.i.i24294249.i, %bb.j ], [ %.sroa.04.040.i.i24294249.i, %bb.i ]
  %.sroa.09.150.i.i3239.i = phi i64 [ 0, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i ], [ %.sroa.09.150.i.i324050.i, %bb.j ], [ %.sroa.09.150.i.i324050.i, %bb.i ]
  %.sroa.02.0.i.i = phi i32 [ %i.bl, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_sub_std.exit.i.i ], [ %i.di, %bb.j ], [ %i.cw, %bb.i ]
  %spec.select.i.i45.i = sub nsw i64 %.pn63.i, %i.w
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %spec.select.i.i45.i, 48
  %.sroa.3.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.016.1.i.i43.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i = shl nuw nsw i64 %.sroa.09.150.i.i3239.i, 32
  %.sroa.2.0.insert.shift.i.i.i.i = and i64 %.sroa.2.0.insert.ext.i.i.i.i, 1095216660480
  %.sroa.2.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.3.0.insert.insert.i.i.i.i
  br label %_RNvMs2_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit

_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i: ; preds = %bb.a
  %i.dj = udiv i64 %i.o, 3600
  %i.dk = urem i64 %i.dj, 24
  %i.dl = icmp ugt i64 %i.o, 185542587187199
  br i1 %i.dl, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i
  %i.dm = udiv i64 %i.o, 86400
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dn, i32 2440588) ; 2 uses
  %i.dp = extractvalue { i32, i1 } %i.do, 1
  br i1 %i.dp, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.dq = extractvalue { i32, i1 } %i.do, 0       ; 2 uses
  %i.dr = add nsw i32 %i.dq, -5373485
  %or.cond.i.i.i5.i = icmp ult i32 %i.dr, -7304484
  br i1 %or.cond.i.i.i5.i, label %bb.n, label %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_add_std.exit.i.i, !prof !291

_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_add_std.exit.i.i: ; preds = %bb.m
  %i.ds = add nuw nsw i32 %i.dq, 867409993        ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = mul nuw nsw i64 %i.dt, 3853261555       ; 2 uses
  %i.dv = lshr i64 %i.du, 15
  %i.dw = lshr i64 %i.du, 47
  %i.dx = trunc nuw nsw i64 %i.dw to i32          ; 3 uses
  %i.dy = trunc i64 %i.dv to i32
  %i.dz = icmp ugt i32 %i.dy, 42920275
  %i.ea = and i32 %i.dx, 3
  %i.eb = icmp eq i32 %i.ea, 0
  %.sroa.0.0.i.i.i.i6.i = or i1 %i.dz, %i.eb      ; 2 uses
  %i.ec = lshr i32 %i.dx, 2
  %i.ed = add nuw nsw i32 %i.ds, %i.dx
  %i.ee = sub nuw nsw i32 %i.ed, %i.ec
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = mul nuw nsw i64 %i.ef, 3010298776       ; 2 uses
  %i.eh = lshr i64 %i.eg, 8
  %i.ei = lshr i64 %i.eg, 40
  %i.ej = trunc nuw nsw i64 %i.ei to i32          ; 2 uses
  %i.ek = and i64 %i.eh, 4294967295
  %i.el = mul nuw nsw i64 %i.ek, 1461
  %i.em = lshr i64 %i.el, 34
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = zext i1 %.sroa.0.0.i.i.i.i6.i to i32
  %i.ep = add nuw nsw i32 %i.en, %i.eo
  %i.eq = and i32 %i.ej, 3
  %i.er = icmp eq i32 %i.eq, 0
  %i.es = and i1 %.sroa.0.0.i.i.i.i6.i, %i.er
  %i.et = shl nuw i32 %i.ej, 10
  %i.eu = add nsw i32 %i.et, 1858256896
  %i.ev = select i1 %i.es, i32 512, i32 0
  %i.ew = or disjoint i32 %i.ev, %i.eu
  %i.ex = or i32 %i.ew, %i.ep
  %.sroa.4.0.insert.shift.i.i.i9.i = shl nuw nsw i64 %i.dk, 48
  %.sroa.3.0.insert.shift.i.i.i11.i = shl nuw nsw i64 %i.t, 40
  %.sroa.3.0.insert.insert.i.i.i12.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i9.i, %.sroa.3.0.insert.shift.i.i.i11.i
  %.sroa.2.0.insert.shift.i.i.i14.i = shl nuw nsw i64 %i.r, 32
  %.sroa.2.0.insert.insert.i.i.i15.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i12.i, %.sroa.2.0.insert.shift.i.i.i14.i
  br label %_RNvMs2_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %_RNvMs2_NtCsjsYc2335iSi_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !293
  unreachable

_RNvMs2_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit: ; preds = %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_add_std.exit.i.i
  %.sink69.i = phi i32 [ %i.q, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_add_std.exit.i.i ], [ %.sroa.04.040.i.i242941.i, %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i ]
  %.sroa.2.0.insert.insert.i.i.i15.sink.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i15.i, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_add_std.exit.i.i ], [ %.sroa.2.0.insert.insert.i.i.i.i, %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i ] ; 6 uses
  %.sink.i = phi i32 [ %i.ex, %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date15checked_add_std.exit.i.i ], [ %.sroa.02.0.i.i, %_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i ] ; 3 uses
  %i.ey = trunc i64 %.sroa.2.0.insert.insert.i.i.i15.sink.i to i32
  %.sroa.0.sroa.0.0.extract.trunc = or i32 %.sink69.i, %i.ey ; 3 uses
  %.sroa.0.sroa.6.0.extract.shift = lshr i64 %.sroa.2.0.insert.insert.i.i.i15.sink.i, 40 ; 2 uses
  %.sroa.0.sroa.6.0.extract.trunc = trunc i64 %.sroa.0.sroa.6.0.extract.shift to i8
  %.sroa.0.sroa.7.0.extract.shift = lshr i64 %.sroa.2.0.insert.insert.i.i.i15.sink.i, 48
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !287
  %.sroa.01.0.copyload = load i24, ptr %0, align 1 ; 4 uses
  %.sroa.011.0.extract.trunc.i = trunc i24 %.sroa.01.0.copyload to i8 ; 4 uses
  %.sroa.011.1.extract.shift.i = lshr i24 %.sroa.01.0.copyload, 8 ; 2 uses
  %.sroa.011.1.extract.trunc.i = trunc i24 %.sroa.011.1.extract.shift.i to i8 ; 3 uses
  %.sroa.011.2.extract.shift.i = lshr i24 %.sroa.01.0.copyload, 16 ; 2 uses
  %.sroa.011.2.extract.trunc.i = trunc nuw i24 %.sroa.011.2.extract.shift.i to i8 ; 3 uses
  %i.ez = icmp sgt i8 %.sroa.011.0.extract.trunc.i, -60
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp slt i8 %.sroa.011.0.extract.trunc.i, 60
  call void @llvm.assume(i1 %i.fa)
  %i.fb = icmp sgt i8 %.sroa.011.1.extract.trunc.i, -60
  call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp slt i8 %.sroa.011.1.extract.trunc.i, 60
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp sgt i8 %.sroa.011.2.extract.trunc.i, -26
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp slt i8 %.sroa.011.2.extract.trunc.i, 26
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq i24 %.sroa.01.0.copyload, 0
  br i1 %i.ff, label %_RNvMs2_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTime17checked_to_offset.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs2_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit
  %.sroa.0.sroa.5.0.extract.shift = lshr i64 %.sroa.2.0.insert.insert.i.i.i15.sink.i, 32 ; 2 uses
  %.sroa.0.sroa.5.0.extract.trunc = trunc i64 %.sroa.0.sroa.5.0.extract.shift to i8
  %i.fg = icmp ult i8 %.sroa.0.sroa.5.0.extract.trunc, 60
  call void @llvm.assume(i1 %i.fg)
  %i.fh = trunc i64 %.sroa.0.sroa.5.0.extract.shift to i16
  %i.fi = and i16 %i.fh, 63
  %i.fj = sext i8 %.sroa.011.0.extract.trunc.i to i16
  %i.fk = add nsw i16 %i.fi, %i.fj                ; 5 uses
  %i.fl = icmp sgt i16 %i.fk, -1
  br i1 %i.fl, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.fm = icmp samesign ult i16 %i.fk, 60
  br i1 %i.fm, label %bb.r, label %bb.s, !prof !15

end_hunk_0
