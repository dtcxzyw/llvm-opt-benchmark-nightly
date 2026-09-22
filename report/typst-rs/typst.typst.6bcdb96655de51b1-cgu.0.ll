Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB5_16TypedValueParser9parse_refB1o_:bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !51525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !51525
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1610612768, ptr %i.ak, align 8, !noalias !51525
  store ptr %i.i, ptr %i.h, align 8, !noalias !51525
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @712, ptr %i.al, align 8, !noalias !51525
  %i.am = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.o, !noalias !51526

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51527)
  call void @llvm.experimental.noalias.scope.decl(metadata !51528)
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !range !37, !alias.scope !51529, !noalias !51525, !noundef !28 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %.body.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !51529, !noalias !51525, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51530
  br label %.body.thread.i

bb.q:                                             ; preds = %bb.n
  br i1 %i.am, label %bb.r, label %bb.v, !prof !38

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i unwind label %bb.o, !noalias !51526

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51531)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51532
  %i.ap = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51532 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.t, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i unwind label %.body.thread29.i, !noalias !51519

.body.thread29.i:                                 ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i: ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, i8 46, i64 3, i1 false), !noalias !51533
  store i64 3, ptr %i.j, align 8, !alias.scope !51531, !noalias !51519
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !51531, !noalias !51519
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !51531, !noalias !51519
  br label %bb.u

.body.i:                                          ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i
  %i.at = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.w unwind label %.body.i, !noalias !51519

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !51519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51525
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51519
  call void @llvm.experimental.noalias.scope.decl(metadata !51534)
  call void @llvm.experimental.noalias.scope.decl(metadata !51535)
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51536)
  call void @llvm.experimental.noalias.scope.decl(metadata !51537)
  %.val.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !range !37, !alias.scope !51538, !noalias !51539, !noundef !28 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !51538, !noalias !51539, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51540
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.az = icmp eq i64 %i.aw, %i.aj
  br i1 %i.az, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %bb.w
  %.val2.i.i = load i64, ptr %i.k, align 8, !range !37, !alias.scope !51534, !noalias !51519, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ba, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i
  %i.bb = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51539
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i: ; preds = %bb.z, %.body.thread.i, %.body.i
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.as, %.body.i ], [ %eh.lpad-body28.i, %.body.thread.i ], [ %eh.lpad-body28.i, %bb.z ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #62, !noalias !51519
  br label %common.resume

.body.thread.i:                                   ; preds = %.body.thread29.i, %bb.p, %bb.o
  %eh.lpad-body28.i = phi { ptr, i32 } [ %i.ar, %.body.thread29.i ], [ %i.an, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51541)
  call void @llvm.experimental.noalias.scope.decl(metadata !51542)
  %.val.i.i10.i = load i64, ptr %i.m, align 8, !range !37, !alias.scope !51543, !noalias !51519, !noundef !28 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i10.i, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, label %bb.z

bb.z:                                             ; preds = %.body.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i11.i = load ptr, ptr %i.bd, align 8, !alias.scope !51543, !noalias !51519, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51544
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

common.resume:                                    ; preds = %bb.ah, %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, %bb.k, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.bk, %bb.ab ], [ %eh.lpad-body27.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i ], [ %i.ad, %bb.k ], [ %eh.lpad-body26.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i ], [ %i.br, %bb.ah ], [ %i.br, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51519
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.be, align 8
  br label %bb.ax

bb.aa:                                            ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !28 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %.sroa.111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51545
  store i64 0, ptr %i.g, align 8, !noalias !51545
  store ptr @1036, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51545
  store i64 5, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51545
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51545
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51545
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51545
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51545
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51545
  %i.bj = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i unwind label %bb.ab, !noalias !51545

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #62, !noalias !51545
  br label %common.resume

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i: ; preds = %bb.aa
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51545
  br i1 %i.bj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserBQ_ENtB2u_16TypedValueParser9parse_refs1_0EBU_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51545
  store i64 0, ptr %i.g, align 8, !noalias !51545
  store ptr @1037, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51545
  store i64 5, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51545
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51545
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51545
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51545
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51545
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51545
  %i.bl = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 unwind label %bb.ab, !noalias !51545

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1: ; preds = %bb.ac
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51545
  br i1 %i.bl, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserBQ_ENtB2u_16TypedValueParser9parse_refs1_0EBU_.exit, label %bb.ad

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserBQ_ENtB2u_16TypedValueParser9parse_refs1_0EBU_.exit: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  %.idx.lcssa17 = phi i8 [ 0, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 ]
  %notmask = shl nsw i8 -1, %.idx.lcssa17
  %5 = xor i8 %notmask, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %5, ptr %i.bm, align 1
  br label %bb.ax

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51546
  %.not.i.i12 = icmp slt i64 %i.bi, 0
  br i1 %.not.i.i12, label %bb.af, label %bb.ae, !prof !61

bb.ae:                                            ; preds = %bb.ad
  %i.bn = icmp eq i64 %i.bi, 0                    ; 3 uses
  br i1 %i.bn, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13: ; preds = %bb.ae
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51547
  %i.bo = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51547 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13, %bb.ad
  %.sroa.4.0.ph.i35 = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13 ], [ 0, %bb.ad ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i35, i64 %i.bi) #61, !noalias !51546
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i: ; preds = %bb.ag, %bb.ae
  %i.bq = phi ptr [ %i.bo, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ae ] ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !noalias !51546
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i14, align 8, !noalias !51546
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bi, ptr %.sroa.6.0..sroa_idx.i15, align 8, !noalias !51546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51546
  invoke fastcc void @_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs_0B1q_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.aj unwind label %bb.ah, !noalias !51546

