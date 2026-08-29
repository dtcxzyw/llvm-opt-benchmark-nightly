Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_capi.yara_x_capi.ad1ec96517ec14eb-cgu.12?download=true
inline.NumInlined: 205
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi:bb.a
  %i.cb = add i64 %i.bl, 4
  store i64 %i.cb, ptr %i.bf, align 8, !alias.scope !165, !noalias !152
  %.not.i56.2 = icmp eq i8 %i.ca, 108
  br i1 %.not.i56.2, label %.thread, label %bb.k, !prof !153

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !166
  store i64 5, ptr %i.o, align 8, !noalias !166
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !166
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !166
  store i64 9, ptr %i.n, align 8, !noalias !166
  %i.cd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !166
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit
  %i.ce = add i64 %i.bl, 1                        ; 4 uses
  store i64 %i.ce, ptr %i.bf, align 8, !alias.scope !168, !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %umax.i44 = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.bh) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177), !noalias !108
  %exitcond.not.i46.not = icmp ult i64 %i.ce, %i.bh
  br i1 %exitcond.not.i46.not, label %bb.m, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !180, !noundef !4
  %i.ch = add i64 %i.bl, 2                        ; 3 uses
  store i64 %i.ch, ptr %i.bf, align 8, !alias.scope !184, !noalias !185
  %.not.i47 = icmp eq i8 %i.cg, 114
  br i1 %.not.i47, label %bb.n, label %bb.r, !prof !153

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188), !noalias !108
  %exitcond.not.i46.1 = icmp eq i64 %i.ch, %umax.i44
  br i1 %exitcond.not.i46.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !190, !noundef !4
  %i.ck = add i64 %i.bl, 3                        ; 3 uses
  store i64 %i.ck, ptr %i.bf, align 8, !alias.scope !191, !noalias !185
  %.not.i47.1 = icmp eq i8 %i.cj, 117
  br i1 %.not.i47.1, label %bb.p, label %bb.r, !prof !153

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194), !noalias !108
  %exitcond.not.i46.2 = icmp eq i64 %i.ck, %umax.i44
  br i1 %exitcond.not.i46.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !196, !noundef !4
  %i.cn = add i64 %i.bl, 4
  store i64 %i.cn, ptr %i.bf, align 8, !alias.scope !197, !noalias !185
  %.not.i47.2 = icmp eq i8 %i.cm, 101
  br i1 %.not.i47.2, label %.thread, label %bb.r, !prof !153

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !198
  store i64 5, ptr %i.q, align 8, !noalias !198
  %i.co = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !198
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !198
  store i64 9, ptr %i.p, align 8, !noalias !198
  %i.cp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !198
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit
  %i.cq = add i64 %i.bl, 1                        ; 4 uses
  store i64 %i.cq, ptr %i.bf, align 8, !alias.scope !200, !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.bh) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209), !noalias !108
  %exitcond.not.i.not = icmp ult i64 %i.cq, %i.bh
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noalias !212, !noundef !4
  %i.ct = add i64 %i.bl, 2                        ; 3 uses
  store i64 %i.ct, ptr %i.bf, align 8, !alias.scope !216, !noalias !217
  %.not.i41 = icmp eq i8 %i.cs, 97
  br i1 %.not.i41, label %bb.u, label %bb.aa, !prof !153

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220), !noalias !108
  %exitcond.not.i.1 = icmp eq i64 %i.ct, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !222, !noundef !4
  %i.cw = add i64 %i.bl, 3                        ; 3 uses
  store i64 %i.cw, ptr %i.bf, align 8, !alias.scope !223, !noalias !217
  %.not.i41.1 = icmp eq i8 %i.cv, 108
  br i1 %.not.i41.1, label %bb.w, label %bb.aa, !prof !153

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226), !noalias !108
  %exitcond.not.i.2 = icmp eq i64 %i.cw, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !228, !noundef !4
  %i.cz = add i64 %i.bl, 4                        ; 3 uses
  store i64 %i.cz, ptr %i.bf, align 8, !alias.scope !229, !noalias !217
  %.not.i41.2 = icmp eq i8 %i.cy, 115
  br i1 %.not.i41.2, label %bb.y, label %bb.aa, !prof !153

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232), !noalias !108
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !234, !noundef !4
  %i.dc = add i64 %i.bl, 5
  store i64 %i.dc, ptr %i.bf, align 8, !alias.scope !235, !noalias !217
  %.not.i41.3 = icmp eq i8 %i.db, 101
  br i1 %.not.i41.3, label %.thread, label %bb.aa, !prof !153

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !236
  store i64 5, ptr %i.s, align 8, !noalias !236
  %i.dd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !236
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !236
  store i64 9, ptr %i.r, align 8, !noalias !236
  %i.de = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !236
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit
  %i.df = add i64 %i.bl, 1
  store i64 %i.df, ptr %i.bf, align 8, !alias.scope !238, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !132
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !108, !inline_history !133
  %i.dg = load i64, ptr %i.bd, align 8, !range !241, !noalias !132, !noundef !4 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit
  %i.dj = add i64 %i.bl, 1
  store i64 %i.dj, ptr %i.bf, align 8, !alias.scope !242, !noalias !108
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dk, align 8, !alias.scope !111, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !132
  call void @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !108, !inline_history !133
  %i.dl = load i64, ptr %i.bb, align 8, !range !245, !noalias !132, !noundef !4 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !132 ; 3 uses
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 8, !alias.scope !111, !noalias !108, !noundef !4
  %i.dr = add i8 %i.dq, -1                        ; 2 uses
  store i8 %i.dr, ptr %i.dp, align 8, !alias.scope !111, !noalias !108
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ay, label %bb.az, !prof !246

