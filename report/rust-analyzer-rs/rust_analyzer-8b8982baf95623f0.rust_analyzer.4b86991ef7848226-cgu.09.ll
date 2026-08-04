inline.NumInlined: 4602
inline.NumDeleted: 1734
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
loop-unroll.NumUnrolledNotLatch: 14
begin_hunk_0_@_RINvXs1_NtNtCs8yjYO7b73r2_10serde_json5value2deINtNtBa_3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_5ValueENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5f_1__NtB2W_26TextDocumentPositionParamsNtB1P_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer:.outer
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.body unwind label %bb.aa, !noalias !3094

bb.aa:                                            ; preds = %bb.z
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !3094
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs2vT3jxLudSK_3url3UrlECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5J_1__NtB3f_8PositionNtB28_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %.loopexit.split-lp.i, !noalias !3094

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit.i, %.loopexit184, %bb.u, %bb.l, %bb.j, %.loopexit186, %.loopexit
  %.sroa.047.6.i = phi i1 [ %.not57.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ true, %.loopexit186 ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.u ], [ true, %.loopexit184 ], [ true, %.loopexit ]
  %i.bh = load i64, ptr %i.e, align 8, !range !378, !noalias !3097, !noundef !4
  %i.bi = icmp ne i64 %i.bh, -1
  %or.cond.i = and i1 %.sroa.047.6.i, %i.bi
  br i1 %or.cond.i, label %bb.ad, label %.thread

bb.ac:                                            ; preds = %bb.ag, %bb.y
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !3094
  unreachable

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit72.i unwind label %bb.ae, !noalias !3094

bb.ae:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %.body unwind label %bb.af, !noalias !3094

bb.af:                                            ; preds = %bb.ae
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !3094
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit72.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %.thread unwind label %bb.ah

bb.ag:                                            ; preds = %.body67.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(88) %i.e) #34
          to label %.body unwind label %bb.ac, !noalias !3094

.body:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.z, %bb.y, %.body67.i, %bb.an
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.an ], [ %i.bm, %bb.ah ], [ %i.bk, %bb.ae ], [ %.pn.i, %.body67.i ], [ %.pn.i, %bb.ag ], [ %i.bf, %bb.z ], [ %i.bd, %bb.y ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(104) %i.g) #34
          to label %common.resume unwind label %bb.av

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit72.i, %bb.au
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierECs6u1mgJOKDyY_13rust_analyzer.exit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3097
  br label %bb.aj

bb.ai:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !3099
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x i32> %.ph.lcssa159, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !3094, !noalias !3099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3097
  %.pre = load i64, ptr %0, align 8, !range !378
  %i.bn = icmp eq i64 %.pre, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3097
  br i1 %i.bn, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %.thread, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load i64, ptr %i.g, align 8, !range !433, !alias.scope !3103, !noundef !4
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %common.resume unwind label %bb.am

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.aj
  %i.bs = load i64, ptr %i.g, align 8, !range !433, !alias.scope !3108, !noundef !4
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split

bb.am:                                            ; preds = %bb.al
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.ar, %bb.as, %bb.ak, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.ar ], [ %i.bp, %bb.ak ], [ %i.bp, %bb.al ], [ %i.cb, %bb.as ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.an:                                            ; preds = %bb.ap
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures26TextDocumentPositionParamsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.f) #34
          to label %.body unwind label %bb.av

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.val = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.val3 = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.bz = icmp eq ptr %.val3, %.val
  br i1 %i.bz, label %bb.aq, label %bb.ap, !prof !306

bb.ap:                                            ; preds = %bb.ao
  %i.ca = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error14invalid_lengthCs6u1mgJOKDyY_13rust_analyzer(i64 noundef %i.i, ptr noundef nonnull @328, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
          to label %bb.au unwind label %bb.an

bb.aq:                                            ; preds = %bb.ao, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i5 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load i64, ptr %i.g, align 8, !range !433, !alias.scope !3111, !noundef !4
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %common.resume, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %common.resume unwind label %bb.at

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i5: ; preds = %bb.aq
  %i.ce = load i64, ptr %i.g, align 8, !range !433, !alias.scope !3116, !noundef !4
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split

bb.at:                                            ; preds = %bb.as
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.ch, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures26TextDocumentPositionParamsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.f)
          to label %bb.aq unwind label %bb.ah

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i5, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i5, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.av:                                            ; preds = %bb.an, %.body
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs8yjYO7b73r2_10serde_json5value2deINtNtBa_3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_5ValueENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5n_1__NtB2W_5RangeNtB1P_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [104 x i8], align 8               ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs9_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB5_15MapDeserializer3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3122
  invoke void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess13next_key_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5n_1__NtB2Q_5RangeNtB17_11Deserialize11deserialize7___FieldEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 8, !range !1413, !noalias !3122, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %.noexc7, %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3122, !nonnull !4, !align !234, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3122
  br label %.noexc6

