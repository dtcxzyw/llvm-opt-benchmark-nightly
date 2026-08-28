Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cargo_metadata-9b4eaf2ee17d4271.cargo_metadata.d7efd57ed8733e7d-cgu.0?download=true
inline.NumInlined: 1022
inline.NumDeleted: 398
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvXs5_NtCs8yjYO7b73r2_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata:bb.a

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1192, !noundef !5
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !1193, !noalias !1180
  %.not.i.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2, label %.thread, label %bb.k, !prof !1181

_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1194
  store i64 5, ptr %i.o, align 8, !noalias !1194
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !1195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1194
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1194
  store i64 9, ptr %i.n, align 8, !noalias !1194
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !1195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1194
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsixqsALXRULh_14cargo_metadata.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %umax.i43 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %exitcond.not.i45.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i45.not, label %bb.m, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1208, !noundef !5
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !1212, !noalias !1213
  %.not.i46 = icmp eq i8 %i.bc, 114
  br i1 %.not.i46, label %bb.n, label %bb.r, !prof !1181

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %exitcond.not.i45.1 = icmp eq i64 %i.bd, %umax.i43
  br i1 %exitcond.not.i45.1, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1218, !noundef !5
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !1219, !noalias !1213
  %.not.i46.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i46.1, label %bb.p, label %bb.r, !prof !1181

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %exitcond.not.i45.2 = icmp eq i64 %i.bg, %umax.i43
  br i1 %exitcond.not.i45.2, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1224, !noundef !5
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !1225, !noalias !1213
  %.not.i46.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i46.2, label %.thread, label %bb.r, !prof !1181

_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1226
  store i64 5, ptr %i.m, align 8, !noalias !1226
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1226
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1226
  store i64 9, ptr %i.l, align 8, !noalias !1226
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1226
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsixqsALXRULh_14cargo_metadata.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !1228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %umax.i52 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %exitcond.not.i54.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i54.not, label %bb.t, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1240, !noundef !5
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !1244, !noalias !1245
  %.not.i55 = icmp eq i8 %i.bo, 97
  br i1 %.not.i55, label %bb.u, label %bb.aa, !prof !1181

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %exitcond.not.i54.1 = icmp eq i64 %i.bp, %umax.i52
  br i1 %exitcond.not.i54.1, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1250, !noundef !5
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !1251, !noalias !1245
  %.not.i55.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i55.1, label %bb.w, label %bb.aa, !prof !1181

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %exitcond.not.i54.2 = icmp eq i64 %i.bs, %umax.i52
  br i1 %exitcond.not.i54.2, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !1256, !noundef !5
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !1257, !noalias !1245
  %.not.i55.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i55.2, label %bb.y, label %bb.aa, !prof !1181

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %exitcond.not.i54.3 = icmp eq i64 %i.bv, %umax.i52
  br i1 %exitcond.not.i54.3, label %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !1262, !noundef !5
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !1263, !noalias !1245
  %.not.i55.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i55.3, label %.thread, label %bb.aa, !prof !1181

_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1264
  store i64 5, ptr %i.k, align 8, !noalias !1264
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1264
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1264
  store i64 9, ptr %i.j, align 8, !noalias !1264
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1264
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsixqsALXRULh_14cargo_metadata.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !1266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.cc = load i64, ptr %i.z, align 8, !range !1133, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsixqsALXRULh_14cargo_metadata.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !1269
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.ch = load i64, ptr %i.x, align 8, !range !246, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsixqsALXRULh_14cargo_metadata.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !range !154, !noundef !5
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.az, label %bb.ay

bb.ae:                                            ; preds = %_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsixqsALXRULh_14cargo_metadata.exit
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !range !154, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.cb, label %bb.ca

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ay, %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.az, %bb.k ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.thread127, %.thread124
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread127 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread124 ] ; 2 uses
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread127 ], [ %.sroa.45.2, %.thread124 ]
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread127 ], [ %.sroa.37.3, %.thread124 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread127 ], [ %.sroa.0.3, %.thread124 ] ; 2 uses
  %i.cs = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.cs, label %._crit_edge, label %.thread, !prof !1272

