Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.00?download=true
inline.NumInlined: 667
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core:bb.a
  br i1 %.not.i26, label %bb.u, label %bb.aa, !prof !20

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454), !noalias !401
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !455, !noundef !6
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !456, !noalias !452
  %.not.i26.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i26.1, label %bb.w, label %bb.aa, !prof !20

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458), !noalias !401
  %exitcond.not.i.2 = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !459, !noundef !6
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !460, !noalias !452
  %.not.i26.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i26.2, label %bb.y, label %bb.aa, !prof !20

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462), !noalias !401
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !463, !noundef !6
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !464, !noalias !452
  %.not.i26.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i26.3, label %.thread, label %bb.aa, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !465
  store i64 5, ptr %i.j, align 8, !noalias !465
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !465
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !465
  store i64 9, ptr %i.i, align 8, !noalias !465
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !465
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !467, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !411
  call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !401, !inline_history !307
  %i.cc = load i64, ptr %i.z, align 8, !range !21, !noalias !411, !noundef !6 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !468, !noalias !401
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !402, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !411
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !401, !inline_history !307
  %i.ch = load i64, ptr %i.x, align 8, !range !5, !noalias !411, !noundef !6 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !411 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !402, !noalias !401, !noundef !6
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !402, !noalias !401
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !22

bb.ae:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !402, !noalias !401, !noundef !6
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !402, !noalias !401
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.bw, label %bb.bx, !prof !22

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i41
  %.sroa.0.1.i40.ph = phi ptr [ %i.ay, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i41 ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i40.ph, ptr %i.ct, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  br label %bb.ah

bb.ag:                                            ; preds = %.thread92, %.thread89
  %.sroa.24132.0 = phi i64 [ %.sroa.24132.4, %.thread92 ], [ %.sroa.24132.3, %.thread89 ] ; 2 uses
  %.sroa.22.0 = phi i8 [ %.sroa.22.2, %.thread92 ], [ %.sroa.22.1, %.thread89 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread92 ], [ %.sroa.0.3, %.thread89 ] ; 2 uses
  %i.cu = phi <2 x i64> [ %i.gi, %.thread92 ], [ %i.fs, %.thread89 ]
  %i.cv = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.cv, label %._crit_edge, label %.thread, !prof !469

._crit_edge:                                      ; preds = %bb.ag
  %i.cw = inttoptr i64 %.sroa.24132.0 to ptr
  br label %bb.cg

bb.ah:                                            ; preds = %bb.ch, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbzNSmZPCnTx_10tgrep_core.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i33
  %.sroa.0.1.i32.ph = phi ptr [ %i.bk, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i33 ], [ %i.bl, %bb.r ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i32.ph, ptr %i.cx, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.bz, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ca, %bb.aa ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cy, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cz = load ptr, ptr %i.ce, align 8, !noalias !411, !nonnull !6, !align !14, !noundef !6
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !411
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !411 ; 3 uses
  %i.db = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cc, label %default.unreachable180 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbzNSmZPCnTx_10tgrep_core.exit23
    i64 2, label %bb.ap
  ]

default.unreachable180:                           ; preds = %bb.ci, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dc = bitcast i64 %.sroa.4.0.copyload to double
  %i.dd = tail call double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ueq double %i.dd, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !470
  br i1 %i.de, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i17 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16, align 8, !alias.scope !471, !noalias !472
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.df = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i18, align 8, !alias.scope !471, !noalias !472
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.k, align 8, !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473), !noalias !401
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k), !noalias !474
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i10 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i17, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i12 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dg = phi <2 x i64> [ %i.df, %bb.an ], [ %i.db, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !470
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbzNSmZPCnTx_10tgrep_core.exit23

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i3 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbzNSmZPCnTx_10tgrep_core.exit23

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbzNSmZPCnTx_10tgrep_core.exit23: ; preds = %bb.al, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8, %bb.ap
  %.sroa.24132.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i10, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8 ], [ %.lobit.i.i3, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i12, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dh = phi <2 x i64> [ %i.dg, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i8 ], [ %i.db, %bb.ap ], [ %i.db, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !411
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.di, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !411
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !411 ; 8 uses
  %i.dj = trunc nuw i64 %i.ch to i1
  br i1 %i.dj, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !475
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !475
  %i.dk = load i64, ptr %i.b, align 8, !range !9, !noalias !475, !noundef !6
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !476, !noalias !475, !noundef !6 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dl, label %bb.at, label %bb.au, !prof !22

bb.at:                                            ; preds = %bb.as
  %i.dp = load i64, ptr %i.do, align 8, !noalias !475
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.dp) #19, !noalias !475
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dq = load ptr, ptr %i.do, align 8, !noalias !475, !nonnull !6, !noundef !6 ; 2 uses
  %i.dr = icmp ule i64 %.sroa.4.0.copyload.i, %i.dn
  call void @llvm.assume(i1 %i.dr), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !475
  %.not.i123 = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i123, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !477
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !477
  %i.ds = load i64, ptr %i.a, align 8, !range !9, !noalias !477, !noundef !6
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !476, !noalias !477, !noundef !6 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.aw, label %bb.ax, !prof !22

bb.aw:                                            ; preds = %bb.av
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !477
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #19, !noalias !477
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dy = load ptr, ptr %i.dw, align 8, !noalias !477, !nonnull !6, !noundef !6 ; 2 uses
  %i.dz = icmp ule i64 %.sroa.4.0.copyload.i, %i.dv
  call void @llvm.assume(i1 %i.dz), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !477
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.sink.split

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dq, %bb.au ], [ %i.dy, %bb.ax ] ; 2 uses
  %.sroa.24132.2.ph = phi i64 [ %i.dn, %bb.au ], [ %i.dv, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.ck, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !401
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.sink.split, %bb.ax, %bb.au
  %.sroa.37.2.in = phi ptr [ %i.dy, %bb.ax ], [ %i.dq, %bb.au ], [ %.sink, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.sink.split ]
  %.sroa.24132.2 = phi i64 [ %i.dv, %bb.ax ], [ %i.dn, %bb.au ], [ %.sroa.24132.2.ph, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !411
  %i.ea = insertelement <2 x i64> poison, i64 %.sroa.37.2, i64 0
  %i.eb = insertelement <2 x i64> %i.ea, i64 %.sroa.4.0.copyload.i, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !411
  store i64 24, ptr %i.w, align 8, !noalias !411
  %i.ec = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w), !noalias !401, !inline_history !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !411
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ee = add i64 %i.ah, 1
  store i64 %i.ee, ptr %i.ab, align 8, !alias.scope !478, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !479
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 1, ptr %i.ef, align 8, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !479
  store i64 0, ptr %i.m, align 8, !noalias !479
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eg, align 8, !noalias !479
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.eh, align 8, !noalias !479
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !481
  invoke fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc unwind label %bb.bf, !inline_history !385

.noexc:                                           ; preds = %bb.ba
  %i.ej = load i8, ptr %i.d, align 8, !range !15, !noalias !481, !noundef !6
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !481, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !481
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc
  %i.en = load i8, ptr %i.ei, align 1, !range !15, !noalias !481, !noundef !6
  %i.eo = trunc nuw i8 %i.en to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !481
  br i1 %i.eo, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !481
  %i.ep = load ptr, ptr %i.n, align 8, !alias.scope !480, !noalias !482, !nonnull !6, !align !14, !noundef !6
  invoke fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ep) #20
          to label %.noexc45 unwind label %bb.bf, !inline_history !385

.noexc45:                                         ; preds = %bb.bd
  %i.eq = load i8, ptr %i.c, align 8, !range !10, !noalias !481, !noundef !6 ; 2 uses
  %i.er = icmp eq i8 %i.eq, -1
  br i1 %i.er, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc45
  %i.es = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !481, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !481
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bl, %bb.bf
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.et, %bb.bf ], [ %i.ez, %bb.bl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #16
          to label %common.resume unwind label %bb.bo, !noalias !483, !inline_history !386

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.10.0.ph = phi ptr [ %i.es, %bb.be ], [ %i.em, %bb.bb ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.bh, !noalias !483, !inline_history !386

bb.bh:                                            ; preds = %bb.bg
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bi, !noalias !483, !inline_history !386

bb.bi:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !483, !inline_history !386
  unreachable

common.resume:                                    ; preds = %bb.bp, %bb.by, %.body.i, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.eu, %bb.bh ], [ %i.fz, %bb.by ], [ %i.fi, %bb.bp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.bg
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !483, !inline_history !386
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core.exit

bb.bj:                                            ; preds = %.noexc45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.462.0..sroa_idx, i64 7, i1 false)
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.664.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !481
  store i8 %i.eq, ptr %i.l, align 8, !noalias !479
  store ptr %.sroa.563.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !479
  %i.ew = load i64, ptr %i.eh, align 8, !alias.scope !484, !noalias !485, !noundef !6 ; 3 uses
  %i.ex = load i64, ptr %i.m, align 8, !range !23, !alias.scope !484, !noalias !485, !noundef !6
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bk, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.bl, !noalias !486, !inline_history !386

bb.bl:                                            ; preds = %bb.bk
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #16
          to label %.body.i unwind label %bb.bm, !noalias !483, !inline_history !386

bb.bm:                                            ; preds = %bb.bl
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !483, !inline_history !386
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.bk, %bb.bj
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB2t_14PathVisibilityNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  store ptr %1, ptr %i.l, align 8, !noalias !1081
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 1, ptr %i.aq, align 8, !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1084
  call fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !1085
  %i.ar = load i8, ptr %i.k, align 8, !range !15, !noalias !1084, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1084, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1084
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !15, !noalias !1084, !noundef !6
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1084
  br i1 %i.ax, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1084
  %i.ay = load ptr, ptr %i.l, align 8, !alias.scope !1086, !noalias !1087, !nonnull !6, !align !14, !noundef !6
  call void @_RINvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBT_6string6StringbENtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB2H_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ay), !noalias !1088
  %i.az = load i64, ptr %i.j, align 8, !range !9, !noalias !1084, !noundef !6
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1089 ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1084
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.8..sroa_idx.i, i64 16, i1 false), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1084
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit

bb.n:                                             ; preds = %bb.j
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbzNSmZPCnTx_10tgrep_core(i64 noundef 0, ptr noundef nonnull @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !1091
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit

_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit: ; preds = %bb.i, %bb.l, %bb.n, %bb.m
  %.sroa.5.0 = phi ptr [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.bc, %bb.l ], [ %i.au, %bb.i ]
  %storemerge.i = phi i64 [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.l ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.be = load i8, ptr %i.ag, align 8, !noundef !6
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %storemerge.i, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.bg = invoke noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.q unwind label %bb.p       ; 5 uses

bb.o:                                             ; preds = %bb.t, %bb.g
  %.sink = phi ptr [ %i.bq, %bb.t ], [ %i.ao, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bh, align 8
  br label %bb.az

bb.p:                                             ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #16
          to label %common.resume unwind label %bb.s

bb.q:                                             ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read7StrReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.bg, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bk = load i64, ptr %i.q, align 8, !range !9, !noundef !6
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not30 = icmp eq ptr %i.bg, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br i1 %.not30, label %.split, label %.split.thread, !prof !27

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit: ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.not70 = icmp eq ptr %i.bg, null
  br i1 %.not70, label %.split.thread124, label %.split59

.split.thread124:                                 ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

.split.thread:                                    ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

bb.s:                                             ; preds = %bb.au, %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

.split:                                           ; preds = %bb.r
  %.sroa.014.0.copyload = load ptr, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ay

.split59:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit36.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ax

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 24, ptr %i.o, align 8
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.o

bb.u:                                             ; preds = %bb.f
  %i.br = add i64 %i.z, 1
  store i64 %i.br, ptr %i.t, align 8, !alias.scope !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !1093
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 1, ptr %i.bs, align 8, !noalias !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1093
  store i64 0, ptr %i.h, align 8, !noalias !1093
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1096
  invoke fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc.i unwind label %.loopexit.loopexit.i, !noalias !1097

.noexc.i:                                         ; preds = %bb.v
  %i.bx = load i8, ptr %i.e, align 8, !range !15, !noalias !1096, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1096, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1096
  br label %.loopexit

bb.x:                                             ; preds = %.noexc.i
  %i.cb = load i8, ptr %i.bt, align 1, !range !15, !noalias !1096, !noundef !6
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1096
  br i1 %i.cc, label %bb.y, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread57.i

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.i, align 8, !alias.scope !1098, !noalias !1099, !nonnull !6, !align !14, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 5 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1104, !noalias !1105, !noundef !6
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !alias.scope !1104, !noalias !1105
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 0, ptr %i.ci, align 8, !alias.scope !1106, !noalias !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1107
  invoke void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %.noexc42.i unwind label %.loopexit.loopexit.i, !noalias !1097

.noexc42.i:                                       ; preds = %bb.y
  %i.cj = load i64, ptr %i.d, align 8, !range !5, !noalias !1107, !noundef !6
  %i.ck = icmp eq i64 %i.cj, 2
  %i.cl = load ptr, ptr %i.bu, align 8, !noalias !1107, !nonnull !6, !noundef !6 ; 3 uses
  br i1 %i.ck, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc42.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1107
  %i.cm = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 6
  br i1 %i.cm, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread61.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread61.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1107
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1107
  br label %.loopexit

.loopexit.loopexit.i:                             ; preds = %bb.ah, %bb.ab, %bb.y, %bb.v
  %lpad.loopexit80.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i35

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.ag, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp81.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i35

.loopexit.split-lp.i:                             ; preds = %bb.an, %bb.ai
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i35

.loopexit.i35:                                    ; preds = %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit80.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp81.i, %.loopexit.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.h, align 8, !noalias !1093
  %.not39.i = icmp eq i64 %.pr.i, 0
  br i1 %.not39.i, label %common.resume, label %bb.as

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i: ; preds = %bb.z
  %i.cn = load i32, ptr %i.cl, align 1
  %i.co = xor i32 %i.cn, 1684302184
  %i.cp = getelementptr i8, ptr %i.cl, i64 4
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i32
  %i.cs = xor i32 %i.cr, 28261
  %i.ct = or i32 %i.co, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %.not.i = icmp eq i32 %i.cv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1107
  br i1 %.not.i, label %bb.ac, label %bb.ab

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread57.i: ; preds = %bb.x
  %i.cw = load i64, ptr %i.h, align 8, !range !9, !noalias !1093, !noundef !6
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %bb.am, label %bb.an

bb.ab:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread61.i
  %i.cy = invoke fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.cd)
          to label %bb.al unwind label %.loopexit.loopexit.i, !noalias !1097 ; 2 uses

bb.ac:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i
  %i.cz = load i64, ptr %i.h, align 8, !range !9, !noalias !1093, !noundef !6
  %.not37.i = icmp eq i64 %i.cz, 0
  br i1 %.not37.i, label %bb.ad, label %bb.ai, !prof !16

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1093
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !1110, !noalias !1111, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !1112, !noalias !1113 ; 2 uses
  %i.dc = icmp ult i64 %.promoted.i.i.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.ce, align 8, !alias.scope !1110, !noalias !1111, !nonnull !6, !noundef !6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i
  %i.de = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dh, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !1116, !noundef !6
  switch i8 %i.dg, label %bb.ag [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 58, label %bb.ah
  ], !prof !26

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.dh = add i64 %i.de, 1                        ; 3 uses
  store i64 %i.dh, ptr %i.cf, align 8, !alias.scope !1117, !noalias !1113
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dh, %i.db
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ae

.loopexit.i.i.i.i:                                ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1118
  store i64 3, ptr %i.b, align 8, !noalias !1118
  %i.di = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc43.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !1097

.noexc43.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1118
  br label %.loopexit84.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1118
  store i64 6, ptr %i.c, align 8, !noalias !1118
  %i.dj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc44.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !1097

.noexc44.i:                                       ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1118
  br label %.loopexit84.i

bb.ah:                                            ; preds = %bb.ae
  %i.dk = add i64 %i.de, 1
  store i64 %i.dk, ptr %i.cf, align 8, !alias.scope !1119, !noalias !1120
  invoke void @_RINvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBT_6string6StringbENtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB2H_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB28_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %.loopexit.loopexit.i, !noalias !1097

bb.ai:                                            ; preds = %bb.ac
  %i.dl = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 6)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !1097

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB28_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.g, align 8, !range !9, !noalias !1093
  %i.dm = trunc nuw i64 %.pre.i to i1
  %.pre = load ptr, ptr %i.bv, align 8, !noalias !1093 ; 3 uses
  br i1 %i.dm, label %.loopexit84.i, label %bb.aj

.loopexit84.i:                                    ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB28_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i, %.noexc43.i, %.noexc44.i
  %i.dn = phi ptr [ %i.dj, %.noexc44.i ], [ %i.di, %.noexc43.i ], [ %.pre, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB28_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.6.i)
  br label %.loopexit

bb.aj:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB28_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.0..sroa_idx.i, i64 16, i1 false), !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1093
  %i.do = load i64, ptr %i.h, align 8, !range !9, !alias.scope !1121, !noalias !1093, !noundef !6
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %.thread.i, !noalias !1097

.thread.i:                                        ; preds = %bb.ak
  %i.dq = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.h, align 8, !noalias !1093
  store ptr %.pre, ptr %i.bw, align 8, !noalias !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, i64 16, i1 false), !noalias !1093
  br label %bb.as

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.ak, %bb.aj
  store i64 1, ptr %i.h, align 8, !noalias !1093
  store ptr %.pre, ptr %i.bw, align 8, !noalias !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, i64 16, i1 false), !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.6.i)
  br label %.backedge

bb.al:                                            ; preds = %bb.ab
  %.not40.i = icmp eq ptr %i.cy, null
  br i1 %.not40.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i
  br label %bb.v

bb.am:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread57.i
  %.sroa.024.0.copyload.i = load ptr, ptr %i.bw, align 8, !noalias !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, i64 16, i1 false)
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read7StrReadEEBd_.exit

bb.an:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB23_14PathVisibilityNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread57.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1093
  invoke void @_RINvXNvNtNtCsd5bfvMOVH6k_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyINtNvXs3d_NtB28_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB28_11Deserialize11deserialize10MapVisitorNtNtB3D_6string6StringbEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 6)
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !1097

bb.ao:                                            ; preds = %bb.an
  %i.dr = load i64, ptr %i.f, align 8, !range !9, !noalias !1093, !noundef !6
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !1093 ; 2 uses
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1093
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.433.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1093
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read7StrReadEEBd_.exit

.loopexit:                                        ; preds = %bb.al, %bb.ai, %bb.w, %bb.aa, %bb.ap, %.loopexit84.i
  %.sroa.10.0 = phi ptr [ %i.du, %bb.ap ], [ %i.dn, %.loopexit84.i ], [ %i.ca, %bb.w ], [ %i.dl, %bb.ai ], [ %i.cl, %bb.aa ], [ %i.cy, %bb.al ] ; 2 uses
  %i.dv = load i64, ptr %i.h, align 8, !range !9, !noalias !1093, !noundef !6
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.ar, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read7StrReadEEBd_.exit

bb.ar:                                            ; preds = %.loopexit
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw), !noalias !1097
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read7StrReadEEBd_.exit

common.resume:                                    ; preds = %bb.au, %bb.p, %.loopexit.i35, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn51.i, %bb.as ], [ %lpad.phi.i, %.loopexit.i35 ], [ %i.eb, %bb.au ], [ %i.bi, %bb.p ]
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtB2t_9FileStampNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 24, ptr %i.m, align 8
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.q