bb.b:                                             ; preds = %.noexc7, %.lr.ph.i
  %.sroa.04.088.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.04.1.i, %.noexc7 ] ; 4 uses
  %.sroa.4.087.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.04.1.i.a, %.noexc7 ] ; 3 uses
  %.sroa.66.086.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.08.1.i.a, %.noexc7 ] ; 3 uses
  %.sroa.04.088.i.a = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.08.1.i, %.noexc7 ] ; 4 uses
  %.sroa.08.084.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.410.1.i, %.noexc7 ] ; 3 uses
  %.sroa.611.082.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.611.1.i, %.noexc7 ] ; 3 uses
  %i.p = load i8, ptr %i.i, align 1, !range !1964, !noalias !3122, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3122
  switch i8 %i.p, label %default.unreachable [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nuw i32 %.sroa.04.088.i to i1
  br i1 %i.q, label %bb.n, label %.invoke161

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %.sroa.04.088.i, 1
  br i1 %i.r, label %.invoke, label %bb.g, !prof !187

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %.sroa.04.088.i.a, 1
  br i1 %i.s, label %.invoke, label %bb.k, !prof !187

bb.f:                                             ; preds = %bb.b
  %i.t = invoke noundef align 8 ptr @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess15next_value_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNtB17_11ignored_any10IgnoredAnyEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.noexc4 unwind label %.loopexit ; 2 uses

.noexc4:                                          ; preds = %bb.f
  %.not31.i = icmp eq ptr %i.t, null
  br i1 %.not31.i, label %bb.j, label %.noexc6

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3122
  invoke void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess15next_value_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %bb.g
  %i.u = load i32, ptr %i.b, align 8, !range !1899, !noalias !3122, !noundef !4
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.i

.invoke:                                          ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ @127, %bb.d ], [ @128, %bb.e ]
  %i.x = phi i64 [ 5, %bb.d ], [ 3, %bb.e ]
  %i.y = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error15duplicate_fieldCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x)
          to label %.noexc6 unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %.noexc5
  %i.z = load ptr, ptr %i.m, align 8, !noalias !3122, !nonnull !4, !align !234, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3122
  br label %.noexc6