bb.ag:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !noalias !51546
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i

bb.ah:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bn, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51548
  br label %common.resume

bb.aj:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !51546, !nonnull !28, !noundef !28 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !51546, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51546
  br i1 %.not, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51549
  store i64 0, ptr %i.c, align 8, !noalias !51549
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !51549
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !51549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51549
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bw, align 8, !noalias !51549
  store ptr %i.c, ptr %i.b, align 8, !noalias !51549
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @712, ptr %i.bx, align 8, !noalias !51549
  %i.by = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.an unwind label %bb.al, !noalias !51550

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51551)
  call void @llvm.experimental.noalias.scope.decl(metadata !51552)
  %.val.i.i.i.i20 = load i64, ptr %i.c, align 8, !range !37, !alias.scope !51553, !noalias !51549, !noundef !28 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.ca, label %.body.thread.i22, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val1.i.i.i.i21 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !alias.scope !51553, !noalias !51549, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51554
  br label %.body.thread.i22

bb.an:                                            ; preds = %bb.ak
  br i1 %i.by, label %bb.ao, label %bb.as, !prof !38

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i32 unwind label %bb.al, !noalias !51550

.noexc.i.i32:                                     ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !51555)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51556
  %i.cb = call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51556 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aq, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i34 unwind label %.body.thread28.i, !noalias !51546

.body.thread28.i:                                 ; preds = %bb.aq
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i22

.noexc.i34:                                       ; preds = %bb.aq
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i: ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cb, i8 46, i64 3, i1 false), !noalias !51557
  store i64 3, ptr %i.d, align 8, !alias.scope !51555, !noalias !51546
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !51555, !noalias !51546
  %.sroa.6.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i33, align 8, !alias.scope !51555, !noalias !51546
  br label %bb.ar

.body.i24:                                        ; preds = %bb.ar
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bt, i64 noundef %i.bv, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.at unwind label %.body.i24, !noalias !51546

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !51546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51549
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !51546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51546
  call void @llvm.experimental.noalias.scope.decl(metadata !51558)
  call void @llvm.experimental.noalias.scope.decl(metadata !51559)
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29
  %.sroa.0.010.i.i.i.i26 = phi i64 [ %i.ci, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29 ], [ 0, %bb.at ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.sroa.0.010.i.i.i.i26 ; 2 uses
  %i.ci = add nuw nsw i64 %.sroa.0.010.i.i.i.i26, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51560)
  call void @llvm.experimental.noalias.scope.decl(metadata !51561)
  %.val.i.i.i.i.i.i27 = load i64, ptr %i.ch, align 8, !range !37, !alias.scope !51562, !noalias !51563, !noundef !28 ; 2 uses
  %i.cj = icmp eq i64 %.val.i.i.i.i.i.i27, 0
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.val1.i.i.i.i.i.i28 = load ptr, ptr %i.ck, align 8, !alias.scope !51562, !noalias !51563, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i28, i64 noundef %.val.i.i.i.i.i.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51564
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29: ; preds = %bb.au, %.lr.ph.i.i.i.i25
  %i.cl = icmp eq i64 %i.ci, %i.bv
  br i1 %i.cl, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, %bb.at
  %.val2.i.i31 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !51558, !noalias !51546, !noundef !28 ; 2 uses
  %i.cm = icmp eq i64 %.val2.i.i31, 0
  br i1 %i.cm, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, label %bb.av