bb.ae:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.du = load i8, ptr %i.dt, align 8, !alias.scope !111, !noalias !108, !noundef !4
  %i.dv = add i8 %i.du, -1                        ; 2 uses
  store i8 %i.dv, ptr %i.dt, align 8, !alias.scope !111, !noalias !108
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.cc, label %bb.cd, !prof !246

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59
  %.sroa.0.1.i58.ph = phi ptr [ %i.cc, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59 ], [ %i.cd, %bb.k ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i58.ph, ptr %i.dx, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  br label %bb.ah

bb.ag:                                            ; preds = %.thread248, %.thread245
  %.sroa.24.sroa.23.sroa.0.0.in.in = phi i64 [ %.sroa.24.sroa.23.sroa.0.4.in.in, %.thread248 ], [ %.sroa.24.sroa.23.sroa.0.3.in.in, %.thread245 ]
  %.sroa.49.0 = phi i64 [ %.sroa.49.3, %.thread248 ], [ %.sroa.49.2, %.thread245 ]
  %.sroa.41.0 = phi i64 [ %.sroa.41.4, %.thread248 ], [ %.sroa.41.3, %.thread245 ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread248 ], [ %.sroa.0.3, %.thread245 ] ; 2 uses
  %i.dy = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.dy, label %._crit_edge, label %.thread, !prof !247

._crit_edge:                                      ; preds = %bb.ag
  %i.dz = inttoptr i64 %.sroa.41.0 to ptr
  br label %bb.eh

bb.ah:                                            ; preds = %bb.ei, %bb.cc, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50
  %.sroa.0.1.i49.ph = phi ptr [ %i.co, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50 ], [ %i.cp, %bb.r ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i49.ph, ptr %i.ea, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.dd, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.de, %bb.aa ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.eb, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.ec = load ptr, ptr %i.di, align 8, !noalias !132, !nonnull !4, !align !67, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !132
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.di, align 8, !noalias !132 ; 5 uses
  switch i64 %i.dg, label %default.unreachable614 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38
    i64 2, label %bb.ap
  ]

default.unreachable614:                           ; preds = %bb.ej, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ee = bitcast i64 %.sroa.4.0.copyload to double
  %i.ef = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eg = fcmp ueq double %i.ef, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !248
  br i1 %i.eg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i33 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i34 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i33, align 8, !alias.scope !254, !noalias !258
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i36481 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i35, align 8, !alias.scope !254, !noalias !258
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260), !noalias !108
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t), !noalias !261
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27: ; preds = %bb.ao, %bb.an
  %i.eh = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i36481, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i29 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i34, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i30 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !248
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i22 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38: ; preds = %bb.al, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27, %bb.ap
  %.sroa.24.sroa.23.sroa.0.1 = phi i64 [ %i.eh, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i29, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27 ], [ %.lobit.i.i22, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i30, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i27 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !132
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.ei, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !132
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !132 ; 8 uses
  %i.ej = trunc nuw i64 %i.dl to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  br i1 %i.ej, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !262
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !262
  %i.ek = load i64, ptr %i.b, align 8, !range !266, !noalias !262, !noundef !4
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !267, !noalias !262, !noundef !4 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.el, label %bb.at, label %bb.au, !prof !246

bb.at:                                            ; preds = %bb.as
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !262
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #25, !noalias !262
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.eq = load ptr, ptr %i.eo, align 8, !noalias !262, !nonnull !4, !noundef !4 ; 2 uses
  %i.er = icmp ule i64 %.sroa.4.0.copyload.i, %i.en
  call void @llvm.assume(i1 %i.er), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !262
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !268
  %i.es = load i64, ptr %i.a, align 8, !range !266, !noalias !268, !noundef !4
  %i.et = trunc nuw i64 %i.es to i1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !267, !noalias !268, !noundef !4 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.et, label %bb.aw, label %bb.ax, !prof !246

bb.aw:                                            ; preds = %bb.av
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !268
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ev, i64 %i.ex) #25, !noalias !268
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ey = load ptr, ptr %i.ew, align 8, !noalias !268, !nonnull !4, !noundef !4 ; 2 uses
  %i.ez = icmp ule i64 %.sroa.4.0.copyload.i, %i.ev
  call void @llvm.assume(i1 %i.ez), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.eq, %bb.au ], [ %i.ey, %bb.ax ] ; 2 uses
  %.sroa.24.sroa.23.sroa.0.2.in.in.ph = phi i64 [ %i.en, %bb.au ], [ %i.ev, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.do, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !108
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split, %bb.ax, %bb.au
  %.sroa.41.2.in = phi ptr [ %i.ey, %bb.ax ], [ %i.eq, %bb.au ], [ %.sink, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split ]
  %.sroa.24.2 = phi i64 [ %i.ev, %bb.ax ], [ %i.en, %bb.au ], [ %.sroa.24.sroa.23.sroa.0.2.in.in.ph, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split ]
  %.sroa.41.2 = ptrtoint ptr %.sroa.41.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !132
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !132
  store i64 24, ptr %i.ba, align 8, !noalias !132
  %i.fa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ba), !noalias !108, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !132
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.fc = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.fc, ptr %i.bf, align 8, !alias.scope !275, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !278
  store i64 0, ptr %i.v, align 8, !noalias !278
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8, !noalias !278
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %i.fe, align 8, !noalias !278
  %i.ff = icmp ult i64 %i.fc, %i.bh
  br i1 %i.ff, label %.lr.ph.i.i.i76.lr.ph, label %.loopexit22.i.i