bb.h:                                             ; preds = %bb.e
  %i.al = add i64 %i.u, 1
  store i64 %i.al, ptr %i.o, align 8, !alias.scope !1217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %1, ptr %i.k, align 8, !noalias !1218
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 1, ptr %i.am, align 8, !noalias !1218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1221
  call fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k), !noalias !1222
  %i.an = load i8, ptr %i.j, align 8, !range !15, !noalias !1221, !noundef !6
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1221, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1221
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !15, !noalias !1221, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1221
  br i1 %i.at, label %bb.k, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.k, align 8, !alias.scope !1223, !noalias !1224, !nonnull !6, !align !14, !noundef !6
  %i.av = tail call fastcc { i64, ptr } @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.au) #20, !noalias !1225 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 2 uses
  %i.ay = trunc nuw i64 %i.aw to i1
  br i1 %i.ay, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1228
  call fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k), !noalias !1229
  %i.az = load i8, ptr %i.i, align 8, !range !15, !noalias !1228, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1228, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1228
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !15, !noalias !1228, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1228
  br i1 %i.bf, label %bb.o, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.k, align 8, !alias.scope !1230, !noalias !1231, !nonnull !6, !align !14, !noundef !6
  %i.bh = tail call fastcc { i64, ptr } @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bg) #20, !noalias !1232 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = extractvalue { i64, ptr } %i.bh, 1      ; 2 uses
  %i.bk = trunc nuw i64 %i.bi to i1
  br i1 %i.bk, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit, label %bb.p

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.j
  %i.bl = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbzNSmZPCnTx_10tgrep_core(i64 noundef 0, ptr noundef nonnull @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !1233
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = ptrtoint ptr %i.bj to i64
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i: ; preds = %bb.n
  %i.bn = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbzNSmZPCnTx_10tgrep_core(i64 noundef 1, ptr noundef nonnull @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !1233
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit

_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit: ; preds = %bb.m, %bb.o, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i, %bb.i, %bb.k, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.p
  %.sroa.8.0 = phi i64 [ %i.bm, %bb.p ], [ undef, %bb.i ], [ undef, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ undef, %bb.k ], [ undef, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i ], [ undef, %bb.o ], [ undef, %bb.m ]
  %.sroa.5.0.in = phi ptr [ %i.ax, %bb.p ], [ %i.aq, %bb.i ], [ %i.bl, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.ax, %bb.k ], [ %i.bn, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i ], [ %i.bj, %bb.o ], [ %i.bc, %bb.m ] ; 3 uses
  %i.bo = phi i1 [ true, %bb.p ], [ false, %bb.i ], [ false, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ false, %bb.k ], [ false, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i ], [ false, %bb.o ], [ false, %bb.m ]
  %.sink27.i = phi i1 [ false, %bb.p ], [ true, %bb.i ], [ true, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ true, %bb.k ], [ true, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementyECsbzNSmZPCnTx_10tgrep_core.exit8.i ], [ true, %bb.o ], [ true, %bb.m ]
  %.sroa.5.0 = ptrtoint ptr %.sroa.5.0.in to i64  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bp = load i8, ptr %i.ac, align 8, !noundef !6
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.ac, align 8
  %i.br = invoke noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.t unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.y, %bb.g
  %.sink = phi ptr [ %i.bw, %bb.y ], [ %i.ak, %bb.g ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bs, align 8
  br label %bb.bo

bb.r:                                             ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.in) ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %.sroa.5.0.in)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit unwind label %bb.w

bb.t:                                             ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2J_4read7StrReadEEBd_.exit
  %.not93 = icmp eq ptr %i.br, null               ; 2 uses
  br i1 %.sink27.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not93, label %.thread68, label %.thread61, !prof !27

.thread61:                                        ; preds = %bb.u
  %i.bu = ptrtoint ptr %i.br to i64
  br label %.thread64

bb.v:                                             ; preds = %bb.t
  br i1 %.not93, label %.thread64, label %bb.x, !prof !27

bb.w:                                             ; preds = %bb.bj, %bb.s
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.br)
  br label %.thread64

bb.y:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 24, ptr %i.l, align 8
  %i.bw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.q

bb.z:                                             ; preds = %bb.f
  %i.bx = add i64 %i.u, 1
  store i64 %i.bx, ptr %i.o, align 8, !alias.scope !1234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1235
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.by, align 8, !noalias !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1236
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !1237
  %i.bz = load i8, ptr %i.g, align 8, !range !15, !noalias !1236, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %._crit_edge.i, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.aa

._crit_edge.i:                                    ; preds = %bb.aw, %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1238, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1238
  br label %bb.ak

bb.aa:                                            ; preds = %bb.aw, %.lr.ph.i23
  %.sroa.04.0105.i = phi i64 [ 0, %.lr.ph.i23 ], [ %.sroa.04.1.i, %bb.aw ] ; 4 uses
  %.sroa.4.0104.i = phi i64 [ undef, %.lr.ph.i23 ], [ %.sroa.4.1.i, %bb.aw ] ; 3 uses
  %.sroa.012.0103.i = phi i64 [ 0, %.lr.ph.i23 ], [ %.sroa.012.1.i, %bb.aw ] ; 4 uses
  %.sroa.414.0102.i = phi i64 [ undef, %.lr.ph.i23 ], [ %.sroa.414.1.i, %bb.aw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.cf = load i8, ptr %i.cb, align 1, !range !15, !noalias !1238, !noundef !6
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1238
  br i1 %i.cg, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.h, align 8, !alias.scope !1241, !noalias !1242, !nonnull !6, !align !14, !noundef !6 ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 8 uses
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1247, !noalias !1248, !noundef !6
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !alias.scope !1247, !noalias !1248
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 0, ptr %i.cm, align 8, !alias.scope !1249, !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1250
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ch), !noalias !1248
  %i.cn = load i64, ptr %i.f, align 8, !range !5, !noalias !1250, !noundef !6 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 2
  %i.cp = load ptr, ptr %i.cc, align 8, !noalias !1250, !nonnull !6, !noundef !6 ; 7 uses
  br i1 %i.co, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1250 ; 2 uses
  %i.cq = trunc nuw i64 %i.cn to i1
  br i1 %i.cq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ao [
    i64 5, label %bb.ae
    i64 4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i32, ptr %i.cp, align 1
  %i.cs = xor i32 %i.cr, 1835627629
  %i.ct = getelementptr i8, ptr %i.cp, i64 4
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = xor i32 %i.cv, 101
  %i.cx = or i32 %i.cs, %i.cw
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.am, label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.db = load i32, ptr %i.cp, align 1
  %i.dc = icmp ne i32 %i.db, 1702521203
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.an, label %bb.ao

bb.ag:                                            ; preds = %bb.ac
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ao [
    i64 5, label %bb.ah
    i64 4, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i32, ptr %i.cp, align 1
  %i.dg = xor i32 %i.df, 1835627629
  %i.dh = getelementptr i8, ptr %i.cp, i64 4
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = xor i32 %i.dj, 101
  %i.dl = or i32 %i.dg, %i.dk
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.am, label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.dp = load i32, ptr %i.cp, align 1
  %i.dq = icmp ne i32 %i.dp, 1702521203
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1250
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i
  %.sroa.1147.0.ph.i = phi ptr [ %i.cp, %bb.aj ], [ %i.ce, %._crit_edge.i ]
  %i.dt = ptrtoint ptr %.sroa.1147.0.ph.i to i64
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.al:                                            ; preds = %bb.aa
  %i.du = trunc nuw i64 %.sroa.04.0105.i to i1
  br i1 %i.du, label %bb.bg, label %bb.bf

bb.am:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1250
  %i.dv = icmp eq i64 %.sroa.04.0105.i, 1
  br i1 %i.dv, label %bb.av, label %bb.ap, !prof !22

bb.an:                                            ; preds = %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1250
  %i.dw = icmp eq i64 %.sroa.012.0103.i, 1
  br i1 %i.dw, label %bb.bd, label %bb.ax, !prof !22

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1250
  %i.dx = call fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.ch) #20, !noalias !1251 ; 2 uses
  %.not37.i = icmp eq ptr %i.dx, null
  br i1 %.not37.i, label %bb.aw, label %bb.be

bb.ap:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1254, !noalias !1255, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !1256, !noalias !1257 ; 2 uses
  %i.ea = icmp ult i64 %.promoted.i.i.i.i.i, %i.dz
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ap
  %i.eb = load ptr, ptr %i.ci, align 8, !alias.scope !1254, !noalias !1255, !nonnull !6, !noundef !6
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i
  %i.ec = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ef, %bb.ar ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !1260, !noundef !6
  switch i8 %i.ee, label %bb.as [
    i8 32, label %bb.ar
    i8 10, label %bb.ar
    i8 9, label %bb.ar
    i8 13, label %bb.ar
    i8 58, label %bb.au
  ], !prof !26

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.ef = add i64 %i.ec, 1                        ; 3 uses
  store i64 %i.ef, ptr %i.cj, align 8, !alias.scope !1261, !noalias !1257
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ef, %i.dz
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.aq

.loopexit.i.i.i.i:                                ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1262
  store i64 3, ptr %i.d, align 8, !noalias !1262
  %i.eg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1262
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1262
  store i64 6, ptr %i.e, align 8, !noalias !1262
  %i.eh = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1262
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit.i.i.i.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.eg, %.loopexit.i.i.i.i ], [ %i.eh, %bb.as ]
  %i.ei = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.au:                                            ; preds = %bb.aq
  %i.ej = add i64 %i.ec, 1
  store i64 %i.ej, ptr %i.cj, align 8, !alias.scope !1263, !noalias !1251
  %i.ek = call fastcc { i64, ptr } @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ch) #20, !noalias !1251
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.au, %bb.at
  %.merged.i.i.i = phi { i64, ptr } [ %i.ei, %bb.at ], [ %i.ek, %bb.au ] ; 2 uses
  %i.el = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.em = extractvalue { i64, ptr } %.merged.i.i.i, 1
  %i.en = trunc nuw i64 %i.el to i1
  %i.eo = ptrtoint ptr %i.em to i64               ; 2 uses
  br i1 %i.en, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit, label %bb.aw