bb.av:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30
  %i.cn = mul nuw i64 %.val2.i.i31, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51563
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i: ; preds = %bb.aw, %.body.thread.i22, %.body.i24
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.ce, %.body.i24 ], [ %eh.lpad-body27.i23, %.body.thread.i22 ], [ %eh.lpad-body27.i23, %bb.aw ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62, !noalias !51546
  br label %common.resume

.body.thread.i22:                                 ; preds = %.body.thread28.i, %bb.am, %bb.al
  %eh.lpad-body27.i23 = phi { ptr, i32 } [ %i.cd, %.body.thread28.i ], [ %i.bz, %bb.am ], [ %i.bz, %bb.al ] ; 2 uses
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, label %bb.aw

bb.aw:                                            ; preds = %.body.thread.i22
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51565
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51546
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.co, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserBQ_ENtB2u_16TypedValueParser9parse_refs1_0EBU_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args16DiagnosticFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2u_15EnumValueParserBQ_ENtB2u_16TypedValueParser9parse_refs1_0EBU_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB5_16TypedValueParser9parse_refB1o_:bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !51639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !51639
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1610612768, ptr %i.ak, align 8, !noalias !51639
  store ptr %i.i, ptr %i.h, align 8, !noalias !51639
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @712, ptr %i.al, align 8, !noalias !51639
  %i.am = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.o, !noalias !51640

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51641)
  call void @llvm.experimental.noalias.scope.decl(metadata !51642)
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !range !37, !alias.scope !51643, !noalias !51639, !noundef !28 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %.body.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !51643, !noalias !51639, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51644
  br label %.body.thread.i

bb.q:                                             ; preds = %bb.n
  br i1 %i.am, label %bb.r, label %bb.v, !prof !38

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i unwind label %bb.o, !noalias !51640

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51645)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51646
  %i.ap = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51646 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.t, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i unwind label %.body.thread29.i, !noalias !51633

.body.thread29.i:                                 ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i: ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, i8 46, i64 3, i1 false), !noalias !51647
  store i64 3, ptr %i.j, align 8, !alias.scope !51645, !noalias !51633
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !51645, !noalias !51633
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !51645, !noalias !51633
  br label %bb.u