.lr.ph.i.i.i76.lr.ph:                             ; preds = %bb.az
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i20 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3.i15.sroa.4.0..sroa.3.0..sroa_idx2.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i76.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCseRvVZ55ETAB_11yara_x_capi.exit.i
  %.promoted.i.i.i75297 = phi i64 [ %i.fc, %.lr.ph.i.i.i76.lr.ph ], [ %.promoted.i.i.i75, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCseRvVZ55ETAB_11yara_x_capi.exit.i ]
  %i.fg = phi i64 [ %i.bh, %.lr.ph.i.i.i76.lr.ph ], [ %i.gk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCseRvVZ55ETAB_11yara_x_capi.exit.i ] ; 4 uses
  %.sroa.5121.0296 = phi i1 [ true, %.lr.ph.i.i.i76.lr.ph ], [ false, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCseRvVZ55ETAB_11yara_x_capi.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !282), !noalias !285
  %i.fh = load ptr, ptr %i.bj, align 8, !alias.scope !286, !noalias !291, !nonnull !4, !noundef !4 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i.i76
  %i.fi = phi i64 [ %.promoted.i.i.i75297, %.lr.ph.i.i.i76 ], [ %i.fl, %bb.bb ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !285
  call void @llvm.experimental.noalias.scope.decl(metadata !302), !noalias !285
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !303, !noundef !4 ; 2 uses
  switch i8 %i.fk, label %bb.bc [
    i8 32, label %bb.bb
    i8 10, label %bb.bb
    i8 9, label %bb.bb
    i8 13, label %bb.bb
    i8 93, label %bb.bq
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.fl = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fl, ptr %i.bf, align 8, !alias.scope !304, !noalias !307
  %exitcond.not.i.i.i77 = icmp eq i64 %i.fl, %i.fg
  br i1 %exitcond.not.i.i.i77, label %.loopexit22.i.i, label %bb.ba

.loopexit22.i.i:                                  ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCseRvVZ55ETAB_11yara_x_capi.exit.i, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !308
  store i64 2, ptr %i.f, align 8, !noalias !308
  %i.fm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc79 unwind label %.loopexit.split-lp, !inline_history !309

.noexc79:                                         ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !308
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  br i1 %.sroa.5121.0296, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = icmp eq i8 %i.fk, 44
  br i1 %i.fn, label %bb.be, label %bb.bg, !prof !88

bb.be:                                            ; preds = %bb.bd
  %i.fo = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fo, ptr %i.bf, align 8, !alias.scope !310, !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !313), !noalias !285
  %i.fp = icmp ult i64 %i.fo, %i.fg
  br i1 %i.fp, label %.lr.ph.i7.i.i, label %.loopexit.i.i78

.lr.ph.i7.i.i:                                    ; preds = %bb.be, %bb.bf
  %i.fq = phi i64 [ %i.ft, %bb.bf ], [ %i.fo, %bb.be ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !316, !noundef !4
  switch i8 %i.fs, label %.loopexit [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 93, label %bb.bh
  ], !prof !324

bb.bf:                                            ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.ft = add i64 %i.fq, 1                        ; 3 uses
  store i64 %i.ft, ptr %i.bf, align 8, !alias.scope !325, !noalias !328
  %exitcond.not.i8.i.i = icmp eq i64 %i.ft, %i.fg
  br i1 %exitcond.not.i8.i.i, label %.loopexit.i.i78, label %.lr.ph.i7.i.i

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !308
  store i64 7, ptr %i.c, align 8, !noalias !308
  %i.fu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc80 unwind label %.loopexit.split-lp, !inline_history !309

.noexc80:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !308
  br label %bb.bj

.loopexit.i.i78:                                  ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !308
  store i64 5, ptr %i.d, align 8, !noalias !308
  %i.fv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc81 unwind label %.loopexit.split-lp, !inline_history !309

.noexc81:                                         ; preds = %.loopexit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !308
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !308
  store i64 21, ptr %i.e, align 8, !noalias !308
  %i.fw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc82 unwind label %.loopexit.split-lp, !inline_history !309

.noexc82:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !308
  br label %bb.bj

.loopexit:                                        ; preds = %.lr.ph.i7.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !329
  invoke fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #26
          to label %.noexc83 unwind label %.loopexit254, !inline_history !309

.noexc83:                                         ; preds = %.loopexit
  %i.fx = load i64, ptr %i.g, align 8, !range !5, !noalias !329, !noundef !4 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, -1
  %i.fz = load ptr, ptr %.sroa.4146.0..sroa_idx, align 8, !noalias !329 ; 2 uses
  br i1 %i.fy, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !329
  br label %bb.bj

.loopexit254:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i16

.loopexit.split-lp:                               ; preds = %.loopexit22.i.i, %bb.bg, %.loopexit.i.i78, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i16

.body.i16:                                        ; preds = %.loopexit254, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body.i17 = phi { ptr, i32 } [ %i.gf, %bb.bo ], [ %lpad.loopexit, %.loopexit254 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #22
          to label %common.resume unwind label %bb.br, !noalias !285, !inline_history !330

bb.bj:                                            ; preds = %.noexc79, %.noexc80, %.noexc82, %.noexc81, %bb.bi
  %.sroa.9124.0.ph = phi ptr [ %i.fz, %bb.bi ], [ %i.fm, %.noexc79 ], [ %i.fu, %.noexc80 ], [ %i.fw, %.noexc82 ], [ %i.fv, %.noexc81 ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i unwind label %bb.bk, !noalias !285, !inline_history !330

bb.bk:                                            ; preds = %bb.bj
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.bl, !noalias !285, !inline_history !330

bb.bl:                                            ; preds = %bb.bk
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !285, !inline_history !330
  unreachable

common.resume:                                    ; preds = %bb.by, %bb.ec, %bb.dx, %.body.i, %bb.ds, %bb.dt, %.body.i16, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %i.ld, %bb.ds ], [ %i.ga, %bb.bk ], [ %eh.lpad-body.i17, %.body.i16 ], [ %.pn.i4, %.body.i ], [ %i.li, %bb.dx ], [ %i.hg, %bb.by ], [ %i.le, %bb.dt ], [ %i.lv, %bb.ec ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.bj
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !285, !inline_history !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !278
  %.pre326 = load i64, ptr %i.bg, align 8, !alias.scope !331, !noalias !340
  %.promoted.i.i6.pre = load i64, ptr %i.bf, align 8, !alias.scope !344, !noalias !345
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit

bb.bm:                                            ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i15.sroa.4.0..sroa.3.0..sroa_idx2.i20.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5147.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !329
  store i64 %i.fx, ptr %i.u, align 8, !noalias !278
  store ptr %i.fz, ptr %.sroa.3.0..sroa_idx2.i20, align 8, !noalias !278
  %i.gc = load i64, ptr %i.fe, align 8, !alias.scope !346, !noalias !349, !noundef !4 ; 3 uses
  %i.gd = load i64, ptr %i.v, align 8, !range !351, !alias.scope !346, !noalias !349, !noundef !4
end_hunk_0
begin_hunk_1_@_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi:bb.a
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u) #22
          to label %.body.i16 unwind label %bb.bp, !noalias !285, !inline_history !330

bb.bp:                                            ; preds = %bb.bo
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !285, !inline_history !330
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.bn, %bb.bm
  %i.gh = load ptr, ptr %i.fd, align 8, !alias.scope !346, !noalias !349, !nonnull !4, !noundef !4
  %i.gi = getelementptr inbounds nuw [72 x i8], ptr %i.gh, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gi, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !285
  %i.gj = add i64 %i.gc, 1
  store i64 %i.gj, ptr %i.fe, align 8, !alias.scope !346, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !278
  %i.gk = load i64, ptr %i.bg, align 8, !alias.scope !353, !noalias !291, !noundef !4 ; 2 uses
  %.promoted.i.i.i75 = load i64, ptr %i.bf, align 8, !alias.scope !355, !noalias !307 ; 2 uses
  %i.gl = icmp ult i64 %.promoted.i.i.i75, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i.i76, label %.loopexit22.i.i

bb.bq:                                            ; preds = %bb.ba
  %.sroa.0126.0.copyload = load ptr, ptr %i.v, align 8, !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !278
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit

bb.br:                                            ; preds = %.body.i16
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !285, !inline_history !330
  unreachable

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i, %bb.bq
  %.promoted.i.i6 = phi i64 [ %.promoted.i.i6.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ %i.fi, %bb.bq ] ; 2 uses
  %i.gn = phi i64 [ %.pre326, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ %i.fg, %bb.bq ] ; 4 uses
  %.sroa.691.0 = phi ptr [ %.sroa.9124.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ %.sroa.0126.0.copyload, %bb.bq ]
  %.sroa.090.0 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ -9223372036854775804, %bb.bq ]
  %i.go = load i8, ptr %i.dp, align 8, !alias.scope !111, !noalias !108, !noundef !4
  %i.gp = add i8 %i.go, 1
  store i8 %i.gp, ptr %i.dp, align 8, !alias.scope !111, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !132
  store i64 %.sroa.090.0, ptr %i.ay, align 8, !noalias !132
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.sroa.691.0, ptr %.sroa.691.0..sroa_idx, align 8, !noalias !132
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !noalias !132
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358), !noalias !108
  %i.gq = icmp ult i64 %.promoted.i.i6, %i.gn
  br i1 %i.gq, label %.lr.ph.i.i9, label %.loopexit.i7

.lr.ph.i.i9:                                      ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit
  %i.gr = load ptr, ptr %i.bj, align 8, !alias.scope !331, !noalias !340, !nonnull !4, !noundef !4 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i9
  %i.gs = phi i64 [ %.promoted.i.i6, %.lr.ph.i.i9 ], [ %i.gv, %bb.bt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359), !noalias !108
  call void @llvm.experimental.noalias.scope.decl(metadata !360), !noalias !108
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !noalias !361, !noundef !4
  switch i8 %i.gu, label %bb.bu [
    i8 32, label %bb.bt
    i8 10, label %bb.bt
    i8 9, label %bb.bt
    i8 13, label %bb.bt
    i8 93, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit.thread
    i8 44, label %bb.bv
  ], !prof !103

bb.bt:                                            ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.gv = add i64 %i.gs, 1                        ; 3 uses
  store i64 %i.gv, ptr %i.bf, align 8, !alias.scope !362, !noalias !345
  %exitcond.not.i.i10 = icmp eq i64 %i.gv, %i.gn
  br i1 %exitcond.not.i.i10, label %.loopexit.i7, label %bb.bs

.loopexit.i7:                                     ; preds = %bb.bt, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !365
  store i64 2, ptr %i.w, align 8, !noalias !365
  %i.gw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc11 unwind label %bb.by

.noexc11:                                         ; preds = %.loopexit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !365
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !365
  store i64 22, ptr %i.x, align 8, !noalias !365
  %i.gx = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc12 unwind label %bb.by

.noexc12:                                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !365
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit

bb.bv:                                            ; preds = %bb.bs
  %i.gy = add i64 %i.gs, 1                        ; 3 uses
  store i64 %i.gy, ptr %i.bf, align 8, !alias.scope !366, !noalias !108
  call void @llvm.experimental.noalias.scope.decl(metadata !369), !noalias !108
  %i.gz = icmp ult i64 %i.gy, %i.gn
  br i1 %i.gz, label %.lr.ph.i12.i, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.bv, %bb.bw
  %i.ha = phi i64 [ %i.hd, %bb.bw ], [ %i.gy, %bb.bv ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !372, !noundef !4
  switch i8 %i.hc, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit16.thread.i [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 93, label %bb.bx
  ]

bb.bw:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.hd = add i64 %i.ha, 1                        ; 3 uses
  store i64 %i.hd, ptr %i.bf, align 8, !alias.scope !380, !noalias !383
  %exitcond.not.i13.i = icmp eq i64 %i.hd, %i.gn
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit16.thread.i: ; preds = %bb.bw, %.lr.ph.i12.i, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !365
  store i64 22, ptr %i.y, align 8, !noalias !365
  %i.he = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc13 unwind label %bb.by

.noexc13:                                         ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !365
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit

bb.bx:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !365
  store i64 21, ptr %i.z, align 8, !noalias !365
  %i.hf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc14 unwind label %bb.by

.noexc14:                                         ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !365
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit

bb.by:                                            ; preds = %bb.bx, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseRvVZ55ETAB_11yara_x_capi.exit16.thread.i, %bb.bu, %.loopexit.i7
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ay) #22
          to label %common.resume unwind label %bb.ca, !noalias !108, !inline_history !133

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %.noexc14, %.noexc13, %.noexc12, %.noexc11
  %.sroa.0.0.i8 = phi ptr [ %i.gx, %.noexc12 ], [ %i.hf, %.noexc14 ], [ %i.gw, %.noexc11 ], [ %i.he, %.noexc13 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !noalias !132
  %i.hh = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  store ptr %.sroa.0.0.i8, ptr %i.hh, align 8, !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !132
  %i.hi = load i64, ptr %i.az, align 8, !range !5, !noalias !132, !noundef !4
  %i.hj = icmp eq i64 %i.hi, -1
  br i1 %i.hj, label %bb.cb, label %bb.bz

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit.thread: ; preds = %bb.bs
  %i.hk = add i64 %i.gs, 1
  store i64 %i.hk, ptr %i.bf, align 8, !alias.scope !384, !noalias !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !132
  %i.hl = load i64, ptr %i.az, align 8, !range !5, !noalias !132, !noundef !4 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, -1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br i1 %i.hm, label %.thread365, label %.thread363

.thread365:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit.thread
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !132, !nonnull !4, !align !67, !noundef !4
  %i.hp = ptrtoint ptr %i.ho to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread245

.thread363:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit.thread
  %.sroa.24.0.copyload415 = load i64, ptr %i.hn, align 8, !noalias !132
  %.sroa.41.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.41.0.copyload419 = load i64, ptr %.sroa.41.0..sroa_idx418, align 8, !noalias !132
  %.sroa.49.0..sroa_idx422 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.49.0.copyload423 = load i64, ptr %.sroa.49.0..sroa_idx422, align 8, !noalias !132
  %.sroa.51.0..sroa_idx426 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx426, i64 40, i1 false), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread245

bb.bz:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit
  %i.hq = ptrtoint ptr %.sroa.0.0.i8 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.az), !noalias !108, !inline_history !133
  br label %.thread245