._crit_edge:                                      ; preds = %bb.ag
  %i.ct = inttoptr i64 %.sroa.22.sroa.21.sroa.0.0.in.in to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cc, %bb.bq, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %bb.cv

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49
  %.sroa.0.1.i48.ph = phi ptr [ %i.bk, %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49 ], [ %i.bl, %bb.r ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph, ptr %i.cu, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58
  %.sroa.0.1.i57.ph = phi ptr [ %i.bz, %_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58 ], [ %i.ca, %bb.aa ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph, ptr %i.cv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cw = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !134, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.ce, align 8 ; 5 uses
  switch i64 %i.cc, label %default.unreachable256 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit
    i64 2, label %bb.ap
  ]

default.unreachable256:                           ; preds = %bb.cp, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.cy = bitcast i64 %.sroa.2.0.copyload to double
  %i.cz = tail call double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ueq double %i.cz, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1273
  br i1 %i.da, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !1279, !noalias !1283
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i223 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !1279, !noalias !1283
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.i, align 8, !noalias !1273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !1286
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i

_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i: ; preds = %bb.ao, %bb.an
  %i.db = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i223, %bb.an ], [ %.sroa.2.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1273
  br label %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit

_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit: ; preds = %bb.al, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i, %bb.ap
  %.sroa.22.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i ], [ %.lobit.i.i, %bb.ap ], [ 0, %bb.al ]
  %.sroa.37.1 = phi i64 [ %i.db, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i ], [ %.sroa.2.0.copyload, %bb.ap ], [ %.sroa.2.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.dc, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %i.dd = trunc nuw i64 %i.ch to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  br i1 %i.dd, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1287
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1287
  %i.de = load i64, ptr %i.b, align 8, !range !30, !noalias !1287, !noundef !5
  %i.df = trunc nuw i64 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !1291, !noalias !1287, !noundef !5 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.df, label %bb.at, label %bb.au, !prof !1139

bb.at:                                            ; preds = %bb.as
  %i.dj = load i64, ptr %i.di, align 8, !noalias !1287
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dh, i64 %i.dj) #20, !noalias !1287
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dk = load ptr, ptr %i.di, align 8, !noalias !1287, !nonnull !5, !noundef !5 ; 2 uses
  %i.dl = icmp ule i64 %.sroa.4.0.copyload, %i.dh
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1287
  %.not.i159 = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i159, label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit, label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1292
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1292
  %i.dm = load i64, ptr %i.a, align 8, !range !30, !noalias !1292, !noundef !5
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !1291, !noalias !1292, !noundef !5 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dn, label %bb.aw, label %bb.ax, !prof !1139

bb.aw:                                            ; preds = %bb.av
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !1292
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dp, i64 %i.dr) #20, !noalias !1292
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ds = load ptr, ptr %i.dq, align 8, !noalias !1292, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = icmp ule i64 %.sroa.4.0.copyload, %i.dp
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1292
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit, label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.sink.split

_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dk, %bb.au ], [ %i.ds, %bb.ax ] ; 2 uses
  %.sroa.22.sroa.21.sroa.0.2.in.in.ph = phi i64 [ %i.dh, %bb.au ], [ %i.dp, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.ck, i64 %.sroa.4.0.copyload, i1 false), !noalias !5
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit

_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit: ; preds = %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.sink.split, %bb.ax, %bb.au
  %.sroa.22.sroa.21.sroa.0.2.in.in = phi i64 [ %i.dp, %bb.ax ], [ %i.dh, %bb.au ], [ %.sroa.22.sroa.21.sroa.0.2.in.in.ph, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.sink.split ]
  %.sroa.37.2.in = phi ptr [ %i.ds, %bb.ax ], [ %i.dk, %bb.au ], [ %.sink, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !noundef !5
  %i.dw = add i8 %i.dv, -1                        ; 2 uses
  store i8 %i.dw, ptr %i.du, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.bq, label %bb.az, !prof !1139

bb.az:                                            ; preds = %bb.ay, %bb.ad
  %i.dy = add i64 %i.ah, 1
  store i64 %i.dy, ptr %i.ab, align 8, !alias.scope !1299
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1302
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.dz, align 8, !noalias !1302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1302
  store i64 0, ptr %i.g, align 8, !noalias !1302
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !noalias !1302
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.eb, align 8, !noalias !1302
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bo, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1309), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1313
  invoke fastcc void @_RINvNvXs7_NtCs8yjYO7b73r2_10serde_json2deINtB8_9SeqAccesspENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc unwind label %bb.bf, !inline_history !1316