bb.av:                                            ; preds = %bb.am
  %i.ep = call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5), !noalias !1251
  %i.eq = ptrtoint ptr %i.ep to i64
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.aw:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.ao
  %.sroa.414.1.i = phi i64 [ %.sroa.414.0102.i, %bb.ao ], [ %.sroa.414.0102.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.fj, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i ]
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0103.i, %bb.ao ], [ %.sroa.012.0103.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 1, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i ]
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0104.i, %bb.ao ], [ %i.eo, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %.sroa.4.0104.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i ]
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0105.i, %bb.ao ], [ 1, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %.sroa.04.0105.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1264
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !1237
  %i.er = load i8, ptr %i.g, align 8, !range !15, !noalias !1264, !noundef !6
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %._crit_edge.i, label %bb.aa

bb.ax:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !1267, !noalias !1268, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i40.i = load i64, ptr %i.cj, align 8, !alias.scope !1269, !noalias !1270 ; 2 uses
  %i.ev = icmp ult i64 %.promoted.i.i.i.i40.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i.i.i44.i, label %.loopexit.i.i.i41.i

.lr.ph.i.i.i.i44.i:                               ; preds = %bb.ax
  %i.ew = load ptr, ptr %i.ci, align 8, !alias.scope !1267, !noalias !1268, !nonnull !6, !noundef !6
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i44.i
  %i.ex = phi i64 [ %.promoted.i.i.i.i40.i, %.lr.ph.i.i.i.i44.i ], [ %i.fa, %bb.az ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !1273, !noundef !6
  switch i8 %i.ez, label %bb.ba [
    i8 32, label %bb.az
    i8 10, label %bb.az
    i8 9, label %bb.az
    i8 13, label %bb.az
    i8 58, label %bb.bc
  ], !prof !26

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %i.fa = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.fa, ptr %i.cj, align 8, !alias.scope !1274, !noalias !1270
  %exitcond.not.i.i.i.i45.i = icmp eq i64 %i.fa, %i.eu
  br i1 %exitcond.not.i.i.i.i45.i, label %.loopexit.i.i.i41.i, label %bb.ay

.loopexit.i.i.i41.i:                              ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1275
  store i64 3, ptr %i.b, align 8, !noalias !1275
  %i.fb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1275
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1275
  store i64 6, ptr %i.c, align 8, !noalias !1275
  %i.fc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1275
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit.i.i.i41.i
  %.sroa.0.0.i.ph.i.i42.i = phi ptr [ %i.fb, %.loopexit.i.i.i41.i ], [ %i.fc, %bb.ba ]
  %i.fd = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i42.i, 1
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i

bb.bc:                                            ; preds = %bb.ay
  %i.fe = add i64 %i.ex, 1
  store i64 %i.fe, ptr %i.cj, align 8, !alias.scope !1276, !noalias !1251
  %i.ff = call fastcc { i64, ptr } @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ch) #20, !noalias !1251
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit46.i: ; preds = %bb.bc, %bb.bb
  %.merged.i.i43.i = phi { i64, ptr } [ %i.fd, %bb.bb ], [ %i.ff, %bb.bc ] ; 2 uses
  %i.fg = extractvalue { i64, ptr } %.merged.i.i43.i, 0
  %i.fh = extractvalue { i64, ptr } %.merged.i.i43.i, 1
  %i.fi = trunc nuw i64 %i.fg to i1
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  br i1 %i.fi, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit, label %bb.aw

bb.bd:                                            ; preds = %bb.an
  %i.fk = call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4), !noalias !1251
  %i.fl = ptrtoint ptr %i.fk to i64
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.be:                                            ; preds = %bb.ao
  %i.fm = ptrtoint ptr %i.dx to i64
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit

bb.bf:                                            ; preds = %bb.al
  %i.fn = call { i64, ptr } @_RINvXNvNtNtCsd5bfvMOVH6k_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5), !noalias !1251 ; 2 uses
  %i.fo = extractvalue { i64, ptr } %i.fn, 0
  %i.fp = extractvalue { i64, ptr } %i.fn, 1
  %i.fq = trunc nuw i64 %i.fo to i1
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  br i1 %i.fq, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.al
  %.sroa.030.0.i = phi i64 [ %.sroa.4.0104.i, %bb.al ], [ %i.fr, %bb.bf ] ; 2 uses
  %i.fs = trunc nuw i64 %.sroa.012.0103.i to i1
  br i1 %i.fs, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas1_1__NtBb_9FileStampNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB15_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2J_4read7StrReadEEBd_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = call { i64, ptr } @_RINvXNvNtNtCsd5bfvMOVH6k_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4), !noalias !1251 ; 2 uses
  %i.fu = extractvalue { i64, ptr } %i.ft, 0      ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB2t_13EvidenceEntryNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.dm, align 8
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.dx

bb.ag:                                            ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtBb_13EvidenceEntryNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2O_4read7StrReadEEBd_.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ab) #16
          to label %common.resume unwind label %bb.aq

bb.ah:                                            ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtBb_13EvidenceEntryNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2O_4read7StrReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  store ptr %i.dl, ptr %i.do, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.dp = load i8, ptr %i.ac, align 8, !range !11, !noundef !6 ; 4 uses
  %i.dq = icmp eq i8 %i.dp, -2
  br i1 %i.dq, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !6, !align !14, !noundef !6
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit

bb.ai:                                            ; preds = %bb.ah
  %.not42 = icmp eq ptr %i.dl, null
  br i1 %.not42, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, i64 7, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, i64 64, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit: ; preds = %.thread, %bb.aj
  %.sroa.1014.0 = phi ptr [ %i.ds, %.thread ], [ %.sroa.5.0.copyload, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.962)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.dt = load ptr, ptr %i.do, align 8, !align !14, !noundef !6 ; 2 uses
  %.not473 = icmp eq ptr %i.dt, null
  br i1 %.not473, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread, label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.962)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.du = icmp eq i8 %i.dp, -1
  br i1 %i.du, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8, !range !10, !alias.scope !1486, !noundef !6
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %common.resume unwind label %bb.ap

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47: ; preds = %bb.al, %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !range !10, !alias.scope !1487, !noundef !6
  %i.eb = icmp eq i8 %i.ea, -1
  br i1 %i.eb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dz)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread

bb.ap:                                            ; preds = %bb.an
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aq:                                            ; preds = %bb.dj, %bb.ag
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47, %bb.ao, %bb.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit
  %.sroa.09.0346 = phi i8 [ %i.dp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit ], [ %i.dp, %bb.ar ], [ -2, %bb.ao ], [ -2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47 ]
  %.sroa.1014.0345 = phi ptr [ %.sroa.1014.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit ], [ %.sroa.1014.0, %bb.ar ], [ %i.dl, %bb.ao ], [ %i.dl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.as

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.dt)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit57.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread
  %.sroa.1014.1 = phi ptr [ %.sroa.1014.0345, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread ], [ %.sroa.1014.2351, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit57.thread ] ; 2 uses
  %.sroa.09.1 = phi i8 [ %.sroa.09.0346, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit.thread ], [ %.sroa.09.2352, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEBF_.exit57.thread ] ; 2 uses
  %i.ee = icmp eq i8 %.sroa.09.1, -2
  br i1 %i.ee, label %bb.du, label %bb.dv, !prof !22

bb.at:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 24, ptr %i.aa, align 8
  %i.ef = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.af

bb.au:                                            ; preds = %bb.f
  %i.eg = add i64 %i.al, 1
  store i64 %i.eg, ptr %i.af, align 8, !alias.scope !1488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8, !noalias !1489
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 1, ptr %i.eh, align 8, !noalias !1489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1489
  store i8 -2, ptr %i.o, align 8, !noalias !1489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1489
  store i8 -2, ptr %i.n, align 8, !noalias !1489
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.659.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %.sroa.761.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.864.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.638.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %.sroa.7.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.842.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.bz, %bb.au
  %.sroa.417.0.i.ph = phi i64 [ %i.hp, %bb.bz ], [ undef, %bb.au ]
  %.not574 = phi i1 [ false, %bb.bz ], [ true, %bb.au ]
  %.sroa.015.0.i.ph = phi i1 [ true, %bb.bz ], [ false, %bb.au ]
  %.sroa.4.0.i.ph = phi i64 [ %.sroa.4.0.i.ph580, %bb.bz ], [ undef, %bb.au ]
  %.sroa.07.0.i.ph = phi i64 [ %.sroa.07.0.i.ph581, %bb.bz ], [ 0, %bb.au ]
  br label %.outer579

.outer579:                                        ; preds = %.outer, %bb.bs
  %.sroa.4.0.i.ph580 = phi i64 [ %.sroa.4.0.i.ph, %.outer ], [ %i.gy, %bb.bs ] ; 2 uses
  %.sroa.07.0.i.ph581 = phi i64 [ %.sroa.07.0.i.ph, %.outer ], [ 1, %bb.bs ] ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %.backedge, %.outer579
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1492
  invoke fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc.i50 unwind label %.loopexit.i48.loopexit.loopexit, !noalias !1493

.noexc.i50:                                       ; preds = %bb.av
  %i.ek = load i8, ptr %i.k, align 8, !range !15, !noalias !1492, !noundef !6
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc.i50
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !1492, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1492
  br label %.loopexit

bb.ax:                                            ; preds = %.noexc.i50
  %i.eo = load i8, ptr %i.ei, align 1, !range !15, !noalias !1492, !noundef !6
  %i.ep = trunc nuw i8 %i.eo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1492
  br i1 %i.ep, label %bb.ay, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread168.i

bb.ay:                                            ; preds = %bb.ax
  %i.eq = load ptr, ptr %i.p, align 8, !alias.scope !1494, !noalias !1495, !nonnull !6, !align !14, !noundef !6 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 14 uses
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !1500, !noalias !1501, !noundef !6
  %i.eu = add i64 %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8, !alias.scope !1500, !noalias !1501
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 0, ptr %i.ev, align 8, !alias.scope !1502, !noalias !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1503
  invoke void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eq)
          to label %.noexc120.i unwind label %.loopexit.i48.loopexit.loopexit, !noalias !1493