bb.ca:                                            ; preds = %bb.ec, %bb.by
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !108, !inline_history !133
  unreachable

.thread245:                                       ; preds = %.thread365, %.thread363, %bb.bz, %bb.cb
  %.sroa.24.sroa.23.sroa.0.3.in.in = phi i64 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread365 ], [ %.sroa.49.0.copyload423, %.thread363 ]
  %.sroa.49.2 = phi i64 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread365 ], [ %.sroa.41.0.copyload419, %.thread363 ]
  %.sroa.41.3 = phi i64 [ %i.hu, %bb.cb ], [ %i.hq, %bb.bz ], [ %i.hp, %.thread365 ], [ %.sroa.24.0.copyload415, %.thread363 ]
  %.sroa.0.3 = phi i64 [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %.thread365 ], [ %i.hl, %.thread363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !132
  br label %bb.ag

bb.cb:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseRvVZ55ETAB_11yara_x_capi.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !132, !nonnull !4, !align !67, !noundef !4
  %i.hu = ptrtoint ptr %i.ht to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECseRvVZ55ETAB_11yara_x_capi(ptr nonnull %.sroa.0.0.i8), !noalias !108, !inline_history !133
  br label %.thread245

bb.cc:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !132
  store i64 24, ptr %i.ax, align 8, !noalias !132
  %i.hv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax), !noalias !108, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !132
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hv, ptr %i.hw, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  br label %bb.ah

bb.cd:                                            ; preds = %bb.ae
  %i.hx = add i64 %i.bl, 1
  store i64 %i.hx, ptr %i.bf, align 8, !alias.scope !387, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %1, ptr %i.ao, align 8, !noalias !393
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i8 1, ptr %i.hy, align 8, !noalias !393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !398
  call fastcc void @_RINvNvXs9_NtCsbbTh99npV2h_10serde_json2deINtB8_9MapAccesspENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao), !noalias !400, !inline_history !401
  %i.hz = load i8, ptr %i.ad, align 8, !range !87, !noalias !398, !noundef !4
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !398, !nonnull !4, !align !67, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !398
  br label %bb.cp

bb.cf:                                            ; preds = %bb.cd
  %i.id = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !range !87, !noalias !398, !noundef !4
  %i.if = trunc nuw i8 %i.ie to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !398
  br i1 %i.if, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  %i.ig = load ptr, ptr %i.ao, align 8, !alias.scope !395, !noalias !402, !nonnull !4, !align !67, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409), !noalias !108
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 40 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !412, !noalias !415, !noundef !4
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ii, align 8, !alias.scope !412, !noalias !415
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i64 0, ptr %i.il, align 8, !alias.scope !419, !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !420
  call void @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ig), !noalias !415, !inline_history !401
  %i.im = load i64, ptr %i.ac, align 8, !range !245, !noalias !420, !noundef !4 ; 2 uses
  %i.in = icmp eq i64 %i.im, 2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !420 ; 4 uses
  br i1 %i.in, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !420 ; 8 uses
  %i.iq = trunc nuw i64 %i.im to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ip) ], !noalias !108
  br i1 %i.iq, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !421
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !425, !inline_history !401
  %i.ir = load i64, ptr %i.ab, align 8, !range !266, !noalias !421, !noundef !4
  %i.is = trunc nuw i64 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !range !267, !noalias !421, !noundef !4 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.is, label %bb.cj, label %bb.ck, !prof !246

bb.cj:                                            ; preds = %bb.ci
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !421
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.iu, i64 %i.iw) #25, !noalias !425, !inline_history !401
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.ix = load ptr, ptr %i.iv, align 8, !noalias !421, !nonnull !4, !noundef !4 ; 2 uses
  %i.iy = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.iu
  call void @llvm.assume(i1 %i.iy), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !421
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.cq, label %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !426
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !433, !inline_history !401
  %i.iz = load i64, ptr %i.aa, align 8, !range !266, !noalias !426, !noundef !4
  %i.ja = trunc nuw i64 %i.iz to i1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !range !267, !noalias !426, !noundef !4 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.ja, label %bb.cm, label %bb.cn, !prof !246

bb.cm:                                            ; preds = %bb.cl
  %i.je = load i64, ptr %i.jd, align 8, !noalias !426
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.jc, i64 %i.je) #25, !noalias !433, !inline_history !401
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.jf = load ptr, ptr %i.jd, align 8, !noalias !426, !nonnull !4, !noundef !4 ; 2 uses
  %i.jg = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.jc
  call void @llvm.assume(i1 %i.jg), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !426
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cq, label %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split.i.i.i.i.i

_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split.i.i.i.i.i: ; preds = %bb.cn, %bb.ck
  %.sink6.i.i.i.i.i = phi ptr [ %i.ix, %bb.ck ], [ %i.jf, %bb.cn ] ; 2 uses
  %.sink5.ph.i.i.i.i.i = phi i64 [ %i.iu, %bb.ck ], [ %i.jc, %bb.cn ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink6.i.i.i.i.i, ptr nonnull readonly align 1 %i.ip, i64 %.sroa.4.0.copyload.i.i.i.i.i, i1 false), !noalias !415
  br label %bb.cq