.noexc:                                           ; preds = %bb.ba
  %i.ed = load i8, ptr %i.d, align 8, !range !154, !noalias !1313, !noundef !5
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1313, !nonnull !5, !align !134, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1313
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc
  %i.eh = load i8, ptr %i.ec, align 1, !range !154, !noalias !1313, !noundef !5
  %i.ei = trunc nuw i8 %i.eh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1313
  br i1 %i.ei, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1313
  %i.ej = load ptr, ptr %i.h, align 8, !alias.scope !1317, !noalias !1318, !nonnull !5, !align !134, !noundef !5
  invoke fastcc void @_RINvXs5_NtCs8yjYO7b73r2_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ej) #19
          to label %.noexc80 unwind label %bb.bf, !inline_history !1316

.noexc80:                                         ; preds = %bb.bd
  %i.ek = load i64, ptr %i.c, align 8, !range !32, !noalias !1313, !noundef !5 ; 2 uses
  %i.el = icmp eq i64 %i.ek, -1
  %i.em = load ptr, ptr %.sroa.496.0..sroa_idx, align 8, !noalias !1313 ; 2 uses
  br i1 %i.el, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1313
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bl, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.bf ], [ %i.et, %bb.bl ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #16
          to label %common.resume unwind label %bb.bp, !noalias !1312, !inline_history !1319

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.990.0.ph = phi ptr [ %i.em, %bb.be ], [ %i.eg, %bb.bb ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECsixqsALXRULh_14cargo_metadata.exit unwind label %bb.bh, !noalias !1312

bb.bh:                                            ; preds = %bb.bg
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bi, !noalias !1312

bb.bi:                                            ; preds = %bb.bh
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !1312
  unreachable

common.resume:                                    ; preds = %bb.cf, %bb.bt, %.body, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.eo, %bb.bh ], [ %i.gd, %bb.cf ], [ %i.fh, %bb.bt ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECsixqsALXRULh_14cargo_metadata.exit: ; preds = %bb.bg
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !1312
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsixqsALXRULh_14cargo_metadata.exit

bb.bj:                                            ; preds = %.noexc80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.597.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1313
  store i64 %i.ek, ptr %i.f, align 8, !noalias !1302
  store ptr %i.em, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !1302
  %i.eq = load i64, ptr %i.eb, align 8, !alias.scope !1320, !noalias !1323, !noundef !5 ; 3 uses
  %i.er = load i64, ptr %i.g, align 8, !range !1325, !alias.scope !1320, !noalias !1323, !noundef !5
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8yjYO7b73r2_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bo unwind label %bb.bl, !noalias !1323

bb.bl:                                            ; preds = %bb.bk
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f) #16
          to label %.body unwind label %bb.bm, !noalias !1312

bb.bm:                                            ; preds = %bb.bl
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !1312
  unreachable

bb.bn:                                            ; preds = %bb.bc
  %.sroa.091.0.copyload = load ptr, ptr %i.g, align 8, !noalias !1302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !noalias !1326
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsixqsALXRULh_14cargo_metadata.exit

bb.bo:                                            ; preds = %bb.bk, %bb.bj
  %i.ev = load ptr, ptr %i.ea, align 8, !alias.scope !1320, !noalias !1323, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw [72 x i8], ptr %i.ev, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ew, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !1312
  %i.ex = add i64 %i.eq, 1
  store i64 %i.ex, ptr %i.eb, align 8, !alias.scope !1320, !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1302
  br label %bb.ba

bb.bp:                                            ; preds = %.body
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !1312, !inline_history !1319
  unreachable

_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsixqsALXRULh_14cargo_metadata.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECsixqsALXRULh_14cargo_metadata.exit, %bb.bn
  %.sroa.688.0 = phi ptr [ %.sroa.990.0.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.091.0.copyload, %bb.bn ]
  %.sroa.087.0 = phi i64 [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECsixqsALXRULh_14cargo_metadata.exit ], [ -9223372036854775804, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ez = load i8, ptr %i.cl, align 8, !range !154, !noundef !5
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 24, ptr %i.w, align 8
  %i.fb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fb, ptr %i.fc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.br:                                            ; preds = %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsixqsALXRULh_14cargo_metadata.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !noundef !5
  %i.ff = add i8 %i.fe, 1
  store i8 %i.ff, ptr %i.fd, align 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsixqsALXRULh_14cargo_metadata.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.087.0, ptr %i.u, align 8
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.688.0, ptr %.sroa.688.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  %i.fg = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.bu unwind label %bb.bt     ; 5 uses

bb.bt:                                            ; preds = %bb.bs
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8yjYO7b73r2_10serde_json5value5ValueNtNtB11_5error5ErrorEECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #16
          to label %common.resume unwind label %bb.by

bb.bu:                                            ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCs8yjYO7b73r2_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata:bb.a
  %.sroa.37.0.copyload167.a = load i64, ptr %.sroa.37.0..sroa_idx166.a, align 8
  %.sroa.45.0..sroa_idx170.a = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.45.0.copyload171.a = load i64, ptr %.sroa.45.0..sroa_idx170.a, align 8
  %.sroa.47.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx174, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread124

bb.bw:                                            ; preds = %bb.bu
  %i.fl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !5, !align !134, !noundef !5
  %i.fn = ptrtoint ptr %i.fm to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not131 = icmp eq ptr %i.fg, null
  br i1 %.not131, label %.thread124, label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.fo = ptrtoint ptr %i.fg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(72) %i.v)
  br label %.thread124

bb.by:                                            ; preds = %bb.cf, %bb.bt
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread124:                                       ; preds = %.thread152, %bb.bx, %bb.bz, %bb.bw
  %.sroa.22.sroa.21.sroa.0.3.in.in = phi i64 [ %i.fn, %bb.bw ], [ %i.fn, %bb.bz ], [ %.sroa.22.0.copyload163, %.thread152 ], [ %i.fo, %bb.bx ]
  %.sroa.45.2 = phi i64 [ undef, %bb.bw ], [ undef, %bb.bz ], [ %.sroa.45.0.copyload171.a, %.thread152 ], [ undef, %bb.bx ]
  %.sroa.37.3 = phi i64 [ undef, %bb.bw ], [ undef, %bb.bz ], [ %.sroa.37.0.copyload167.a, %.thread152 ], [ undef, %bb.bx ]
  %.sroa.0.3 = phi i64 [ -1, %bb.bw ], [ -1, %bb.bz ], [ %i.fj, %.thread152 ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ag

bb.bz:                                            ; preds = %bb.bw
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5error5ErrorECsixqsALXRULh_14cargo_metadata(ptr nonnull %i.fg)
  br label %.thread124

bb.ca:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !noundef !5
  %i.fs = add i8 %i.fr, -1                        ; 2 uses
  store i8 %i.fs, ptr %i.fq, align 1
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.cc, label %bb.cb, !prof !1139

bb.cb:                                            ; preds = %bb.ca, %bb.ae
  %i.fu = add i64 %i.ah, 1
  store i64 %i.fu, ptr %i.ab, align 8, !alias.scope !1327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true)
  %i.fv = load i8, ptr %i.co, align 8, !range !154, !noundef !5
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 24, ptr %i.t, align 8
  %i.fx = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %i.fy, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.cd:                                            ; preds = %bb.cb
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !noundef !5
  %i.gb = add i8 %i.ga, 1
  store i8 %i.gb, ptr %i.fz, align 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  %i.gc = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.cg unwind label %bb.cf     ; 5 uses

bb.cf:                                            ; preds = %bb.ce
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8yjYO7b73r2_10serde_json5value5ValueNtNtB11_5error5ErrorEECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #16
          to label %common.resume unwind label %bb.by

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %i.gc, ptr %i.ge, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gf = load i64, ptr %i.r, align 8, !range !32, !noundef !5
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not = icmp eq ptr %i.gc, null
  br i1 %.not, label %.thread154, label %bb.cj

.thread154:                                       ; preds = %bb.ch
  %.sroa.0.0.copyload161 = load i64, ptr %i.s, align 8
  %.sroa.22.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.22.0.copyload165 = load i64, ptr %.sroa.22.0..sroa_idx164, align 8
  %.sroa.37.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.37.0.copyload169 = load i64, ptr %.sroa.37.0..sroa_idx168, align 8
  %.sroa.45.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.45.0.copyload173 = load i64, ptr %.sroa.45.0..sroa_idx172, align 8
  %.sroa.47.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx175, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread127

bb.ci:                                            ; preds = %bb.cg
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !5, !align !134, !noundef !5
  %i.gj = ptrtoint ptr %i.gi to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not130 = icmp eq ptr %i.gc, null
  br i1 %.not130, label %.thread127, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.gk = ptrtoint ptr %i.gc to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r)
  br label %.thread127