bb.i:                                             ; preds = %.noexc5
  %2 = load i32, ptr %i.l, align 4, !noalias !3122, !noundef !4
  %3 = load i32, ptr %i.m, align 8, !noalias !3122, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3122
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i, %.noexc4
  %.sroa.611.1.i = phi i32 [ %.sroa.611.082.i, %bb.i ], [ %5, %bb.m ], [ %.sroa.611.082.i, %.noexc4 ]
  %.sroa.410.1.i = phi i32 [ %.sroa.08.084.i, %bb.i ], [ %4, %bb.m ], [ %.sroa.08.084.i, %.noexc4 ]
  %.sroa.08.1.i = phi i32 [ %.sroa.04.088.i.a, %bb.i ], [ 1, %bb.m ], [ %.sroa.04.088.i.a, %.noexc4 ]
  %.sroa.08.1.i.a = phi i32 [ %3, %bb.i ], [ %.sroa.66.086.i, %bb.m ], [ %.sroa.66.086.i, %.noexc4 ]
  %.sroa.04.1.i.a = phi i32 [ %2, %bb.i ], [ %.sroa.4.087.i, %bb.m ], [ %.sroa.4.087.i, %.noexc4 ]
  %.sroa.04.1.i = phi i32 [ 1, %bb.i ], [ %.sroa.04.088.i, %bb.m ], [ %.sroa.04.088.i, %.noexc4 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3122
  invoke void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess13next_key_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5n_1__NtB2Q_5RangeNtB17_11Deserialize11deserialize7___FieldEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %bb.j
  %i.aa = load i8, ptr %i.c, align 8, !range !1413, !noalias !3122, !noundef !4
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %._crit_edge.i, label %bb.b

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3122
  invoke void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess15next_value_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.k
  %i.ac = load i32, ptr %i.a, align 8, !range !1899, !noalias !3122, !noundef !4
  %i.ad = trunc nuw i32 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc8
  %i.ae = load ptr, ptr %i.k, align 8, !noalias !3122, !nonnull !4, !align !234, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3122
  br label %.noexc6

bb.m:                                             ; preds = %.noexc8
  %4 = load i32, ptr %i.j, align 4, !noalias !3122, !noundef !4
  %5 = load i32, ptr %i.k, align 8, !noalias !3122, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3122
  br label %bb.j

.invoke161:                                       ; preds = %bb.n, %bb.c
  %i.af = phi ptr [ @127, %bb.c ], [ @128, %bb.n ]
  %i.ag = phi i64 [ 5, %bb.c ], [ 3, %bb.n ]
  %i.ah = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag)
          to label %.noexc6 unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.c
  %i.ai = trunc nuw i32 %.sroa.04.088.i.a to i1
  br i1 %i.ai, label %bb.t, label %.invoke161

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(104) %i.d) #34
          to label %common.resume unwind label %bb.aa

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %.invoke161, %.invoke, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.noexc6:                                          ; preds = %.noexc4, %.invoke161, %.invoke, %._crit_edge.i, %bb.l, %bb.h
  %.sink = phi ptr [ %i.o, %._crit_edge.i ], [ %i.ah, %.invoke161 ], [ %i.y, %.invoke ], [ %i.ae, %bb.l ], [ %i.z, %bb.h ], [ %i.t, %.noexc4 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.aj, align 8, !alias.scope !3119, !noalias !3124
  store i32 1, ptr %0, align 8, !alias.scope !3119, !noalias !3124
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.p

bb.p:                                             ; preds = %.noexc6
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !range !433, !alias.scope !3125, !noundef !4
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %common.resume unwind label %bb.r

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %.noexc6
  %i.ao = load i64, ptr %i.d, align 8, !range !433, !alias.scope !3130, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.w, %bb.x, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.al, %bb.p ], [ %i.al, %bb.q ], [ %i.ay, %bb.x ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.t:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.087.i, ptr %i.as, align 4, !alias.scope !3119, !noalias !3124
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %.sroa.66.086.i, ptr %.sroa.428.0..sroa_idx.i, align 8, !alias.scope !3119, !noalias !3124
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.08.084.i, ptr %.sroa.529.0..sroa_idx.i, align 4, !alias.scope !3119, !noalias !3124
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.611.082.i, ptr %.sroa.630.0..sroa_idx.i, align 8, !alias.scope !3119, !noalias !3124
  store i32 0, ptr %0, align 8, !alias.scope !3119, !noalias !3124
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.val3 = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.aw = icmp eq ptr %.val3, %.val
  br i1 %i.aw, label %bb.v, label %bb.u, !prof !306

bb.u:                                             ; preds = %bb.t
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error14invalid_lengthCs6u1mgJOKDyY_13rust_analyzer(i64 noundef %i.f, ptr noundef nonnull @328, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
          to label %bb.z unwind label %bb.s

bb.v:                                             ; preds = %bb.t, %bb.z
  %storemerge = phi i32 [ 1, %bb.z ], [ 0, %bb.t ]
  store i32 %storemerge, ptr %0, align 8
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i13 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load i64, ptr %i.d, align 8, !range !433, !alias.scope !3133, !noundef !4
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %common.resume unwind label %bb.y

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i13: ; preds = %bb.v
  %i.bb = load i64, ptr %i.d, align 8, !range !433, !alias.scope !3138, !noundef !4
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split

bb.y:                                             ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.z:                                             ; preds = %bb.u
  store ptr %i.ax, ptr %.sroa.428.0..sroa_idx.i, align 8
  br label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i13, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i13, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json3map8IntoIterECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs8yjYO7b73r2_10serde_json5value2deINtNtBa_3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_5ValueENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5v_1__NtB2W_27WorkspaceFoldersChangeEventNtB1P_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 20 uses
  %i.f = alloca [24 x i8], align 8                ; 22 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs9_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB5_15MapDeserializer3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3144
  store i64 -1, ptr %i.f, align 8, !noalias !3144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3144
  store i64 -1, ptr %i.e, align 8, !noalias !3144
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.640.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.743.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.622.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3144
  invoke void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess13next_key_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5v_1__NtB2Q_27WorkspaceFoldersChangeEventNtB17_11Deserialize11deserialize7___FieldEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5v_1__NtB23_27WorkspaceFoldersChangeEventNtB6_11Deserialize11deserialize7___FieldECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %.loopexit.i, !noalias !3141

.loopexit.split-lp.i.body:                        ; preds = %bb.af, %.loopexit.split-lp.i, %bb.ae, %.body.i, %.loopexit.i
  %.sroa.080.1.ph.i = phi i8 [ 0, %bb.ae ], [ 1, %.body.i ], [ 1, %.loopexit.i ], [ %.sroa.080.2.ph.i, %.loopexit.split-lp.i ], [ 0, %bb.af ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %bb.ae ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.ay, %bb.af ] ; 2 uses
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !3144
  %.not101.i = icmp eq i64 %.pr.i, -1
  br i1 %.not101.i, label %.body120.i, label %bb.as

.loopexit.i:                                      ; preds = %bb.r, %bb.i, %bb.h, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.body

.loopexit.split-lp.i:                             ; preds = %bb.ag, %bb.ab, %bb.s, %bb.j
  %.sroa.080.2.ph.i = phi i8 [ 0, %bb.ag ], [ 1, %bb.s ], [ 1, %bb.ab ], [ 1, %bb.j ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.body

_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5v_1__NtB23_27WorkspaceFoldersChangeEventNtB6_11Deserialize11deserialize7___FieldECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.b
  %i.l = load i8, ptr %i.d, align 8, !range !1413, !noalias !3144, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5v_1__NtB23_27WorkspaceFoldersChangeEventNtB6_11Deserialize11deserialize7___FieldECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3144, !nonnull !4, !align !234, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !3141, !noalias !3146
  store i64 -1, ptr %0, align 8, !alias.scope !3141, !noalias !3146
  br label %bb.ai

bb.d:                                             ; preds = %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5v_1__NtB23_27WorkspaceFoldersChangeEventNtB6_11Deserialize11deserialize7___FieldECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.q = load i8, ptr %i.k, align 1, !range !1964, !noalias !3144, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3144
  switch i8 %i.q, label %default.unreachable [
    i8 -1, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3144
  %i.r = load i64, ptr %i.f, align 8, !range !378, !noalias !3144, !noundef !4
  %.not95.i = icmp eq i64 %i.r, -1
  br i1 %.not95.i, label %bb.ab, label %bb.ac

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.f, align 8, !range !378, !noalias !3144, !noundef !4
  %.not99.i = icmp eq i64 %i.s, -1
  br i1 %.not99.i, label %bb.i, label %bb.j, !prof !306

bb.g:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !range !378, !noalias !3144, !noundef !4
  %.not98.i = icmp eq i64 %i.t, -1
  br i1 %.not98.i, label %bb.r, label %bb.s, !prof !306

bb.h:                                             ; preds = %bb.d
  %i.u = invoke noundef align 8 ptr @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess15next_value_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNtB17_11ignored_any10IgnoredAnyEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %.loopexit.i, !noalias !3141 ; 2 uses

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3144
  invoke void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess15next_value_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %.loopexit.i, !noalias !3141

bb.j:                                             ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error15duplicate_fieldCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 5)
          to label %bb.q unwind label %.loopexit.split-lp.i, !noalias !3141

_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.i
  %i.w = load i64, ptr %i.c, align 8, !range !378, !noalias !3144, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  %i.y = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !3144 ; 3 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !3141, !noalias !3146
  store i64 -1, ptr %0, align 8, !alias.scope !3141, !noalias !3146
  br label %bb.ai

bb.l:                                             ; preds = %_RINvXs5_NtCsjQbM3MYDIrM_10serde_core2deQNtNtNtCs8yjYO7b73r2_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.584.0.copyload.i = load i64, ptr %.sroa.584.0..sroa_idx.i, align 8, !noalias !3144 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3144
  %i.aa = load i64, ptr %i.f, align 8, !range !378, !alias.scope !3147, !noalias !3144, !noundef !4
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.n, !noalias !3141

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.o, !noalias !3141
end_hunk_0