.noexc120.i:                                      ; preds = %bb.ay
  %i.ew = load i64, ptr %i.j, align 8, !range !5, !noalias !1503, !noundef !6 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 2
  %i.ey = load ptr, ptr %i.ej, align 8, !noalias !1503, !nonnull !6, !noundef !6 ; 9 uses
  br i1 %i.ex, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %.noexc120.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1503 ; 2 uses
  %i.ez = trunc nuw i64 %i.ew to i1
  br i1 %i.ez, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i [
    i64 5, label %bb.bb
    i64 4, label %bb.bc
    i64 1, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.fa = load i32, ptr %i.ey, align 1
  %i.fb = xor i32 %i.fa, 1835627629
  %i.fc = getelementptr i8, ptr %i.ey, i64 4
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i32
  %i.ff = xor i32 %i.fe, 101
  %i.fg = or i32 %i.fb, %i.ff
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread174.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i

bb.bc:                                            ; preds = %bb.ba
  %i.fk = load i32, ptr %i.ey, align 1
  %i.fl = icmp ne i32 %i.fk, 1702521203
  %i.fm = zext i1 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread177.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i

bb.bd:                                            ; preds = %bb.ba
  %lhsc3.i.i.i.i.i.i.i.i = load i8, ptr %i.ey, align 1, !alias.scope !1504, !noalias !1505 ; 2 uses
  %switch.selectcmp.i.i.i.i.i.i.i = icmp eq i8 %lhsc3.i.i.i.i.i.i.i.i, 118
  %switch.select.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i, i8 3, i8 4
  %switch.selectcmp4.i.i.i.i.i.i.i = icmp eq i8 %lhsc3.i.i.i.i.i.i.i.i, 99
  br i1 %switch.selectcmp4.i.i.i.i.i.i.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread180.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i

bb.be:                                            ; preds = %bb.az
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i [
    i64 5, label %bb.bf
    i64 4, label %bb.bg
    i64 1, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fo = load i32, ptr %i.ey, align 1
  %i.fp = xor i32 %i.fo, 1835627629
  %i.fq = getelementptr i8, ptr %i.ey, i64 4
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i32
  %i.ft = xor i32 %i.fs, 101
  %i.fu = or i32 %i.fp, %i.ft
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread174.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i

bb.bg:                                            ; preds = %bb.be
  %i.fy = load i32, ptr %i.ey, align 1
  %i.fz = icmp ne i32 %i.fy, 1702521203
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread177.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i

bb.bh:                                            ; preds = %bb.be
  %lhsc3.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ey, align 1, !alias.scope !1506, !noalias !1507 ; 2 uses
  %switch.selectcmp.i.i.i.i.i.i.i.i = icmp eq i8 %lhsc3.i.i.i.i.i.i.i.i.i, 118
  %switch.select.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i, i8 3, i8 4
  %switch.selectcmp1.i.i.i.i.i.i.i.i = icmp eq i8 %lhsc3.i.i.i.i.i.i.i.i.i, 99
  br i1 %switch.selectcmp1.i.i.i.i.i.i.i.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread180.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1503
  br label %bb.bl

bb.bi:                                            ; preds = %.noexc120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1503
  br label %.loopexit

thread-pre-split.i:                               ; preds = %.loopexit.i48.loopexit.split-lp, %.loopexit.i48.loopexit.loopexit.split-lp, %.loopexit.i48.loopexit.loopexit, %bb.ch, %.loopexit.split-lp.i
  %.pn.ph.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.ie, %bb.ch ], [ %lpad.loopexit.split-lp, %.loopexit.i48.loopexit.split-lp ], [ %lpad.loopexit582, %.loopexit.i48.loopexit.loopexit ], [ %lpad.loopexit.split-lp583, %.loopexit.i48.loopexit.loopexit.split-lp ]
  %.pr445.i = load i8, ptr %i.n, align 8, !noalias !1489
  br label %bb.bj

bb.bj:                                            ; preds = %bb.cp, %thread-pre-split.i
  %i.gc = phi i8 [ %.pr445.i, %thread-pre-split.i ], [ %.pr184.i, %bb.cp ]
  %.pn.i = phi { ptr, i32 } [ %.pn.ph.i, %thread-pre-split.i ], [ %i.iw, %bb.cp ] ; 2 uses
  %switch.i = icmp ugt i8 %i.gc, -3
  br i1 %switch.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit.i49, label %bb.dg

.loopexit.i48.loopexit.loopexit:                  ; preds = %bb.cm, %bb.ce, %bb.bl, %bb.ay, %bb.av
  %lpad.loopexit582 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split.i

.loopexit.i48.loopexit.loopexit.split-lp:         ; preds = %bb.br, %bb.bp, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp583 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split.i

.loopexit.i48.loopexit.split-lp:                  ; preds = %.loopexit.i.i.i125.i, %bb.bw, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.cv, %bb.cr, %bb.cl, %.loopexit.i.i.i144.i, %bb.cd, %.loopexit.i.i.i135.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread174.i: ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1503
  %.not575 = icmp eq i64 %.sroa.07.0.i.ph581, 0
  br i1 %.not575, label %bb.bm, label %.invoke, !prof !16

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread177.i: ; preds = %bb.bg, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1503
  br i1 %.not574, label %bb.bt, label %.invoke, !prof !16

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread180.i: ; preds = %bb.bh, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1503
  %i.gd = load i8, ptr %i.o, align 8, !range !11, !noalias !1489, !noundef !6
  %.not110.i = icmp eq i8 %i.gd, -2
  br i1 %.not110.i, label %bb.ca, label %.invoke, !prof !16

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i: ; preds = %bb.bh, %bb.bd
  %.sroa.5.0.ph.i.i.i = phi i8 [ %switch.select.i.i.i.i.i.i.i, %bb.bd ], [ %switch.select.i.i.i.i.i.i.i.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1503
  %i.ge = icmp eq i8 %.sroa.5.0.ph.i.i.i, 4
  br i1 %i.ge, label %bb.bl, label %bb.bk

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread168.i: ; preds = %bb.ax
  %i.gf = trunc nuw i64 %.sroa.07.0.i.ph581 to i1
  br i1 %i.gf, label %bb.cu, label %bb.cr

bb.bk:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i
  %i.gg = load i8, ptr %i.n, align 8, !range !11, !noalias !1489, !noundef !6
  %.not109.i = icmp eq i8 %i.gg, -2
  br i1 %.not109.i, label %bb.ci, label %.invoke, !prof !16

bb.bl:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread182.i
  %i.gh = invoke fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.eq)
          to label %bb.cq unwind label %.loopexit.i48.loopexit.loopexit, !noalias !1493 ; 2 uses

bb.bm:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread174.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !1510, !noalias !1511, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !1512, !noalias !1513 ; 2 uses
  %i.gk = icmp ult i64 %.promoted.i.i.i.i.i, %i.gj
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bm
  %i.gl = load ptr, ptr %i.er, align 8, !alias.scope !1510, !noalias !1511, !nonnull !6, !noundef !6
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %.lr.ph.i.i.i.i.i
  %i.gm = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gp, %bb.bo ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !noalias !1516, !noundef !6
  switch i8 %i.go, label %bb.bp [
    i8 32, label %bb.bo
    i8 10, label %bb.bo
    i8 9, label %bb.bo
    i8 13, label %bb.bo
    i8 58, label %bb.br
  ], !prof !26

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.gp = add i64 %i.gm, 1                        ; 3 uses
  store i64 %i.gp, ptr %i.es, align 8, !alias.scope !1517, !noalias !1513
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gp, %i.gj
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bn

.loopexit.i.i.i.i:                                ; preds = %bb.bo, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1518
  store i64 3, ptr %i.h, align 8, !noalias !1518
  %i.gq = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc121.i unwind label %.loopexit.i48.loopexit.loopexit.split-lp, !noalias !1493

.noexc121.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1518
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1518
  store i64 6, ptr %i.i, align 8, !noalias !1518
  %i.gr = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc122.i unwind label %.loopexit.i48.loopexit.loopexit.split-lp, !noalias !1493

.noexc122.i:                                      ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1518
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc122.i, %.noexc121.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.gq, %.noexc121.i ], [ %i.gr, %.noexc122.i ]
  %i.gs = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.br:                                            ; preds = %bb.bn
  %i.gt = add i64 %i.gm, 1
  store i64 %i.gt, ptr %i.es, align 8, !alias.scope !1519, !noalias !1493
  %i.gu = invoke fastcc { i64, ptr } @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.eq) #20
          to label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %.loopexit.i48.loopexit.loopexit.split-lp, !noalias !1493

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.br, %bb.bq
  %.merged.i.i.i = phi { i64, ptr } [ %i.gs, %bb.bq ], [ %i.gu, %bb.br ] ; 2 uses
  %i.gv = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.gw = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 2 uses
  %i.gx = trunc nuw i64 %i.gv to i1
  br i1 %i.gx, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.gy = ptrtoint ptr %i.gw to i64
  br label %.outer579

bb.bt:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas8_1__NtB23_13EvidenceEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread177.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !1522, !noalias !1523, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i124.i = load i64, ptr %i.es, align 8, !alias.scope !1524, !noalias !1525 ; 2 uses
  %i.hb = icmp ult i64 %.promoted.i.i.i.i124.i, %i.ha
  br i1 %i.hb, label %.lr.ph.i.i.i.i128.i, label %.loopexit.i.i.i125.i