.thread127:                                       ; preds = %.thread154, %bb.cj, %bb.ck, %bb.ci
  %.sroa.22.sroa.21.sroa.0.4.in.in = phi i64 [ %i.gj, %bb.ci ], [ %i.gj, %bb.ck ], [ %.sroa.22.0.copyload165, %.thread154 ], [ %i.gk, %bb.cj ]
  %.sroa.45.3 = phi i64 [ undef, %bb.ci ], [ undef, %bb.ck ], [ %.sroa.45.0.copyload173, %.thread154 ], [ undef, %bb.cj ]
  %.sroa.37.4 = phi i64 [ undef, %bb.ci ], [ undef, %bb.ck ], [ %.sroa.37.0.copyload169, %.thread154 ], [ undef, %bb.cj ]
  %.sroa.0.4 = phi i64 [ -1, %bb.ci ], [ -1, %bb.ck ], [ %.sroa.0.0.copyload161, %.thread154 ], [ -1, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.ck:                                            ; preds = %bb.ci
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5error5ErrorECsixqsALXRULh_14cargo_metadata(ptr nonnull %i.gc)
  br label %.thread127

bb.cl:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 10, ptr %i.p, align 8
  %i.gl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call fastcc void @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext true)
  %i.gm = load i64, ptr %i.y, align 8, !range !1133, !noundef !5 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, -1
  %i.go = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.gn, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge, %bb.cl
  %i.gp = phi ptr [ %i.ct, %._crit_edge ], [ %i.gl, %bb.cl ]
  %i.gq = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8yjYO7b73r2_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsixqsALXRULh_14cargo_metadata(ptr noalias noundef nonnull align 8 %i.gp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gq, ptr %i.gr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %i.gs = load ptr, ptr %i.go, align 8, !nonnull !5, !align !134, !noundef !5
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gt, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ah

bb.cp:                                            ; preds = %bb.cm
  %.sroa.285.0.copyload = load i64, ptr %i.go, align 8 ; 5 uses
  switch i64 %i.gm, label %default.unreachable256 [
    i64 0, label %bb.cq
    i64 1, label %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79
    i64 2, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.gu = bitcast i64 %.sroa.285.0.copyload to double
  %i.gv = tail call double @llvm.fabs.f64(double %i.gu)
  %i.gw = fcmp ueq double %i.gv, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1330
  br i1 %i.gw, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5.0..sroa_idx4.i.i74 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i75 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i74, align 8, !alias.scope !1336, !noalias !1340
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i77224 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i76, align 8, !alias.scope !1336, !noalias !1340
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68

bb.cs:                                            ; preds = %bb.cq
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !1343
  br label %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68

_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68: ; preds = %bb.cs, %bb.cr
  %i.gx = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i77224, %bb.cr ], [ %.sroa.285.0.copyload, %bb.cs ]
  %.sroa.5.sroa.0.0.i.i70 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i75, %bb.cr ], [ 2, %bb.cs ]
  %.sroa.0.0.i.i71 = phi i64 [ -9223372036854775808, %bb.cr ], [ -9223372036854775806, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1330
  br label %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79

bb.ct:                                            ; preds = %bb.cp
  %.lobit.i.i63 = lshr i64 %.sroa.285.0.copyload, 63
  br label %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79

_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79: ; preds = %bb.cp, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68, %bb.ct
  %.sroa.22.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i70, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68 ], [ %.lobit.i.i63, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.37.5 = phi i64 [ %i.gx, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68 ], [ %.sroa.285.0.copyload, %bb.ct ], [ %.sroa.285.0.copyload, %bb.cp ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i71, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit.i68 ], [ -9223372036854775806, %bb.ct ], [ -9223372036854775806, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.22.sroa.0.6 = phi i64 [ %.sroa.22.sroa.21.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ %.sroa.22.sroa.21.sroa.0.2.in.in, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.22.sroa.0.1, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.22.sroa.0.5, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79 ]
  %.sroa.45.4 = phi i64 [ %.sroa.45.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit ], [ undef, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit ], [ undef, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79 ]
  %.sroa.37.6 = phi i64 [ %.sroa.37.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.37.2, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.37.1, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.37.5, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79 ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.0.1, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit ], [ %.sroa.0.5, %_RINvMs2_NtCs8yjYO7b73r2_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserialize12ValueVisitorECsixqsALXRULh_14cargo_metadata.exit79 ]
  store i64 %.sroa.0.6, ptr %0, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.22.sroa.0.6, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.37.6, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.45.4, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, i64 40, i1 false)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cn, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8yjYO7b73r2_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_mapINtNvXs3d_NtB1j_5implsINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapppENtB1j_11Deserialize11deserialize10MapVisitorNtNtB2O_6string6StringINtNtB2O_3vec3VecB4p_EEECsixqsALXRULh_14cargo_metadata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.sroa.7.i = alloca [24 x i8], align 8  ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1347, !noalias !1352, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !1344, !noalias !1356 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1347, !noalias !1352, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.w = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !1359, !noundef !5
  switch i8 %i.y, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !273

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !1360, !noalias !1356
  %exitcond.not.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 5, ptr %i.p, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !154, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ae = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !noundef !5
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.ac, label %bb.g, !prof !1139

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aj = add i64 %i.w, 1
  store i64 %i.aj, ptr %i.q, align 8, !alias.scope !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %1, ptr %i.l, align 8, !noalias !1366
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 1, ptr %i.ak, align 8, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1366
  store ptr null, ptr %i.k, align 8, !noalias !1366
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.al, align 8, !noalias !1366
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsixqsALXRULh_14cargo_metadata.exit.i, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1379
  invoke fastcc void @_RINvNvXs9_NtCs8yjYO7b73r2_10serde_json2deINtB8_9MapAccesspENtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc.i unwind label %.loopexit.i19, !noalias !1383

.noexc.i:                                         ; preds = %bb.h
  %i.ao = load i8, ptr %i.e, align 8, !range !154, !noalias !1379, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1379, !nonnull !5, !align !134, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1379
  br label %.loopexit29.i

bb.j:                                             ; preds = %.noexc.i
  %i.as = load i8, ptr %i.am, align 1, !range !154, !noalias !1379, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1379
  br i1 %i.at, label %bb.k, label %.loopexit30.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1379
  %i.au = load ptr, ptr %i.l, align 8, !alias.scope !1384, !noalias !1385, !nonnull !5, !align !134, !noundef !5 ; 7 uses
  invoke void @_RINvXs6_NtNtCsjQbM3MYDIrM_10serde_core2de5implsNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs8yjYO7b73r2_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsixqsALXRULh_14cargo_metadata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %.noexc4.i unwind label %.loopexit.i19, !noalias !1383

.noexc4.i:                                        ; preds = %bb.k
  %i.av = load i64, ptr %i.d, align 8, !range !4, !noalias !1379, !noundef !5 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -1
  %i.ax = load ptr, ptr %i.an, align 8, !noalias !1386 ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1379
  br label %.loopexit29.i

bb.m:                                             ; preds = %.noexc4.i
  %.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1387
  store i64 %i.av, ptr %i.g, align 8, !noalias !1387
  store ptr %i.ax, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !1387
  store i64 %.sroa.14.0.copyload.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !1387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1387
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1394, !noalias !1399, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !1405, !noalias !1406 ; 2 uses
  %i.bb = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !1394, !noalias !1399, !nonnull !5, !noundef !5
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i
  %i.be = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bh, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !1409, !noundef !5
  switch i8 %i.bg, label %bb.p [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 58, label %bb.q
  ], !prof !273

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bh = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bh, ptr %i.ay, align 8, !alias.scope !1410, !noalias !1406
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.ba
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.n

end_hunk_1