.body.i:                                          ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB9_16TypedValueParser9parse_refs0_00B1s_.exit.i
  %i.at = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.w unwind label %.body.i, !noalias !51633

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !51633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51639
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51633
  call void @llvm.experimental.noalias.scope.decl(metadata !51648)
  call void @llvm.experimental.noalias.scope.decl(metadata !51649)
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51650)
  call void @llvm.experimental.noalias.scope.decl(metadata !51651)
  %.val.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !range !37, !alias.scope !51652, !noalias !51653, !noundef !28 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !51652, !noalias !51653, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51654
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.az = icmp eq i64 %i.aw, %i.aj
  br i1 %i.az, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %bb.w
  %.val2.i.i = load i64, ptr %i.k, align 8, !range !37, !alias.scope !51648, !noalias !51633, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ba, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i
  %i.bb = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51653
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i: ; preds = %bb.z, %.body.thread.i, %.body.i
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.as, %.body.i ], [ %eh.lpad-body28.i, %.body.thread.i ], [ %eh.lpad-body28.i, %bb.z ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #62, !noalias !51633
  br label %common.resume

.body.thread.i:                                   ; preds = %.body.thread29.i, %bb.p, %bb.o
  %eh.lpad-body28.i = phi { ptr, i32 } [ %i.ar, %.body.thread29.i ], [ %i.an, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51655)
  call void @llvm.experimental.noalias.scope.decl(metadata !51656)
  %.val.i.i10.i = load i64, ptr %i.m, align 8, !range !37, !alias.scope !51657, !noalias !51633, !noundef !28 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i10.i, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, label %bb.z

bb.z:                                             ; preds = %.body.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i11.i = load ptr, ptr %i.bd, align 8, !alias.scope !51657, !noalias !51633, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51658
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i

common.resume:                                    ; preds = %bb.ah, %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, %bb.k, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.bk, %bb.ab ], [ %eh.lpad-body27.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit12.i ], [ %i.ad, %bb.k ], [ %eh.lpad-body26.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i ], [ %i.br, %bb.ah ], [ %i.br, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51633
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.be, align 8
  br label %bb.ax

bb.aa:                                            ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !28 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %.sroa.111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51659
  store i64 0, ptr %i.g, align 8, !noalias !51659
  store ptr @872, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51659
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51659
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51659
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51659
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51659
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51659
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51659
  %i.bj = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i unwind label %bb.ab, !noalias !51659

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #62, !noalias !51659
  br label %common.resume

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i: ; preds = %bb.aa
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51659
  br i1 %i.bj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserBQ_ENtB2x_16TypedValueParser9parse_refs1_0EBU_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51659
  store i64 0, ptr %i.g, align 8, !noalias !51659
  store ptr @1034, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !51659
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !51659
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !51659
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !51659
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !51659
  store i64 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !51659
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !51659
  %i.bl = invoke noundef zeroext i1 @_RNvMs_NtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 unwind label %bb.ab, !noalias !51659

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1: ; preds = %bb.ac
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g), !noalias !51659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51659
  br i1 %i.bl, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserBQ_ENtB2x_16TypedValueParser9parse_refs1_0EBU_.exit, label %bb.ad

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserBQ_ENtB2x_16TypedValueParser9parse_refs1_0EBU_.exit: ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i
  %.idx.lcssa17 = phi i8 [ 0, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1 ]
  %notmask = shl nsw i8 -1, %.idx.lcssa17
  %5 = xor i8 %notmask, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %5, ptr %i.bm, align 1
  br label %bb.ax

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs1_0B1q_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51660
  %.not.i.i12 = icmp slt i64 %i.bi, 0
  br i1 %.not.i.i12, label %bb.af, label %bb.ae, !prof !61

bb.ae:                                            ; preds = %bb.ad
  %i.bn = icmp eq i64 %i.bi, 0                    ; 3 uses
  br i1 %i.bn, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13: ; preds = %bb.ae
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51661
  %i.bo = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51661 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13, %bb.ad
  %.sroa.4.0.ph.i35 = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13 ], [ 0, %bb.ad ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i35, i64 %i.bi) #61, !noalias !51660
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i: ; preds = %bb.ag, %bb.ae
  %i.bq = phi ptr [ %i.bo, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ae ] ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !noalias !51660
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i14, align 8, !noalias !51660
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bi, ptr %.sroa.6.0..sroa_idx.i15, align 8, !noalias !51660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51660
  invoke fastcc void @_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs_0B1q_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.aj unwind label %bb.ah, !noalias !51660

bb.ag:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !noalias !51660
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i

bb.ah:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bn, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51662
  br label %common.resume

bb.aj:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread18.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !51660, !nonnull !28, !noundef !28 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !51660, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51660
  br i1 %.not, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51663
  store i64 0, ptr %i.c, align 8, !noalias !51663
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !51663
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !51663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51663
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bw, align 8, !noalias !51663
  store ptr %i.c, ptr %i.b, align 8, !noalias !51663
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @712, ptr %i.bx, align 8, !noalias !51663
  %i.by = invoke noundef zeroext i1 @_RNvXs9_NtNtCsj1PC5XHMKi0_12clap_builder7builder3argNtB5_3ArgNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.an unwind label %bb.al, !noalias !51664

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51665)
  call void @llvm.experimental.noalias.scope.decl(metadata !51666)
  %.val.i.i.i.i20 = load i64, ptr %i.c, align 8, !range !37, !alias.scope !51667, !noalias !51663, !noundef !28 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.ca, label %.body.thread.i22, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val1.i.i.i.i21 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !alias.scope !51667, !noalias !51663, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51668
  br label %.body.thread.i22