.lr.ph.i.i.i.i128.i:                              ; preds = %bb.bt
  %i.hc = load ptr, ptr %i.er, align 8, !alias.scope !1522, !noalias !1523, !nonnull !6, !noundef !6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i128.i
  %i.hd = phi i64 [ %.promoted.i.i.i.i124.i, %.lr.ph.i.i.i.i128.i ], [ %i.hg, %bb.bv ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !noalias !1528, !noundef !6
  switch i8 %i.hf, label %bb.bw [
    i8 32, label %bb.bv
    i8 10, label %bb.bv
    i8 9, label %bb.bv
    i8 13, label %bb.bv
    i8 58, label %bb.by
  ], !prof !26

bb.bv:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.hg = add i64 %i.hd, 1                        ; 3 uses
  store i64 %i.hg, ptr %i.es, align 8, !alias.scope !1529, !noalias !1525
  %exitcond.not.i.i.i.i129.i = icmp eq i64 %i.hg, %i.ha
  br i1 %exitcond.not.i.i.i.i129.i, label %.loopexit.i.i.i125.i, label %bb.bu

.loopexit.i.i.i125.i:                             ; preds = %bb.bv, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1530
  store i64 3, ptr %i.f, align 8, !noalias !1530
  %i.hh = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc130.i unwind label %.loopexit.i48.loopexit.split-lp, !noalias !1493

.noexc130.i:                                      ; preds = %.loopexit.i.i.i125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1530
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1530
  store i64 6, ptr %i.g, align 8, !noalias !1530
  %i.hi = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc131.i unwind label %.loopexit.i48.loopexit.split-lp, !noalias !1493

.noexc131.i:                                      ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1530
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc131.i, %.noexc130.i
  %.sroa.0.0.i.ph.i.i126.i = phi ptr [ %i.hh, %.noexc130.i ], [ %i.hi, %.noexc131.i ]
  %i.hj = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i126.i, 1
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueyECsbzNSmZPCnTx_10tgrep_core.exit133.i

end_hunk_3
begin_hunk_4_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10path_indexs_1__NtB2v_18FilenameVisibilityNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
  %.sroa.052.0 = phi ptr [ %i.cj, %bb.t ], [ %i.cv, %.invoke ], [ %i.bu, %bb.n ], [ %i.cc, %bb.q ], [ %i.cr, %bb.w ]
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y), !noalias !2312
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10path_indexs_1__NtBb_18FilenameVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2Z_4read9SliceReadEEBd_.exit

bb.z:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !2312
  unreachable

common.resume:                                    ; preds = %bb.cu, %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47, %bb.ct, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47 ], [ %i.cf, %bb.s ], [ %.pn.i, %bb.ct ], [ %i.jo, %bb.cu ], [ %i.db, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10path_indexs_1__NtBb_18FilenameVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2Z_4read9SliceReadEEBd_.exit: ; preds = %bb.i, %bb.l, %bb.r, %bb.x, %bb.y
  %.sroa.11.1 = phi i8 [ %i.ct, %bb.x ], [ 2, %bb.y ], [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.i ]
  %.sroa.955.0 = phi ptr [ %.sroa.13.2.copyload.i, %bb.x ], [ undef, %bb.y ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.052.1 = phi ptr [ %.sroa.023.i.sroa.0.0.copyload, %bb.x ], [ %.sroa.052.0, %bb.y ], [ %i.ce, %bb.r ], [ %i.bq, %bb.l ], [ %i.bi, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2300
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.cx = load i8, ptr %i.au, align 8, !noundef !6
  %i.cy = add i8 %i.cx, 1
  store i8 %i.cy, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %.sroa.052.1, ptr %i.ad, align 8
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %.sroa.954.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(22) %.sroa.023.i.sroa.4, i64 22, i1 false)
  %.sroa.955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 30
  store ptr %.sroa.955.0, ptr %.sroa.955.0..sroa_idx, align 2
  %.sroa.1056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.1056.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.1056, i64 18, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i8 %.sroa.11.1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.cz = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ac unwind label %bb.ab     ; 5 uses

bb.aa:                                            ; preds = %bb.ai, %bb.g
  %.sink = phi ptr [ %i.dj, %bb.ai ], [ %i.bc, %bb.g ]
  store ptr %.sink, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 2, ptr %i.da, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.dc

bb.ab:                                            ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10path_indexs_1__NtBb_18FilenameVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2Z_4read9SliceReadEEBd_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ad) #16
          to label %common.resume unwind label %bb.af

bb.ac:                                            ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10path_indexs_1__NtBb_18FilenameVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2Z_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.cz, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.de = load i8, ptr %i.dd, align 8, !range !8, !noundef !6 ; 2 uses
  %i.df = icmp eq i8 %i.de, 2
  br i1 %i.df, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not42 = icmp eq ptr %i.cz, null
  br i1 %.not42, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread309, label %bb.ae

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread309: ; preds = %bb.ad
  %.sroa.021.0.copyload = load ptr, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1056)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit: ; preds = %bb.ac
  %i.dg = load ptr, ptr %i.ae, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1056)
  %.not81 = icmp eq ptr %i.cz, null
  br i1 %.not81, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1056)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread

bb.af:                                            ; preds = %bb.cu, %bb.ab
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread309, %bb.ae, %bb.ag, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit
  %.sroa.09.073 = phi ptr [ %i.dg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit ], [ %i.dg, %bb.ag ], [ %i.cz, %bb.ae ], [ %.sroa.021.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread309 ]
  %.sroa.1014.072 = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit ], [ 2, %bb.ag ], [ 2, %bb.ae ], [ %i.de, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread309 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ah

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.cz)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit49.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread
  %.sroa.1014.1 = phi i8 [ %.sroa.1014.072, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread ], [ %.sroa.1014.278, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit49.thread ] ; 2 uses
  %.sroa.09.1 = phi ptr [ %.sroa.09.073, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit.thread ], [ %.sroa.09.279, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10path_index18FilenameVisibilityEBF_.exit49.thread ] ; 2 uses
  %i.di = icmp eq i8 %.sroa.1014.1, 2
  br i1 %i.di, label %bb.cz, label %bb.da, !prof !22

bb.ai:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 24, ptr %i.ac, align 8
  %i.dj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.aa

bb.aj:                                            ; preds = %bb.f
  %i.dk = add i64 %i.an, 1
  store i64 %i.dk, ptr %i.ah, align 8, !alias.scope !2322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.049.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.947.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.922.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %1, ptr %i.r, align 8, !noalias !2323
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 1, ptr %i.dl, align 8, !noalias !2323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2323
  store i64 0, ptr %i.q, align 8, !noalias !2323
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.568.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.bw, %bb.aj
  %.sroa.026.0.i.ph = phi i8 [ %i.ip, %bb.bw ], [ 2, %bb.aj ] ; 3 uses
  %.sroa.4.sroa.2.0.i.ph = phi ptr [ %.sroa.4.sroa.2.0.i.ph531, %bb.bw ], [ undef, %bb.aj ]
  %.sroa.016.0.i.ph = phi i8 [ %.sroa.016.0.i.ph532, %bb.bw ], [ 0, %bb.aj ]
  br label %.outer530

.outer530:                                        ; preds = %.outer, %bb.bq
  %.sroa.4.sroa.2.0.i.ph531 = phi ptr [ %.sroa.4.sroa.2.0.i.ph, %.outer ], [ %.sroa.467.0.copyload.i, %bb.bq ] ; 2 uses
  %.sroa.016.0.i.ph532 = phi i8 [ %.sroa.016.0.i.ph, %.outer ], [ 1, %bb.bq ] ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.backedge, %.outer530
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2326
  invoke fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.noexc.i48 unwind label %.loopexit.loopexit.i.loopexit.loopexit, !noalias !2327

.noexc.i48:                                       ; preds = %bb.ak
  %i.du = load i8, ptr %i.i, align 8, !range !15, !noalias !2326, !noundef !6
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.noexc.i48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !2326, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2326
  br label %.loopexit

bb.am:                                            ; preds = %.noexc.i48
  %i.dy = load i8, ptr %i.dm, align 1, !range !15, !noalias !2326, !noundef !6
  %i.dz = trunc nuw i8 %i.dy to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2326
  br i1 %i.dz, label %bb.an, label %bb.ay

bb.an:                                            ; preds = %bb.am
  %i.ea = load ptr, ptr %i.r, align 8, !alias.scope !2328, !noalias !2329, !nonnull !6, !align !14, !noundef !6 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 40 ; 11 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !2334, !noalias !2335, !noundef !6
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !alias.scope !2334, !noalias !2335
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 0, ptr %i.ef, align 8, !alias.scope !2336, !noalias !2335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2337
  invoke void @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea)
          to label %.noexc84.i unwind label %.loopexit.loopexit.i.loopexit.loopexit, !noalias !2327