bb.co:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !420
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ip) ], !noalias !108
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ce, %bb.co
  %.sroa.893.0.ph = phi ptr [ %i.ip, %bb.co ], [ %i.ic, %bb.ce ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.893.0.ph, ptr %i.jh, align 8, !alias.scope !390, !noalias !434
  store i64 -1, ptr %i.aw, align 8, !alias.scope !390, !noalias !434
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit

bb.cq:                                            ; preds = %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split.i.i.i.i.i, %bb.cn, %bb.ck
  %.sroa.7.0.ph.i.i = phi ptr [ %.sink6.i.i.i.i.i, %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split.i.i.i.i.i ], [ %i.ix, %bb.ck ], [ %i.jf, %bb.cn ]
  %.sroa.0.0.ph.i.i = phi i64 [ %.sink5.ph.i.i.i.i.i, %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.sink.split.i.i.i.i.i ], [ %i.iu, %bb.ck ], [ %i.jc, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !393
  store i64 %.sroa.0.0.ph.i.i, ptr %i.an, align 8, !noalias !393
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !393
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !393
  %i.ji = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @9)
          to label %bb.cs unwind label %bb.dx, !noalias !435, !inline_history !401 ; 2 uses

bb.cr:                                            ; preds = %bb.cf
  %i.jj = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @9), !noalias !435, !inline_history !401 ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.jj, 0
  %i.jl = extractvalue { i64, i64 } %i.jj, 1
  store i64 0, ptr %i.aw, align 8, !noalias !434
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4108.0..sroa_idx, align 8, !noalias !434
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %.sroa.5109.0..sroa_idx, align 8, !noalias !434
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false), !noalias !434
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 %i.jk, ptr %.sroa.7111.0..sroa_idx, align 8, !noalias !434
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i64 %i.jl, ptr %.sroa.8112.0..sroa_idx, align 8, !noalias !434
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit

bb.cs:                                            ; preds = %bb.cq
  %i.jm = extractvalue { i64, i64 } %i.ji, 0
  %i.jn = extractvalue { i64, i64 } %i.ji, 1
  store i64 0, ptr %i.am, align 8, !noalias !393
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4114.0..sroa_idx, align 8, !noalias !393
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.5115.0..sroa_idx, align 8, !noalias !393
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false), !noalias !393
  %.sroa.7117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 %i.jm, ptr %.sroa.7117.0..sroa_idx, align 8, !noalias !393
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i64 %i.jn, ptr %.sroa.8118.0..sroa_idx, align 8, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !393
  invoke fastcc void @_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECseRvVZ55ETAB_11yara_x_capi.exit.i unwind label %bb.ct, !noalias !108, !inline_history !436

_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.cs
  %i.jo = load i64, ptr %i.aw, align 8, !range !5, !alias.scope !390, !noalias !434, !noundef !4
  %i.jp = icmp eq i64 %i.jo, -1
  br i1 %i.jp, label %bb.cu, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
end_hunk_1
begin_hunk_2_@_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !393
  invoke void @_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueE11insert_fullCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ah)
          to label %bb.dp unwind label %.loopexit255, !noalias !435, !inline_history !401

.loopexit268:                                     ; preds = %bb.dc, %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECseRvVZ55ETAB_11yara_x_capi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !393
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.jx, i64 72, i1 false), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !393
  %i.lb = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !484, !noalias !393, !noundef !4
  %i.lc = icmp eq i64 %i.lb, -1
  br i1 %i.lc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit19.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit19.i unwind label %.loopexit255, !noalias !435, !inline_history !401

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit19.i: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !393
  br label %bb.da

bb.dr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i, %.loopexit267
  invoke void @_RNvXsf_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6116.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i unwind label %bb.ds, !noalias !435, !inline_history !401

bb.ds:                                            ; preds = %bb.dr
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtBG_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am) #22
          to label %common.resume unwind label %bb.dv, !noalias !435, !inline_history !401

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i: ; preds = %bb.dr
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i.i unwind label %bb.dt, !noalias !435, !inline_history !401

bb.dt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %common.resume unwind label %bb.du, !noalias !435, !inline_history !401

bb.du:                                            ; preds = %bb.dt
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !435, !inline_history !401
  unreachable

bb.dv:                                            ; preds = %bb.ds
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !435, !inline_history !401
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am), !noalias !435, !inline_history !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !393
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit

bb.dw:                                            ; preds = %bb.dx, %.body.i, %bb.ct
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !435, !inline_history !401
  unreachable

bb.dx:                                            ; preds = %bb.cq
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #22
          to label %common.resume unwind label %bb.dw, !noalias !435, !inline_history !401

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.cp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEECseRvVZ55ETAB_11yara_x_capi.exit.i.i, %bb.cr, %.loopexit268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.lj = load i8, ptr %i.dt, align 8, !alias.scope !111, !noalias !108, !noundef !4
  %i.lk = add i8 %i.lj, 1
  store i8 %i.lk, ptr %i.dt, align 8, !alias.scope !111, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !noalias !132
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !490), !noalias !108
  %i.ll = load i64, ptr %i.bg, align 8, !alias.scope !493, !noalias !498, !noundef !4 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.bf, align 8, !alias.scope !502, !noalias !503 ; 2 uses
  %i.lm = icmp ult i64 %.promoted.i.i, %i.ll
  br i1 %i.lm, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit
  %i.ln = load ptr, ptr %i.bj, align 8, !alias.scope !493, !noalias !498, !nonnull !4, !noundef !4
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dz, %.lr.ph.i.i
  %i.lo = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.lr, %bb.dz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !108
  call void @llvm.experimental.noalias.scope.decl(metadata !505), !noalias !108
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !506, !noundef !4
  switch i8 %i.lq, label %bb.ea [
    i8 32, label %bb.dz
    i8 10, label %bb.dz
    i8 9, label %bb.dz
    i8 13, label %bb.dz
    i8 125, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit.thread
    i8 44, label %bb.eb
  ], !prof !103

bb.dz:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.lr = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lr, ptr %i.bf, align 8, !alias.scope !507, !noalias !503
  %exitcond.not.i.i = icmp eq i64 %i.lr, %i.ll
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.dy

.loopexit.i:                                      ; preds = %bb.dz, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECseRvVZ55ETAB_11yara_x_capi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !510
  store i64 3, ptr %i.ap, align 8, !noalias !510
  %i.ls = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %.noexc unwind label %bb.ec

.noexc:                                           ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !510
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !510
  store i64 22, ptr %i.aq, align 8, !noalias !510
  %i.lt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %.noexc1 unwind label %bb.ec

.noexc1:                                          ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !510
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !510
  store i64 21, ptr %i.ar, align 8, !noalias !510
  %i.lu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar)
          to label %.noexc2 unwind label %bb.ec