bb.an:                                            ; preds = %bb.ak
  br i1 %i.by, label %bb.ao, label %bb.as, !prof !38

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc.i.i32 unwind label %bb.al, !noalias !51664

.noexc.i.i32:                                     ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !51669)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !51670
  %i.cb = call noundef dereferenceable_or_null(3) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51670 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aq, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #61
          to label %.noexc.i34 unwind label %.body.thread28.i, !noalias !51660

.body.thread28.i:                                 ; preds = %bb.aq
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i22

.noexc.i34:                                       ; preds = %bb.aq
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i: ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cb, i8 46, i64 3, i1 false), !noalias !51671
  store i64 3, ptr %i.d, align 8, !alias.scope !51669, !noalias !51660
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !51669, !noalias !51660
  %.sroa.6.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i33, align 8, !alias.scope !51669, !noalias !51660
  br label %bb.ar

.body.i24:                                        ; preds = %bb.ar
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB9_16TypedValueParser9parse_refs2_00B1s_.exit.i
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bt, i64 noundef %i.bv, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.at unwind label %.body.i24, !noalias !51660

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !51660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51663
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !51660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51660
  call void @llvm.experimental.noalias.scope.decl(metadata !51672)
  call void @llvm.experimental.noalias.scope.decl(metadata !51673)
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29
  %.sroa.0.010.i.i.i.i26 = phi i64 [ %i.ci, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29 ], [ 0, %bb.at ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.sroa.0.010.i.i.i.i26 ; 2 uses
  %i.ci = add nuw nsw i64 %.sroa.0.010.i.i.i.i26, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51674)
  call void @llvm.experimental.noalias.scope.decl(metadata !51675)
  %.val.i.i.i.i.i.i27 = load i64, ptr %i.ch, align 8, !range !37, !alias.scope !51676, !noalias !51677, !noundef !28 ; 2 uses
  %i.cj = icmp eq i64 %.val.i.i.i.i.i.i27, 0
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.val1.i.i.i.i.i.i28 = load ptr, ptr %i.ck, align 8, !alias.scope !51676, !noalias !51677, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i28, i64 noundef %.val.i.i.i.i.i.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51678
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29: ; preds = %bb.au, %.lr.ph.i.i.i.i25
  %i.cl = icmp eq i64 %i.ci, %i.bv
  br i1 %i.cl, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, label %.lr.ph.i.i.i.i25

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i.i29, %bb.at
  %.val2.i.i31 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !51672, !noalias !51660, !noundef !28 ; 2 uses
  %i.cm = icmp eq i64 %.val2.i.i31, 0
  br i1 %i.cm, label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, label %bb.av

bb.av:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30
  %i.cn = mul nuw i64 %.val2.i.i31, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !51677
  br label %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i: ; preds = %bb.aw, %.body.thread.i22, %.body.i24
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.ce, %.body.i24 ], [ %eh.lpad-body27.i23, %.body.thread.i22 ], [ %eh.lpad-body27.i23, %bb.aw ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62, !noalias !51660
  br label %common.resume

.body.thread.i22:                                 ; preds = %.body.thread28.i, %bb.am, %bb.al
  %eh.lpad-body27.i23 = phi { ptr, i32 } [ %i.cd, %.body.thread28.i ], [ %i.bz, %bb.am ], [ %i.bz, %bb.al ] ; 2 uses
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i, label %bb.aw

bb.aw:                                            ; preds = %.body.thread.i22
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !51679
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit11.i

_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i30, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51660
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.co, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserBQ_ENtB2x_16TypedValueParser9parse_refs1_0EBU_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs0_0B1q_.exit ], [ 1, %_RNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtB7_16TypedValueParser9parse_refs2_0B1q_.exit ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9fPPV5zPXBl_5typst4args19SerializationFormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2x_15EnumValueParserBQ_ENtB2x_16TypedValueParser9parse_refs1_0EBU_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

end_hunk_1