.noexc84.i:                                       ; preds = %bb.an
  %i.eg = load i64, ptr %i.h, align 8, !range !5, !noalias !2337, !noundef !6 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 2
  %i.ei = load ptr, ptr %i.dn, align 8, !noalias !2337, !nonnull !6, !noundef !6 ; 13 uses
  br i1 %i.eh, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %.noexc84.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2337 ; 2 uses
  %i.ej = trunc nuw i64 %i.eg to i1
  br i1 %i.ej, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bc [
    i64 5, label %bb.aq
    i64 13, label %bb.ar
    i64 15, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ek = load i32, ptr %i.ei, align 1
  %i.el = xor i32 %i.ek, 1752457584
  %i.em = getelementptr i8, ptr %i.ei, i64 4
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = xor i32 %i.eo, 115
  %i.eq = or i32 %i.el, %i.ep
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.az, label %bb.bc

bb.ar:                                            ; preds = %bb.ap
  %i.eu = load i64, ptr %i.ei, align 1
  %i.ev = xor i64 %i.eu, 7089075241530190182
  %i.ew = getelementptr i8, ptr %i.ei, i64 5
  %i.ex = load i64, ptr %i.ew, align 1
  %i.ey = xor i64 %i.ex, 7235419165562134900
  %i.ez = or i64 %i.ev, %i.ey
  %i.fa = icmp ne i64 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ba, label %bb.bc

bb.as:                                            ; preds = %bb.ap
  %i.fd = load i64, ptr %i.ei, align 1
  %i.fe = xor i64 %i.fd, 7160563314297432424
  %i.ff = getelementptr i8, ptr %i.ei, i64 7
  %i.fg = load i64, ptr %i.ff, align 1
  %i.fh = xor i64 %i.fg, 7310579611546251107
  %i.fi = or i64 %i.fe, %i.fh
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.bb, label %bb.bc

bb.at:                                            ; preds = %bb.ao
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bc [
    i64 5, label %bb.au
    i64 13, label %bb.av
    i64 15, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  %i.fm = load i32, ptr %i.ei, align 1
  %i.fn = xor i32 %i.fm, 1752457584
  %i.fo = getelementptr i8, ptr %i.ei, i64 4
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = xor i32 %i.fq, 115
  %i.fs = or i32 %i.fn, %i.fr
  %i.ft = icmp ne i32 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.az, label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.fw = load i64, ptr %i.ei, align 1
  %i.fx = xor i64 %i.fw, 7089075241530190182
  %i.fy = getelementptr i8, ptr %i.ei, i64 5
  %i.fz = load i64, ptr %i.fy, align 1
  %i.ga = xor i64 %i.fz, 7235419165562134900
  %i.gb = or i64 %i.fx, %i.ga
  %i.gc = icmp ne i64 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ba, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %i.gf = load i64, ptr %i.ei, align 1
  %i.gg = xor i64 %i.gf, 7160563314297432424
  %i.gh = getelementptr i8, ptr %i.ei, i64 7
  %i.gi = load i64, ptr %i.gh, align 1
  %i.gj = xor i64 %i.gi, 7310579611546251107
  %i.gk = or i64 %i.gg, %i.gj
  %i.gl = icmp ne i64 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bb, label %bb.bc

bb.ax:                                            ; preds = %.noexc84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2337
  br label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47: ; preds = %.loopexit.loopexit.i.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit, %bb.cg, %bb.bk, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %.sroa.062.1.i = phi i8 [ %.sroa.062.4.i, %bb.cg ], [ 1, %bb.bk ], [ %.sroa.062.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.i.loopexit.loopexit ], [ 1, %.loopexit.loopexit.i.loopexit.loopexit.split-lp ], [ 1, %.loopexit.loopexit.i.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %i.iw, %bb.cg ], [ %i.hl, %bb.bk ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp235.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit533, %.loopexit.loopexit.i.loopexit.loopexit ], [ %lpad.loopexit.split-lp534, %.loopexit.loopexit.i.loopexit.loopexit.split-lp ] ; 2 uses
  %i.go = load i64, ptr %i.q, align 8, !range !9, !noalias !2323, !noundef !6
  %i.gp = icmp ne i64 %i.go, 0
  %i.gq = trunc nuw i8 %.sroa.062.1.i to i1
  %or.cond3.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond3.i, label %bb.ct, label %common.resume

.loopexit.loopexit.i.loopexit.loopexit:           ; preds = %bb.bh, %bb.bc, %bb.an, %bb.ak
  %lpad.loopexit533 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47

.loopexit.loopexit.i.loopexit.loopexit.split-lp:  ; preds = %bb.bp
  %lpad.loopexit.split-lp534 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.bu, %.loopexit.i.i.i98.i, %bb.bo, %.loopexit.i.i.i90.i, %bb.bg, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp235.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47

.loopexit.split-lp.i:                             ; preds = %.invoke423, %bb.cl, %bb.bz
  %.sroa.062.2.ph.i = phi i8 [ 1, %.invoke423 ], [ 1, %bb.bz ], [ %.sroa.062.4.i, %bb.cl ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47

bb.ay:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2323
  %i.gr = load i64, ptr %i.q, align 8, !range !9, !noalias !2323, !noundef !6
  %i.gs = trunc nuw i64 %i.gr to i1
  br i1 %i.gs, label %bb.by, label %bb.bz

bb.az:                                            ; preds = %bb.au, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2337
  %i.gt = load i64, ptr %i.q, align 8, !range !9, !noalias !2323, !noundef !6
  %.not79.i = icmp eq i64 %i.gt, 0
  br i1 %.not79.i, label %bb.bd, label %.invoke423, !prof !16

bb.ba:                                            ; preds = %bb.av, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2337
  %i.gu = trunc nuw i8 %.sroa.016.0.i.ph532 to i1
  br i1 %i.gu, label %.invoke423, label %bb.bl, !prof !22

bb.bb:                                            ; preds = %bb.aw, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2337
  %.not78.i = icmp eq i8 %.sroa.026.0.i.ph, 2
  br i1 %.not78.i, label %bb.br, label %.invoke423, !prof !16

bb.bc:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2337
  %i.gv = invoke fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.ea)
          to label %bb.bx unwind label %.loopexit.loopexit.i.loopexit.loopexit, !noalias !2327 ; 2 uses

bb.bd:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2323
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !2340, !noalias !2341, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !2342, !noalias !2343 ; 2 uses
  %i.gy = icmp ult i64 %.promoted.i.i.i.i.i, %i.gx
  br i1 %i.gy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bd
  %i.gz = load ptr, ptr %i.eb, align 8, !alias.scope !2340, !noalias !2341, !nonnull !6, !noundef !6
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i.i.i
  %i.ha = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hd, %bb.bf ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !2345, !noundef !6
  switch i8 %i.hc, label %bb.bg [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 58, label %bb.bh
  ], !prof !26

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be
  %i.hd = add i64 %i.ha, 1                        ; 3 uses
  store i64 %i.hd, ptr %i.ec, align 8, !alias.scope !2346, !noalias !2343
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hd, %i.gx
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.be

.loopexit.i.i.i.i:                                ; preds = %bb.bd, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2347
  store i64 3, ptr %i.f, align 8, !noalias !2347
  %i.he = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc85.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !2327

.noexc85.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2347
  br label %.loopexit241.i

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2347
  store i64 6, ptr %i.g, align 8, !noalias !2347
  %i.hf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc86.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !2327

.noexc86.i:                                       ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2347
  br label %.loopexit241.i

bb.bh:                                            ; preds = %bb.be
  %i.hg = add i64 %i.ha, 1
  store i64 %i.hg, ptr %i.ec, align 8, !alias.scope !2348, !noalias !2349
  invoke void @_RINvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB5_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea)
          to label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEB25_.exit.i unwind label %.loopexit.loopexit.i.loopexit.loopexit, !noalias !2327

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEB25_.exit.i: ; preds = %bb.bh
  %.pre226.i = load i64, ptr %i.p, align 8, !range !9, !noalias !2323
  %i.hh = trunc nuw i64 %.pre226.i to i1
  %.pre296 = load ptr, ptr %i.ds, align 8, !noalias !2323 ; 3 uses
  br i1 %i.hh, label %.loopexit241.i, label %bb.bi

.loopexit241.i:                                   ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEB25_.exit.i, %.noexc85.i, %.noexc86.i
  %i.hi = phi ptr [ %i.hf, %.noexc86.i ], [ %i.he, %.noexc85.i ], [ %.pre296, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEB25_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.6.i)
  br label %.loopexit

bb.bi:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEB25_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.465.0..sroa_idx.i, i64 16, i1 false), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2323
  %i.hj = load i64, ptr %i.q, align 8, !range !9, !alias.scope !2350, !noalias !2323, !noundef !6
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB11_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB11_.exit.i unwind label %bb.bk, !noalias !2327

bb.bk:                                            ; preds = %bb.bj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.q, align 8, !noalias !2323
  store ptr %.pre296, ptr %i.dt, align 8, !noalias !2323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, i64 16, i1 false), !noalias !2323
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit.i47

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB11_.exit.i: ; preds = %bb.bj, %bb.bi
  store i64 1, ptr %i.q, align 8, !noalias !2323
  store ptr %.pre296, ptr %i.dt, align 8, !noalias !2323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, i64 16, i1 false), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.6.i)
  br label %.backedge

bb.bl:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2323
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !2353, !noalias !2354, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i89.i = load i64, ptr %i.ec, align 8, !alias.scope !2355, !noalias !2356 ; 2 uses
  %i.ho = icmp ult i64 %.promoted.i.i.i.i89.i, %i.hn
  br i1 %i.ho, label %.lr.ph.i.i.i.i92.i, label %.loopexit.i.i.i90.i

.lr.ph.i.i.i.i92.i:                               ; preds = %bb.bl
  %i.hp = load ptr, ptr %i.eb, align 8, !alias.scope !2353, !noalias !2354, !nonnull !6, !noundef !6
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %.lr.ph.i.i.i.i92.i
  %i.hq = phi i64 [ %.promoted.i.i.i.i89.i, %.lr.ph.i.i.i.i92.i ], [ %i.ht, %bb.bn ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !2358, !noundef !6
  switch i8 %i.hs, label %bb.bo [
    i8 32, label %bb.bn
    i8 10, label %bb.bn
    i8 9, label %bb.bn
    i8 13, label %bb.bn
    i8 58, label %bb.bp
  ], !prof !26

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.ht = add i64 %i.hq, 1                        ; 3 uses
  store i64 %i.ht, ptr %i.ec, align 8, !alias.scope !2359, !noalias !2356
  %exitcond.not.i.i.i.i93.i = icmp eq i64 %i.ht, %i.hn
  br i1 %exitcond.not.i.i.i.i93.i, label %.loopexit.i.i.i90.i, label %bb.bm

.loopexit.i.i.i90.i:                              ; preds = %bb.bl, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2360
  store i64 3, ptr %i.d, align 8, !noalias !2360
  %i.hu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc94.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !2327
end_hunk_4
begin_hunk_5_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB2v_14PathVisibilityNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
  store ptr %1, ptr %i.l, align 8, !noalias !2446
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 1, ptr %i.aq, align 8, !noalias !2446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2449
  call fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !2450
  %i.ar = load i8, ptr %i.k, align 8, !range !15, !noalias !2449, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2449, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2449
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !15, !noalias !2449, !noundef !6
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2449
  br i1 %i.ax, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2449
  %i.ay = load ptr, ptr %i.l, align 8, !alias.scope !2451, !noalias !2452, !nonnull !6, !align !14, !noundef !6
  call void @_RINvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBT_6string6StringbENtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB2H_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ay), !noalias !2453
  %i.az = load i64, ptr %i.j, align 8, !range !9, !noalias !2449, !noundef !6
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !2454 ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2449
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.8..sroa_idx.i, i64 16, i1 false), !noalias !2455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2449
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit

bb.n:                                             ; preds = %bb.j
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbzNSmZPCnTx_10tgrep_core(i64 noundef 0, ptr noundef nonnull @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !2456
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit

_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit: ; preds = %bb.i, %bb.l, %bb.n, %bb.m
  %.sroa.5.0 = phi ptr [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.bc, %bb.l ], [ %i.au, %bb.i ]
  %storemerge.i = phi i64 [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.l ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.be = load i8, ptr %i.ag, align 8, !noundef !6
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %storemerge.i, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.bg = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.q unwind label %bb.p       ; 5 uses

bb.o:                                             ; preds = %bb.t, %bb.g
  %.sink = phi ptr [ %i.bq, %bb.t ], [ %i.ao, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bh, align 8
  br label %bb.az

bb.p:                                             ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #16
          to label %common.resume unwind label %bb.s

bb.q:                                             ; preds = %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.bg, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bk = load i64, ptr %i.q, align 8, !range !9, !noundef !6
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not30 = icmp eq ptr %i.bg, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br i1 %.not30, label %.split, label %.split.thread, !prof !27

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit: ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.not70 = icmp eq ptr %i.bg, null
  br i1 %.not70, label %.split.thread124, label %.split59

.split.thread124:                                 ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

.split.thread:                                    ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

bb.s:                                             ; preds = %bb.au, %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

.split:                                           ; preds = %bb.r
  %.sroa.014.0.copyload = load ptr, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ay

.split59:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit36.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEBF_.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ax

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 24, ptr %i.o, align 8
  %i.bq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.o

bb.u:                                             ; preds = %bb.f
  %i.br = add i64 %i.z, 1
  store i64 %i.br, ptr %i.t, align 8, !alias.scope !2457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !2458
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 1, ptr %i.bs, align 8, !noalias !2458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2458
  store i64 0, ptr %i.h, align 8, !noalias !2458
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2461
  invoke fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc.i unwind label %.loopexit.loopexit.i, !noalias !2462

.noexc.i:                                         ; preds = %bb.v
  %i.bx = load i8, ptr %i.e, align 8, !range !15, !noalias !2461, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !2461, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2461
  br label %.loopexit

bb.x:                                             ; preds = %.noexc.i
  %i.cb = load i8, ptr %i.bt, align 1, !range !15, !noalias !2461, !noundef !6
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2461
  br i1 %i.cc, label %bb.y, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread57.i

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.i, align 8, !alias.scope !2463, !noalias !2464, !nonnull !6, !align !14, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 5 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !2469, !noalias !2470, !noundef !6
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !alias.scope !2469, !noalias !2470
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 0, ptr %i.ci, align 8, !alias.scope !2471, !noalias !2470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2472
  invoke void @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %.noexc42.i unwind label %.loopexit.loopexit.i, !noalias !2462

.noexc42.i:                                       ; preds = %bb.y
  %i.cj = load i64, ptr %i.d, align 8, !range !5, !noalias !2472, !noundef !6
  %i.ck = icmp eq i64 %i.cj, 2
  %i.cl = load ptr, ptr %i.bu, align 8, !noalias !2472, !nonnull !6, !noundef !6 ; 3 uses
  br i1 %i.ck, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc42.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2472
  %i.cm = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 6
  br i1 %i.cm, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread61.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread61.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2472
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2472
  br label %.loopexit

.loopexit.loopexit.i:                             ; preds = %bb.ah, %bb.ab, %bb.y, %bb.v
  %lpad.loopexit80.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i35

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.ag, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp81.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i35

.loopexit.split-lp.i:                             ; preds = %bb.an, %bb.ai
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i35

.loopexit.i35:                                    ; preds = %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit80.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp81.i, %.loopexit.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.h, align 8, !noalias !2458
  %.not39.i = icmp eq i64 %.pr.i, 0
  br i1 %.not39.i, label %common.resume, label %bb.as

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i: ; preds = %bb.z
  %i.cn = load i32, ptr %i.cl, align 1
  %i.co = xor i32 %i.cn, 1684302184
  %i.cp = getelementptr i8, ptr %i.cl, i64 4
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i32
  %i.cs = xor i32 %i.cr, 28261
  %i.ct = or i32 %i.co, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %.not.i = icmp eq i32 %i.cv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2472
  br i1 %.not.i, label %bb.ac, label %bb.ab

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread57.i: ; preds = %bb.x
  %i.cw = load i64, ptr %i.h, align 8, !range !9, !noalias !2458, !noundef !6
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %bb.am, label %bb.an

bb.ab:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread61.i
  %i.cy = invoke fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.cd)
          to label %bb.al unwind label %.loopexit.loopexit.i, !noalias !2462 ; 2 uses

bb.ac:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i
  %i.cz = load i64, ptr %i.h, align 8, !range !9, !noalias !2458, !noundef !6
  %.not37.i = icmp eq i64 %i.cz, 0
  br i1 %.not37.i, label %bb.ad, label %bb.ai, !prof !16

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2458
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !2475, !noalias !2476, !noundef !6 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !2477, !noalias !2478 ; 2 uses
  %i.dc = icmp ult i64 %.promoted.i.i.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.ce, align 8, !alias.scope !2475, !noalias !2476, !nonnull !6, !noundef !6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i
  %i.de = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dh, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !2480, !noundef !6
  switch i8 %i.dg, label %bb.ag [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 58, label %bb.ah
  ], !prof !26

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.dh = add i64 %i.de, 1                        ; 3 uses
  store i64 %i.dh, ptr %i.cf, align 8, !alias.scope !2481, !noalias !2478
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dh, %i.db
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ae

.loopexit.i.i.i.i:                                ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2482
  store i64 3, ptr %i.b, align 8, !noalias !2482
  %i.di = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc43.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !2462

.noexc43.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2482
  br label %.loopexit84.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2482
  store i64 6, ptr %i.c, align 8, !noalias !2482
  %i.dj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc44.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !2462

.noexc44.i:                                       ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2482
  br label %.loopexit84.i

bb.ah:                                            ; preds = %bb.ae
  %i.dk = add i64 %i.de, 1
  store i64 %i.dk, ptr %i.cf, align 8, !alias.scope !2483, !noalias !2484
  invoke void @_RINvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBT_6string6StringbENtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB2H_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2a_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %.loopexit.loopexit.i, !noalias !2462

bb.ai:                                            ; preds = %bb.ac
  %i.dl = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 6)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !2462

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2a_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.g, align 8, !range !9, !noalias !2458
  %i.dm = trunc nuw i64 %.pre.i to i1
  %.pre = load ptr, ptr %i.bv, align 8, !noalias !2458 ; 3 uses
  br i1 %i.dm, label %.loopexit84.i, label %bb.aj

.loopexit84.i:                                    ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2a_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i, %.noexc43.i, %.noexc44.i
  %i.dn = phi ptr [ %i.dj, %.noexc44.i ], [ %i.di, %.noexc43.i ], [ %.pre, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2a_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.6.i)
  br label %.loopexit

bb.aj:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2a_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.0..sroa_idx.i, i64 16, i1 false), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2458
  %i.do = load i64, ptr %i.h, align 8, !range !9, !alias.scope !2485, !noalias !2458, !noundef !6
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %.thread.i, !noalias !2462

.thread.i:                                        ; preds = %bb.ak
  %i.dq = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.h, align 8, !noalias !2458
  store ptr %.pre, ptr %i.bw, align 8, !noalias !2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, i64 16, i1 false), !noalias !2458
  br label %bb.as

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.ak, %bb.aj
  store i64 1, ptr %i.h, align 8, !noalias !2458
  store ptr %.pre, ptr %i.bw, align 8, !noalias !2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.i, i64 16, i1 false), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.6.i)
  br label %.backedge

bb.al:                                            ; preds = %bb.ab
  %.not40.i = icmp eq ptr %i.cy, null
  br i1 %.not40.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i
  br label %bb.v

bb.am:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread57.i
  %.sroa.024.0.copyload.i = load ptr, ptr %i.bw, align 8, !noalias !2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx10.sroa_idx.i, i64 16, i1 false)
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read9SliceReadEEBd_.exit

bb.an:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtB25_14PathVisibilityNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread57.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2458
  invoke void @_RINvXNvNtNtCsd5bfvMOVH6k_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyINtNvXs3d_NtB28_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB28_11Deserialize11deserialize10MapVisitorNtNtB3D_6string6StringbEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 6)
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !2462

bb.ao:                                            ; preds = %bb.an
  %i.dr = load i64, ptr %i.f, align 8, !range !9, !noalias !2458, !noundef !6
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2458 ; 2 uses
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2458
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.433.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2458
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read9SliceReadEEBd_.exit

.loopexit:                                        ; preds = %bb.al, %bb.ai, %bb.w, %bb.aa, %bb.ap, %.loopexit84.i
  %.sroa.10.0 = phi ptr [ %i.du, %bb.ap ], [ %i.dn, %.loopexit84.i ], [ %i.ca, %bb.w ], [ %i.dl, %bb.ai ], [ %i.cl, %bb.aa ], [ %i.cy, %bb.al ] ; 2 uses
  %i.dv = load i64, ptr %i.h, align 8, !range !9, !noalias !2458, !noundef !6
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.ar, label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read9SliceReadEEBd_.exit

bb.ar:                                            ; preds = %.loopexit
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw), !noalias !2462
  br label %_RINvXs0_NvXNvNtCsbzNSmZPCnTx_10tgrep_core10visibilitys_1__NtBb_14PathVisibilityNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1h_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2V_4read9SliceReadEEBd_.exit

common.resume:                                    ; preds = %bb.au, %bb.p, %.loopexit.i35, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn51.i, %bb.as ], [ %lpad.phi.i, %.loopexit.i35 ], [ %i.eb, %bb.au ], [ %i.bi, %bb.p ]
  resume { ptr, i32 } %common.resume.op
end_hunk_5