.noexc2:                                          ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !510
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %.loopexit.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.au) #22
          to label %common.resume unwind label %bb.ca, !noalias !108, !inline_history !133

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.lt, %.noexc1 ], [ %i.ls, %.noexc ], [ %i.lu, %.noexc2 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %.sroa.0.0.i, ptr %i.lw, align 8, !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !132
  %i.lx = load i64, ptr %i.av, align 8, !range !5, !noalias !132, !noundef !4
  %i.ly = icmp eq i64 %i.lx, -1
  br i1 %i.ly, label %bb.ee, label %bb.ed

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit.thread: ; preds = %bb.dy
  %i.lz = add i64 %i.lo, 1
  store i64 %i.lz, ptr %i.bf, align 8, !alias.scope !511, !noalias !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !132
  %i.ma = load i64, ptr %i.av, align 8, !range !5, !noalias !132, !noundef !4
  %i.mb = icmp eq i64 %i.ma, -1
  br i1 %i.mb, label %.thread369, label %.thread367

.thread369:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit.thread
  %i.mc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !132, !nonnull !4, !align !67, !noundef !4
  %i.me = ptrtoint ptr %i.md to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !132
  br label %.thread248

.thread367:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit.thread
  %.sroa.0.0.copyload413 = load i64, ptr %i.aw, align 8
  %.sroa.24.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.24.0.copyload417 = load i64, ptr %.sroa.24.0..sroa_idx416, align 8
  %.sroa.41.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.41.0.copyload421 = load i64, ptr %.sroa.41.0..sroa_idx420, align 8
  %.sroa.49.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.49.0.copyload425 = load i64, ptr %.sroa.49.0..sroa_idx424, align 8
  %.sroa.51.0..sroa_idx427 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx427, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !132
  br label %.thread248

bb.ed:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit
  %i.mf = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !132
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.av), !noalias !108, !inline_history !133
  br label %.thread248

.thread248:                                       ; preds = %.thread369, %.thread367, %bb.ed, %bb.ee
  %.sroa.24.sroa.23.sroa.0.4.in.in = phi i64 [ undef, %bb.ee ], [ undef, %bb.ed ], [ undef, %.thread369 ], [ %.sroa.49.0.copyload425, %.thread367 ]
  %.sroa.49.3 = phi i64 [ undef, %bb.ee ], [ undef, %bb.ed ], [ undef, %.thread369 ], [ %.sroa.41.0.copyload421, %.thread367 ]
  %.sroa.41.4 = phi i64 [ %i.mi, %bb.ee ], [ %i.mf, %bb.ed ], [ %i.me, %.thread369 ], [ %.sroa.24.0.copyload417, %.thread367 ]
  %.sroa.0.4 = phi i64 [ -1, %bb.ee ], [ -1, %bb.ed ], [ -1, %.thread369 ], [ %.sroa.0.0.copyload413, %.thread367 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !132
  br label %bb.ag

bb.ee:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseRvVZ55ETAB_11yara_x_capi.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !noalias !132, !nonnull !4, !align !67, !noundef !4
  %i.mi = ptrtoint ptr %i.mh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !132
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECseRvVZ55ETAB_11yara_x_capi(ptr nonnull %.sroa.0.0.i), !noalias !108, !inline_history !133
  br label %.thread248

bb.ef:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !132
  store i64 10, ptr %i.at, align 8, !noalias !132
  %i.mj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at), !noalias !108, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !132
  br label %bb.eh

bb.eg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !132
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !108, !inline_history !133
  %i.mk = load i64, ptr %i.bc, align 8, !range !241, !noalias !132, !noundef !4 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, -1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.ml, label %bb.ei, label %bb.ej

bb.eh:                                            ; preds = %._crit_edge, %bb.ef
  %i.mn = phi ptr [ %i.dz, %._crit_edge ], [ %i.mj, %bb.ef ]
  %i.mo = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECseRvVZ55ETAB_11yara_x_capi(ptr noalias noundef nonnull align 8 %i.mn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !108
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mo, ptr %i.mp, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  br label %bb.eo

bb.ei:                                            ; preds = %bb.eg
  %i.mq = load ptr, ptr %i.mm, align 8, !noalias !132, !nonnull !4, !align !67, !noundef !4
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mq, ptr %i.mr, align 8, !alias.scope !108, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !132
  br label %bb.ah

bb.ej:                                            ; preds = %bb.eg
  %.sroa.488.0.copyload = load i64, ptr %i.mm, align 8, !noalias !132 ; 5 uses
  switch i64 %i.mk, label %default.unreachable614 [
    i64 0, label %bb.ek
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit
    i64 2, label %bb.en
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.ms = bitcast i64 %.sroa.488.0.copyload to double
  %i.mt = tail call double @llvm.fabs.f64(double %i.ms)
  %i.mu = fcmp ueq double %i.mt, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !514
  br i1 %i.mu, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !520, !noalias !524
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i482 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !520, !noalias !524
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i

bb.em:                                            ; preds = %bb.ek
  store i64 -9223372036854775808, ptr %i.as, align 8, !noalias !514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526), !noalias !108
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.as), !noalias !527
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.em, %bb.el
  %i.mv = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i482, %bb.el ], [ %.sroa.488.0.copyload, %bb.em ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i, %bb.el ], [ 2, %bb.em ]
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.el ], [ -9223372036854775806, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !514
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit

bb.en:                                            ; preds = %bb.ej
  %.lobit.i.i = lshr i64 %.sroa.488.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.ej, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i, %bb.en
  %.sroa.24.sroa.23.sroa.0.5 = phi i64 [ %i.mv, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ %.sroa.488.0.copyload, %bb.en ], [ %.sroa.488.0.copyload, %bb.ej ]
  %.sroa.24.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ %.lobit.i.i, %bb.en ], [ 0, %bb.ej ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit.i ], [ -9223372036854775806, %bb.en ], [ -9223372036854775806, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !132
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.24.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38 ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.41.2, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit ], [ %.sroa.24.sroa.23.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38 ], [ %.sroa.24.sroa.23.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit ]
  %.sroa.41.6 = phi i64 [ %.sroa.41.0, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ %.sroa.24.2, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit ], [ %.sroa.24.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38 ], [ %.sroa.24.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECseRvVZ55ETAB_11yara_x_capi.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit38 ], [ %.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit ]
  store i64 %.sroa.0.6, ptr %0, align 8, !noalias !111
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.41.6, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !111
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.49.4, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !111
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.sroa.0.6, ptr %.sroa.49.0..sroa_idx, align 8, !noalias !111
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, i64 40, i1 false), !noalias !111
  br label %bb.eo

bb.eo:                                            ; preds = %.thread, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit

_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %.loopexit269, %bb.ah, %bb.eo
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCslcwApyVHiOd_7bincode2de5implsbINtB5_6DecodeuE6decodeQINtNtB5_7decoder11DecoderImplNtNtB5_4read11SliceReaderNtNtB7_6config13ConfigurationuEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXNtCslcwApyVHiOd_7bincode2deQINtNtB2_7decoder11DecoderImplNtNtB2_4read11SliceReaderNtNtB4_6config13ConfigurationuENtB2_7Decoder6readerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !528 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val5.i = load i64, ptr %i.c, align 8, !noalias !528, !noundef !4
  %.not.i.i.i = icmp eq i64 %.val5.i, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !531
  store i8 0, ptr %i.a, align 1, !noalias !531
  %i.d = tail call noundef nonnull align 8 ptr @_RNvXNtCslcwApyVHiOd_7bincode2deQINtNtB2_7decoder11DecoderImplNtNtB2_4read11SliceReaderNtNtB4_6config13ConfigurationuENtB2_7Decoder6readerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !528 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !533, !noalias !536, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !528, !nonnull !4, !noundef !4
  %i.h = load i8, ptr %.val.i, align 1, !noalias !528, !noundef !4
  %i.i = tail call noundef nonnull align 8 ptr @_RNvXNtCslcwApyVHiOd_7bincode2deQINtNtB2_7decoder11DecoderImplNtNtB2_4read11SliceReaderNtNtB4_6config13ConfigurationuENtB2_7Decoder6readerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !528 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !539, !noalias !528, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !539, !noalias !528, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.3.0.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 1)
  %.sroa.0.0.i.i = select i1 %i.m, ptr inttoptr (i64 1 to ptr), ptr %i.n
  store ptr %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !539, !noalias !528, !captures !542
  store i64 %.sroa.3.0.i.i, ptr %i.k, align 8, !alias.scope !539, !noalias !528
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !533, !noalias !536, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = add nsw i64 %i.f, -1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull %i.a, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15), !noalias !543
  store ptr %i.p, ptr %i.d, align 8, !alias.scope !533, !noalias !536, !captures !542
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !533, !noalias !536
  %i.r = load i8, ptr %i.a, align 1, !noalias !531, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !531
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !531
  store i8 0, ptr %0, align 8
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.819.0.ph = phi i8 [ %i.h, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  switch i8 %.sroa.819.0.ph, label %bb.g [
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  store i8 7, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.819.0.ph, ptr %.sroa.47.0..sroa_idx, align 1
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.s, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.t, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x2res1_1__NtB5_10BckCodeLocNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB1Y_2de7decoder11DecoderImplNtNtB35_4read11SliceReaderNtNtB1Y_6config13ConfigurationuEEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvNtCs7gfv9tzbXmh_6yara_x2res1_1__NtB48_10BckCodeLocNtB2Q_11Deserialize11deserialize9___VisitorECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 10)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x2res_1__NtB5_10FwdCodeLocNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB1X_2de7decoder11DecoderImplNtNtB34_4read11SliceReaderNtNtB1X_6config13ConfigurationuEEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvNtCs7gfv9tzbXmh_6yara_x2res_1__NtB48_10FwdCodeLocNtB2Q_11Deserialize11deserialize9___VisitorECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atomss_1__NtB5_4AtomNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB24_2de7decoder11DecoderImplNtNtB3b_4read11SliceReaderNtNtB24_6config13ConfigurationuEEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atomss_1__NtB40_4AtomNtB2Q_11Deserialize11deserialize9___VisitorECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @8, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCslcwApyVHiOd_7bincode2de5implstINtB8_6DecodeuE6decodeQINtNtB8_7decoder11DecoderImplNtNtB8_4read11SliceReaderNtNtBa_6config13ConfigurationuEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXNtCslcwApyVHiOd_7bincode2deQINtNtB2_7decoder11DecoderImplNtNtB2_4read11SliceReaderNtNtB4_6config13ConfigurationuENtB2_7Decoder6readerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned17varint_decode_u16NtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCslcwApyVHiOd_7bincode2de5implsmINtB8_6DecodeuE6decodeQINtNtB8_7decoder11DecoderImplNtNtB8_4read11SliceReaderNtNtBa_6config13ConfigurationuEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXNtCslcwApyVHiOd_7bincode2deQINtNtB2_7decoder11DecoderImplNtNtB2_4read11SliceReaderNtNtB4_6config13ConfigurationuENtB2_7Decoder6readerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned17varint_decode_u32NtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCslcwApyVHiOd_7bincode2de5implsyINtB8_6DecodeuE6decodeQINtNtB8_7decoder11DecoderImplNtNtB8_4read11SliceReaderNtNtBa_6config13ConfigurationuEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXNtCslcwApyVHiOd_7bincode2deQINtNtB2_7decoder11DecoderImplNtNtB2_4read11SliceReaderNtNtB4_6config13ConfigurationuENtB2_7Decoder6readerCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15decode_unsigned17varint_decode_u64NtNtNtB6_2de4read11SliceReaderECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !67, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !550, !noalias !555, !noundef !4 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !559, !noalias !560 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !550, !noalias !555, !nonnull !4, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !563, !noundef !4
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !475

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !564, !noalias !560
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !544
  store i64 3, ptr %i.a, align 8, !noalias !544
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !544
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !544
  store i64 6, ptr %i.b, align 8, !noalias !544
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !544
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

end_hunk_2
begin_hunk_3_@_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCseRvVZ55ETAB_11yara_x_capi:bb.a
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_pattern_identifier(ptr noundef captures(address, read_provenance) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke { ptr, i64 } @_RNvMsb_NtCs7gfv9tzbXmh_6yara_x6modelsNtB5_7Pattern10identifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = extractvalue { ptr, i64 } %i.c, 0
  store ptr %i.e, ptr %1, align 8
  %i.f = invoke { ptr, i64 } @_RNvMsb_NtCs7gfv9tzbXmh_6yara_x6modelsNtB5_7Pattern10identifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  store i64 %i.g, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  invoke void @_RINvCseRvVZ55ETAB_11yara_x_capi19__yrx_set_last_errorNtNtCsexYYUdYSQU6_5alloc6string6StringEB2_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.sroa.0.0 = phi i32 [ 0, %bb.g ], [ 5, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_pattern_iter_matches(ptr nofree noundef readonly captures(address, read_provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %._crit_edge20.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMsb_NtCs7gfv9tzbXmh_6yara_x6modelsNtB5_7Pattern7matches(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.not.i18 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i18, label %._crit_edge20.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload.fr = freeze ptr %.sroa.6.0.copyload
  %.not8.i = icmp eq ptr %.sroa.6.0.copyload.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = icmp eq ptr %.sroa.0.0.copyload, %.sroa.5.0.copyload
  %or.cond = select i1 %.not8.i, i1 true, i1 %i.f
  br i1 %or.cond, label %._crit_edge20.split, label %.lr.ph22

._crit_edge20.split:                              ; preds = %.lr.ph22, %bb.d, %.lr.ph, %bb.a
  %.sroa.0.0 = phi i32 [ 5, %bb.a ], [ 0, %bb.d ], [ 0, %.lr.ph ], [ 0, %.lr.ph22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0

.lr.ph22:                                         ; preds = %.lr.ph, %.lr.ph22
  %.sroa.0.0141921 = phi ptr [ %i.g, %.lr.ph22 ], [ %.sroa.0.0.copyload, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0141921, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0141921, i64 8
  %.val12 = load i64, ptr %i.h, align 8, !alias.scope !773, !noundef !4 ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0141921, i64 16
  %.val13 = load i64, ptr %i.i, align 8, !alias.scope !776, !noundef !4
  %.sroa.05.0 = call i64 @llvm.usub.sat.i64(i64 %.val13, i64 %.val12)
  store i64 %.val12, ptr %i.a, align 8
  store i64 %.sroa.05.0, ptr %i.e, align 8
  call void %1(ptr noundef nonnull %i.a, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp eq ptr %i.g, %.sroa.5.0.copyload
  br i1 %i.j, label %._crit_edge20.split, label %.lr.ph22
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_rule_identifier(ptr noundef captures(address, read_provenance) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke { ptr, i64 } @_RNvMNtCs7gfv9tzbXmh_6yara_x6modelsNtB2_4Rule10identifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = extractvalue { ptr, i64 } %i.c, 0
  store ptr %i.e, ptr %1, align 8
  %i.f = invoke { ptr, i64 } @_RNvMNtCs7gfv9tzbXmh_6yara_x6modelsNtB2_4Rule10identifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  store i64 %i.g, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  invoke void @_RINvCseRvVZ55ETAB_11yara_x_capi19__yrx_set_last_errorNtNtCsexYYUdYSQU6_5alloc6string6StringEB2_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.sroa.0.0 = phi i32 [ 0, %bb.g ], [ 5, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_rule_iter_metadata(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !67, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !67, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.o
  %i.q = icmp ult i64 %i.o, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.o, ptr %.sroa.7.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.712.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit67, %bb.b
  %.sroa.711.0 = phi ptr [ undef, %bb.b ], [ %.sroa.711.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit67 ] ; 6 uses
  %.sroa.09.0 = phi i64 [ undef, %bb.b ], [ %.sroa.09.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs1_NtCs7gfv9tzbXmh_6yara_x6modelsNtB5_8MetadataNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.r, align 8, !range !779, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.aa, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.s, align 8, !noundef !4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs0_NvMs_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtBa_7CString3newReNtB5_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.i unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.sroa.0.0 = phi i32 [ 0, %bb.g ], [ 5, %bb.a ]
  ret i32 %.sroa.0.0

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.ad = load i64, ptr %i.e, align 8, !range !452, !alias.scope !780, !noalias !783, !noundef !4
  %.not.i58 = icmp eq i64 %i.ad, -1
  br i1 %.not.i58, label %bb.n, label %bb.j, !prof !88

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !783
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25
          to label %bb.l unwind label %bb.k, !noalias !780

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #22
          to label %.body59 unwind label %bb.m, !noalias !780

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !780
  unreachable

.body59:                                          ; preds = %.body, %bb.k
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.t, align 8, !alias.scope !780, !noalias !783, !nonnull !4, !noundef !4 ; 5 uses
  %i.ah = load i64, ptr %i.u, align 8, !alias.scope !780, !noalias !783, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i8 %i.aa, label %default.unreachable [
    i8 0, label %bb.s
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.sroa.09.0.insert.ext = zext i8 %.sroa.4.0.copyload to i64
  %.sroa.09.0.insert.mask = and i64 %.sroa.09.0, -256
  %.sroa.09.0.insert.insert = or disjoint i64 %.sroa.09.0.insert.mask, %.sroa.09.0.insert.ext
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ai = inttoptr i64 %.sroa.55.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs0_NvMs_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtBa_7CString3newReNtB5_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.9.0.copyload)
          to label %bb.t unwind label %bb.ab

bb.r:                                             ; preds = %bb.n
  %i.aj = inttoptr i64 %.sroa.55.0.copyload to ptr
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %bb.p, %bb.o
  %.sroa.053.0 = phi i32 [ 4, %bb.r ], [ 1, %bb.o ], [ 2, %bb.p ], [ 0, %bb.n ]
  %.sroa.711.1 = phi ptr [ %i.aj, %bb.r ], [ %.sroa.711.0, %bb.o ], [ %.sroa.711.0, %bb.p ], [ %.sroa.711.0, %bb.n ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.9.0.copyload, %bb.r ], [ %.sroa.55.0.copyload, %bb.o ], [ %.sroa.09.0.insert.insert, %bb.p ], [ %.sroa.55.0.copyload, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ag, ptr %i.c, align 8
  store i32 %.sroa.053.0, ptr %i.x, align 8
  store i64 %.sroa.09.1, ptr %i.y, align 8
  store ptr %.sroa.711.1, ptr %.sroa.712.0..sroa_idx13, align 8
  call void %1(ptr noundef nonnull %i.c, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.ak = load i64, ptr %i.d, align 8, !range !452, !alias.scope !786, !noalias !789, !noundef !4
  %.not.i = icmp eq i64 %i.ak, -1
  br i1 %.not.i, label %bb.y, label %bb.u, !prof !88

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !789
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
          to label %bb.w unwind label %bb.v, !noalias !786

bb.v:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #22
          to label %.body unwind label %bb.x, !noalias !786

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !786
  unreachable

bb.y:                                             ; preds = %bb.t
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !786, !noalias !789, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %i.w, align 8, !alias.scope !786, !noalias !789, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ag, ptr %i.c, align 8
  store i32 3, ptr %i.x, align 8
  store i64 %i.ap, ptr %i.y, align 8
  store ptr %.sroa.711.0, ptr %.sroa.712.0..sroa_idx13, align 8
  call void %1(ptr noundef nonnull %i.c, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.an, align 1
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef range(i64 1, 0) %i.ao, i64 noundef 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.z, %bb.y, %bb.s
  %.sroa.711.3 = phi ptr [ %.sroa.711.1, %bb.s ], [ %.sroa.711.0, %bb.y ], [ %.sroa.711.0, %bb.z ]
  %.sroa.09.3 = phi i64 [ %.sroa.09.1, %bb.s ], [ %i.ap, %bb.y ], [ %i.ap, %bb.z ]
  store i8 0, ptr %i.ag, align 1
  %i.ar = icmp eq i64 %i.ah, 0
  br i1 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit67, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit67

bb.ab:                                            ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.v, %bb.ab
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi(ptr nonnull %i.ag, i64 %i.ah) #22
  br label %.body59

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit67: ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_rule_iter_patterns(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !792, !noalias !795, !nonnull !4, !align !67, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !797, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load i64, ptr %i.g, align 8, !noalias !797, !noundef !4 ; 3 uses
  %.idx = mul nuw nsw i64 %i.h, 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  %i.j = icmp ult i64 %i.h, 768614336404564651
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !alias.scope !792, !noalias !795, !nonnull !4, !align !67, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !792, !noalias !795, !align !67, !noundef !4
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.o = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.p = insertelement <2 x ptr> %i.o, ptr %i.l, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader.lr.ph
  %i.q = phi ptr [ %i.f, %.lr.ph.i.preheader.lr.ph ], [ %i.r, %.lr.ph.i.backedge ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.t = load i8, ptr %i.s, align 1, !range !87, !noalias !798, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %.split.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp eq ptr %i.r, %i.i
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.c, %.split.i
  br label %.lr.ph.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load i8, ptr %i.w, align 4, !range !802, !noalias !798, !noundef !4
  %i.y = load <2 x i32>, ptr %i.q, align 4, !noalias !798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x ptr> %i.p, ptr %i.a, align 16
  %i.z = shufflevector <2 x i32> %i.y, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.z, ptr %.sroa.514.0..sroa_idx, align 16
  store i8 %i.x, ptr %.sroa.716.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.817.0..sroa_idx, align 1
  call void %1(ptr noundef nonnull %i.a, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = icmp eq ptr %i.r, %i.i
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.backedge

.loopexit:                                        ; preds = %.split.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 5, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.split.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_rule_iter_tags(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !67, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !67, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %.idx = shl nuw nsw i64 %i.k, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.m = icmp ult i64 %i.k, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit
  %.sroa.4.015 = phi ptr [ %i.i, %.lr.ph ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 4 ; 2 uses
  %i.t = load i32, ptr %.sroa.4.015, align 4, !noalias !803, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  store i32 %i.t, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = invoke { ptr, i64 } @_RNvMs6_NtCs7gfv9tzbXmh_6yara_x6modelsNtB5_3Tag10identifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.e unwind label %bb.c       ; 2 uses

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 5, %bb.a ], [ 0, %bb.b ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit ]
  ret i32 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  invoke void @_RNvXs0_NvMs_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtBa_7CString3newReNtB5_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.w)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.x = load i64, ptr %i.b, align 8, !range !452, !alias.scope !806, !noalias !809, !noundef !4
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.k, label %bb.g, !prof !88

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !809
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25
          to label %bb.i unwind label %bb.h, !noalias !806

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #22
          to label %.body unwind label %bb.j, !noalias !806

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !806
  unreachable

.body:                                            ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.p, align 8, !alias.scope !806, !noalias !809, !nonnull !4, !noundef !4 ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !alias.scope !806, !noalias !809, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void %1(ptr noundef nonnull %i.aa, ptr noundef %2) #21
  store i8 0, ptr %i.aa, align 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.ab, i64 noundef 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = icmp eq ptr %i.s, %i.l
  br i1 %i.ad, label %.loopexit, label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, 6) i32 @yrx_rule_namespace(ptr noundef captures(address, read_provenance) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_3
