Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.08?download=true
inline.NumInlined: 1697
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskIqAKC4t9Ft_2yr:bb.a
  %i.bg = add i64 %i.aq, 4
  store i64 %i.bg, ptr %i.ak, align 8, !alias.scope !994, !noalias !981
  %.not.i48.2 = icmp eq i8 %i.bf, 108
  br i1 %.not.i48.2, label %.thread, label %bb.k, !prof !982

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !995
  store i64 5, ptr %i.i, align 8, !noalias !995
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !995
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !995
  store i64 9, ptr %i.h, align 8, !noalias !995
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !995
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.bj = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bj, ptr %i.ak, align 8, !alias.scope !997, !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %umax.i36 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006), !noalias !937
  %exitcond.not.i38.not = icmp ult i64 %i.bj, %i.am
  br i1 %exitcond.not.i38.not, label %bb.m, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1009, !noundef !21
  %i.bm = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !1013, !noalias !1014
  %.not.i39 = icmp eq i8 %i.bl, 114
  br i1 %.not.i39, label %bb.n, label %bb.r, !prof !982

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017), !noalias !937
  %exitcond.not.i38.1 = icmp eq i64 %i.bm, %umax.i36
  br i1 %exitcond.not.i38.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1019, !noundef !21
  %i.bp = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bp, ptr %i.ak, align 8, !alias.scope !1020, !noalias !1014
  %.not.i39.1 = icmp eq i8 %i.bo, 117
  br i1 %.not.i39.1, label %bb.p, label %bb.r, !prof !982

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023), !noalias !937
  %exitcond.not.i38.2 = icmp eq i64 %i.bp, %umax.i36
  br i1 %exitcond.not.i38.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1025, !noundef !21
  %i.bs = add i64 %i.aq, 4
  store i64 %i.bs, ptr %i.ak, align 8, !alias.scope !1026, !noalias !1014
  %.not.i39.2 = icmp eq i8 %i.br, 101
  br i1 %.not.i39.2, label %.thread, label %bb.r, !prof !982

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1027
  store i64 5, ptr %i.k, align 8, !noalias !1027
  %i.bt = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1027
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1027
  store i64 9, ptr %i.j, align 8, !noalias !1027
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1027
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.bv = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bv, ptr %i.ak, align 8, !alias.scope !1029, !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.am) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038), !noalias !937
  %exitcond.not.i.not = icmp ult i64 %i.bv, %i.am
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !1041, !noundef !21
  %i.by = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.by, ptr %i.ak, align 8, !alias.scope !1045, !noalias !1046
  %.not.i33 = icmp eq i8 %i.bx, 97
  br i1 %.not.i33, label %bb.u, label %bb.aa, !prof !982

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049), !noalias !937
  %exitcond.not.i.1 = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !1051, !noundef !21
  %i.cb = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.cb, ptr %i.ak, align 8, !alias.scope !1052, !noalias !1046
  %.not.i33.1 = icmp eq i8 %i.ca, 108
  br i1 %.not.i33.1, label %bb.w, label %bb.aa, !prof !982

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055), !noalias !937
  %exitcond.not.i.2 = icmp eq i64 %i.cb, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !1057, !noundef !21
  %i.ce = add i64 %i.aq, 4                        ; 3 uses
  store i64 %i.ce, ptr %i.ak, align 8, !alias.scope !1058, !noalias !1046
  %.not.i33.2 = icmp eq i8 %i.cd, 115
  br i1 %.not.i33.2, label %bb.y, label %bb.aa, !prof !982

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059), !noalias !937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061), !noalias !937
  %exitcond.not.i.3 = icmp eq i64 %i.ce, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !1063, !noundef !21
  %i.ch = add i64 %i.aq, 5
  store i64 %i.ch, ptr %i.ak, align 8, !alias.scope !1064, !noalias !1046
  %.not.i33.3 = icmp eq i8 %i.cg, 101
  br i1 %.not.i33.3, label %.thread, label %bb.aa, !prof !982

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1065
  store i64 5, ptr %i.m, align 8, !noalias !1065
  %i.ci = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1065
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1065
  store i64 9, ptr %i.l, align 8, !noalias !1065
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1065
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.ck = add i64 %i.aq, 1
  store i64 %i.ck, ptr %i.ak, align 8, !alias.scope !1067, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !961
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !937, !inline_history !962
  %i.cl = load i64, ptr %i.ai, align 8, !range !38, !noalias !961, !noundef !21 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.co = add i64 %i.aq, 1
  store i64 %i.co, ptr %i.ak, align 8, !alias.scope !1070, !noalias !937
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cp, align 8, !alias.scope !940, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !961
  call void @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !937, !inline_history !962
  %i.cq = load i64, ptr %i.ag, align 8, !range !93, !noalias !961, !noundef !21 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !961 ; 3 uses
  br i1 %i.cr, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 8, !alias.scope !940, !noalias !937, !noundef !21
  %i.cw = add i8 %i.cv, -1                        ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 8, !alias.scope !940, !noalias !937
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.ay, label %bb.az, !prof !13

bb.ae:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 8, !alias.scope !940, !noalias !937, !noundef !21
  %i.da = add i8 %i.cz, -1                        ; 2 uses
  store i8 %i.da, ptr %i.cy, align 8, !alias.scope !940, !noalias !937
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.cc, label %bb.cd, !prof !13

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51
  %.sroa.0.1.i50.ph = phi ptr [ %i.bh, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51 ], [ %i.bi, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i50.ph, ptr %i.dc, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  br label %bb.ah

bb.ag:                                            ; preds = %.thread138, %.thread135
  %.sroa.24.sroa.23.sroa.0.0.in.in = phi i64 [ %.sroa.24.sroa.23.sroa.0.4.in.in, %.thread138 ], [ %.sroa.24.sroa.23.sroa.0.3.in.in, %.thread135 ] ; 3 uses
  %.sroa.49.0 = phi i64 [ %.sroa.49.3, %.thread138 ], [ %.sroa.49.2, %.thread135 ]
  %.sroa.41.0 = phi i64 [ %.sroa.41.4, %.thread138 ], [ %.sroa.41.3, %.thread135 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread138 ], [ %.sroa.0.3, %.thread135 ] ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.dd, label %._crit_edge, label %.thread, !prof !1073

._crit_edge:                                      ; preds = %bb.ag
  %i.de = inttoptr i64 %.sroa.24.sroa.23.sroa.0.0.in.in to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cc, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42
  %.sroa.0.1.i41.ph = phi ptr [ %i.bt, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42 ], [ %i.bu, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i41.ph, ptr %i.df, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ci, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cj, %bb.aa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dg, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.cn, align 8, !noalias !961, !nonnull !21, !align !22, !noundef !21
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !961
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cn, align 8, !noalias !961 ; 5 uses
  switch i64 %i.cl, label %default.unreachable404 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30
    i64 2, label %bb.ap
  ]

default.unreachable404:                           ; preds = %bb.cp, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dj = bitcast i64 %.sroa.4.0.copyload to double
  %i.dk = tail call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ueq double %i.dk, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1074
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i25 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i26 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i25, align 8, !alias.scope !1080, !noalias !1084
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i28311 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27, align 8, !alias.scope !1080, !noalias !1084
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !1074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086), !noalias !937
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !noalias !1087
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19: ; preds = %bb.ao, %bb.an
  %i.dm = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i28311, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i21 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i26, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i22 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1074
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i14 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30: ; preds = %bb.al, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19, %bb.ap
  %.sroa.24.sroa.23.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i21, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i21, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ %.lobit.i.i14, %bb.ap ], [ 0, %bb.al ]
  %.sroa.41.1 = phi i64 [ %i.dm, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i22, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !961
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.dn, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !961
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !961 ; 8 uses
  %i.do = trunc nuw i64 %i.cq to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  br i1 %i.do, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1088
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1088
  %i.dp = load i64, ptr %i.b, align 8, !range !101, !noalias !1088, !noundef !21
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !1092, !noalias !1088, !noundef !21 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dq, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.du = load i64, ptr %i.dt, align 8, !noalias !1088
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ds, i64 %i.du) #28, !noalias !1088
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dv = load ptr, ptr %i.dt, align 8, !noalias !1088, !nonnull !21, !noundef !21 ; 2 uses
  %i.dw = icmp ule i64 %.sroa.4.0.copyload.i, %i.ds
  call void @llvm.assume(i1 %i.dw), !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1088
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1093
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1093
  %i.dx = load i64, ptr %i.a, align 8, !range !101, !noalias !1093, !noundef !21
  %i.dy = trunc nuw i64 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !1092, !noalias !1093, !noundef !21 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dy, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !1093
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ea, i64 %i.ec) #28, !noalias !1093
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ed = load ptr, ptr %i.eb, align 8, !noalias !1093, !nonnull !21, !noundef !21 ; 2 uses
  %i.ee = icmp ule i64 %.sroa.4.0.copyload.i, %i.ea
  call void @llvm.assume(i1 %i.ee), !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1093
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.sink.split

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dv, %bb.au ], [ %i.ed, %bb.ax ] ; 2 uses
  %.sroa.24.sroa.23.sroa.0.2.in.in.ph = phi i64 [ %i.ds, %bb.au ], [ %i.ea, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.ct, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !937
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.sink.split, %bb.ax, %bb.au
  %.sroa.24.sroa.23.sroa.0.2.in.in = phi i64 [ %i.ea, %bb.ax ], [ %i.ds, %bb.au ], [ %.sroa.24.sroa.23.sroa.0.2.in.in.ph, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.sink.split ] ; 2 uses
  %.sroa.41.2.in = phi ptr [ %i.ed, %bb.ax ], [ %i.dv, %bb.au ], [ %.sink, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.sink.split ]
  %.sroa.41.2 = ptrtoint ptr %.sroa.41.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !961
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !961
  store i64 24, ptr %i.af, align 8, !noalias !961
  %i.ef = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af), !noalias !937, !inline_history !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !961
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.eg, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.eh = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.eh, ptr %i.ak, align 8, !alias.scope !1100, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1103
  store i64 0, ptr %i.p, align 8, !noalias !1103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ei, align 8, !noalias !1103
  %i.ej = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 0, ptr %i.ej, align 8, !noalias !1103
  %i.ek = icmp ult i64 %i.eh, %i.am
  br i1 %i.ek, label %.lr.ph.i.i.i.lr.ph, label %.loopexit22.i.i

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.az
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %.promoted.i.i.i162 = phi i64 [ %i.eh, %.lr.ph.i.i.i.lr.ph ], [ %.promoted.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskIqAKC4t9Ft_2yr.exit.i ]
  %i.el = phi i64 [ %i.am, %.lr.ph.i.i.i.lr.ph ], [ %i.fp, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskIqAKC4t9Ft_2yr.exit.i ] ; 4 uses
  %.sroa.5.0161 = phi i1 [ true, %.lr.ph.i.i.i.lr.ph ], [ false, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskIqAKC4t9Ft_2yr.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1107), !noalias !1110
  %i.em = load ptr, ptr %i.ao, align 8, !alias.scope !1111, !noalias !1116, !nonnull !21, !noundef !21 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i.i
  %i.en = phi i64 [ %.promoted.i.i.i162, %.lr.ph.i.i.i ], [ %i.eq, %bb.bb ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1126), !noalias !1110
  call void @llvm.experimental.noalias.scope.decl(metadata !1127), !noalias !1110
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !1128, !noundef !21 ; 2 uses
  switch i8 %i.ep, label %bb.bc [
    i8 32, label %bb.bb
    i8 10, label %bb.bb
    i8 9, label %bb.bb
    i8 13, label %bb.bb
    i8 93, label %bb.bq
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.eq = add i64 %i.en, 1                        ; 3 uses
  store i64 %i.eq, ptr %i.ak, align 8, !alias.scope !1129, !noalias !1132
  %exitcond.not.i.i.i = icmp eq i64 %i.eq, %i.el
  br i1 %exitcond.not.i.i.i, label %.loopexit22.i.i, label %bb.ba

.loopexit22.i.i:                                  ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskIqAKC4t9Ft_2yr.exit.i, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1133
  store i64 2, ptr %i.f, align 8, !noalias !1133
  %i.er = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc56 unwind label %.loopexit.split-lp, !inline_history !1134

.noexc56:                                         ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1133
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  br i1 %.sroa.5.0161, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = icmp eq i8 %i.ep, 44
  br i1 %i.es, label %bb.be, label %bb.bg, !prof !680

bb.be:                                            ; preds = %bb.bd
  %i.et = add i64 %i.en, 1                        ; 3 uses
  store i64 %i.et, ptr %i.ak, align 8, !alias.scope !1135, !noalias !1133
  call void @llvm.experimental.noalias.scope.decl(metadata !1138), !noalias !1110
  %i.eu = icmp ult i64 %i.et, %i.el
  br i1 %i.eu, label %.lr.ph.i7.i.i, label %.loopexit.i.i

.lr.ph.i7.i.i:                                    ; preds = %bb.be, %bb.bf
  %i.ev = phi i64 [ %i.ey, %bb.bf ], [ %i.et, %bb.be ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !1141, !noundef !21
  switch i8 %i.ex, label %.loopexit [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 93, label %bb.bh
  ], !prof !1149

bb.bf:                                            ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.ey = add i64 %i.ev, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.ak, align 8, !alias.scope !1150, !noalias !1153
  %exitcond.not.i8.i.i = icmp eq i64 %i.ey, %i.el
  br i1 %exitcond.not.i8.i.i, label %.loopexit.i.i, label %.lr.ph.i7.i.i

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1133
  store i64 7, ptr %i.c, align 8, !noalias !1133
  %i.ez = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc57 unwind label %.loopexit.split-lp, !inline_history !1134

.noexc57:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1133
  br label %bb.bj

.loopexit.i.i:                                    ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1133
  store i64 5, ptr %i.d, align 8, !noalias !1133
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc58 unwind label %.loopexit.split-lp, !inline_history !1134

.noexc58:                                         ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1133
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1133
  store i64 21, ptr %i.e, align 8, !noalias !1133
  %i.fb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc59 unwind label %.loopexit.split-lp, !inline_history !1134

.noexc59:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  br label %bb.bj

.loopexit:                                        ; preds = %.lr.ph.i7.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1154
  invoke fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #29
          to label %.noexc60 unwind label %.loopexit144, !inline_history !1134

.noexc60:                                         ; preds = %.loopexit
  %i.fc = load i64, ptr %i.g, align 8, !range !330, !noalias !1154, !noundef !21 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, -1
  %i.fe = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !1154 ; 2 uses
  br i1 %i.fd, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1154
  br label %bb.bj

.loopexit144:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %.loopexit22.i.i, %bb.bg, %.loopexit.i.i, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit144, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fk, %bb.bo ], [ %lpad.loopexit, %.loopexit144 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %common.resume unwind label %bb.br, !noalias !1110, !inline_history !1155

bb.bj:                                            ; preds = %.noexc56, %.noexc57, %.noexc59, %.noexc58, %bb.bi
  %.sroa.973.0.ph = phi ptr [ %i.fe, %bb.bi ], [ %i.er, %.noexc56 ], [ %i.ez, %.noexc57 ], [ %i.fb, %.noexc59 ], [ %i.fa, %.noexc58 ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.bk, !noalias !1110, !inline_history !1155

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.bl, !noalias !1110, !inline_history !1155

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1110, !inline_history !1155
  unreachable

common.resume:                                    ; preds = %bb.by, %bb.ci, %.body.i, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ff, %bb.bk ], [ %i.hp, %bb.ci ], [ %i.gl, %bb.by ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.bj
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1110, !inline_history !1155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1103
  %.pre = load i64, ptr %i.al, align 8, !alias.scope !1156, !noalias !1165
  %.promoted.i.i3.pre = load i64, ptr %i.ak, align 8, !alias.scope !1169, !noalias !1170
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskIqAKC4t9Ft_2yr.exit

bb.bm:                                            ; preds = %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.584.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1154
  store i64 %i.fc, ptr %i.o, align 8, !noalias !1103
  store ptr %i.fe, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !1103
  %i.fh = load i64, ptr %i.ej, align 8, !alias.scope !1171, !noalias !1174, !noundef !21 ; 3 uses
  %i.fi = load i64, ptr %i.p, align 8, !range !301, !alias.scope !1171, !noalias !1174, !noundef !21
end_hunk_0
begin_hunk_1_@_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskIqAKC4t9Ft_2yr:bb.a
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o) #23
          to label %.body.i unwind label %bb.bp, !noalias !1110, !inline_history !1155

bb.bp:                                            ; preds = %bb.bo
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1110, !inline_history !1155
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.bn, %bb.bm
  %i.fm = load ptr, ptr %i.ei, align 8, !alias.scope !1171, !noalias !1174, !nonnull !21, !noundef !21
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fn, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !1110
  %i.fo = add i64 %i.fh, 1
  store i64 %i.fo, ptr %i.ej, align 8, !alias.scope !1171, !noalias !1174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1103
  %i.fp = load i64, ptr %i.al, align 8, !alias.scope !1177, !noalias !1116, !noundef !21 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !1179, !noalias !1132 ; 2 uses
  %i.fq = icmp ult i64 %.promoted.i.i.i, %i.fp
  br i1 %i.fq, label %.lr.ph.i.i.i, label %.loopexit22.i.i

bb.bq:                                            ; preds = %bb.ba
  %.sroa.074.0.copyload = load ptr, ptr %i.p, align 8, !noalias !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !noalias !1180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1103
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskIqAKC4t9Ft_2yr.exit

bb.br:                                            ; preds = %.body.i
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1110, !inline_history !1155
  unreachable

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i, %bb.bq
  %.promoted.i.i3 = phi i64 [ %.promoted.i.i3.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i ], [ %i.en, %bb.bq ] ; 2 uses
  %i.fs = phi i64 [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i ], [ %i.el, %bb.bq ] ; 4 uses
  %.sroa.668.0 = phi ptr [ %.sroa.973.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i ], [ %.sroa.074.0.copyload, %bb.bq ]
  %.sroa.067.0 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i ], [ -9223372036854775804, %bb.bq ]
  %i.ft = load i8, ptr %i.cu, align 8, !alias.scope !940, !noalias !937, !noundef !21
  %i.fu = add i8 %i.ft, 1
  store i8 %i.fu, ptr %i.cu, align 8, !alias.scope !940, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !961
  store i64 %.sroa.067.0, ptr %i.ad, align 8, !noalias !961
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.668.0, ptr %.sroa.668.0..sroa_idx, align 8, !noalias !961
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !noalias !961
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182), !noalias !937
  %i.fv = icmp ult i64 %.promoted.i.i3, %i.fs
  br i1 %i.fv, label %.lr.ph.i.i6, label %.loopexit.i4

.lr.ph.i.i6:                                      ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskIqAKC4t9Ft_2yr.exit
  %i.fw = load ptr, ptr %i.ao, align 8, !alias.scope !1156, !noalias !1165, !nonnull !21, !noundef !21 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i6
  %i.fx = phi i64 [ %.promoted.i.i3, %.lr.ph.i.i6 ], [ %i.ga, %bb.bt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1183), !noalias !937
  call void @llvm.experimental.noalias.scope.decl(metadata !1184), !noalias !937
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !1185, !noundef !21
  switch i8 %i.fz, label %bb.bu [
    i8 32, label %bb.bt
    i8 10, label %bb.bt
    i8 9, label %bb.bt
    i8 13, label %bb.bt
    i8 93, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit.thread
    i8 44, label %bb.bv
  ], !prof !932

bb.bt:                                            ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.ga = add i64 %i.fx, 1                        ; 3 uses
  store i64 %i.ga, ptr %i.ak, align 8, !alias.scope !1186, !noalias !1170
  %exitcond.not.i.i7 = icmp eq i64 %i.ga, %i.fs
  br i1 %exitcond.not.i.i7, label %.loopexit.i4, label %bb.bs

.loopexit.i4:                                     ; preds = %bb.bt, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskIqAKC4t9Ft_2yr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1189
  store i64 2, ptr %i.q, align 8, !noalias !1189
  %i.gb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc8 unwind label %bb.by

.noexc8:                                          ; preds = %.loopexit.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1189
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1189
  store i64 22, ptr %i.r, align 8, !noalias !1189
  %i.gc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc9 unwind label %bb.by

.noexc9:                                          ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1189
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit

bb.bv:                                            ; preds = %bb.bs
  %i.gd = add i64 %i.fx, 1                        ; 3 uses
  store i64 %i.gd, ptr %i.ak, align 8, !alias.scope !1190, !noalias !937
  call void @llvm.experimental.noalias.scope.decl(metadata !1193), !noalias !937
  %i.ge = icmp ult i64 %i.gd, %i.fs
  br i1 %i.ge, label %.lr.ph.i9.i, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit13.thread.i

.lr.ph.i9.i:                                      ; preds = %bb.bv, %bb.bw
  %i.gf = phi i64 [ %i.gi, %bb.bw ], [ %i.gd, %bb.bv ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !1196, !noundef !21
  switch i8 %i.gh, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit13.thread.i [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 93, label %bb.bx
  ]

bb.bw:                                            ; preds = %.lr.ph.i9.i, %.lr.ph.i9.i, %.lr.ph.i9.i, %.lr.ph.i9.i
  %i.gi = add i64 %i.gf, 1                        ; 3 uses
  store i64 %i.gi, ptr %i.ak, align 8, !alias.scope !1204, !noalias !1207
  %exitcond.not.i10.i = icmp eq i64 %i.gi, %i.fs
  br i1 %exitcond.not.i10.i, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit13.thread.i, label %.lr.ph.i9.i

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit13.thread.i: ; preds = %bb.bw, %.lr.ph.i9.i, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1189
  store i64 22, ptr %i.s, align 8, !noalias !1189
  %i.gj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc10 unwind label %bb.by

.noexc10:                                         ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit13.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1189
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit

bb.bx:                                            ; preds = %.lr.ph.i9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1189
  store i64 21, ptr %i.t, align 8, !noalias !1189
  %i.gk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc11 unwind label %bb.by

.noexc11:                                         ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1189
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit

bb.by:                                            ; preds = %bb.bx, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit13.thread.i, %bb.bu, %.loopexit.i4
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ad) #23
          to label %common.resume unwind label %bb.ca, !noalias !937, !inline_history !962

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit: ; preds = %.noexc11, %.noexc10, %.noexc9, %.noexc8
  %.sroa.0.0.i5 = phi ptr [ %i.gc, %.noexc9 ], [ %i.gk, %.noexc11 ], [ %i.gb, %.noexc8 ], [ %i.gj, %.noexc10 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !noalias !961
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  store ptr %.sroa.0.0.i5, ptr %i.gm, align 8, !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !961
  %i.gn = load i64, ptr %i.ae, align 8, !range !330, !noalias !961, !noundef !21
  %i.go = icmp eq i64 %i.gn, -1
  br i1 %i.go, label %bb.cb, label %bb.bz

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit.thread: ; preds = %bb.bs
  %i.gp = add i64 %i.fx, 1
  store i64 %i.gp, ptr %i.ak, align 8, !alias.scope !1208, !noalias !937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !961
  %i.gq = load i64, ptr %i.ae, align 8, !range !330, !noalias !961, !noundef !21 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, -1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.gr, label %.thread210, label %.thread208

.thread210:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit.thread
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !961, !nonnull !21, !align !22, !noundef !21
  %i.gu = ptrtoint ptr %i.gt to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread135

.thread208:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit.thread
  %.sroa.24.0.copyload245 = load i64, ptr %i.gs, align 8, !noalias !961
  %.sroa.41.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.41.0.copyload249 = load i64, ptr %.sroa.41.0..sroa_idx248, align 8, !noalias !961
  %.sroa.49.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.49.0.copyload253 = load i64, ptr %.sroa.49.0..sroa_idx252, align 8, !noalias !961
  %.sroa.51.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx256, i64 40, i1 false), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread135

bb.bz:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit
  %i.gv = ptrtoint ptr %.sroa.0.0.i5 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae), !noalias !937, !inline_history !962
  br label %.thread135

bb.ca:                                            ; preds = %bb.ci, %bb.by
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !937, !inline_history !962
  unreachable

.thread135:                                       ; preds = %.thread210, %.thread208, %bb.bz, %bb.cb
  %.sroa.24.sroa.23.sroa.0.3.in.in = phi i64 [ %i.gz, %bb.cb ], [ %i.gv, %bb.bz ], [ %i.gu, %.thread210 ], [ %.sroa.24.0.copyload245, %.thread208 ]
  %.sroa.49.2 = phi i64 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread210 ], [ %.sroa.49.0.copyload253, %.thread208 ]
  %.sroa.41.3 = phi i64 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread210 ], [ %.sroa.41.0.copyload249, %.thread208 ]
  %.sroa.0.3 = phi i64 [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %.thread210 ], [ %i.gq, %.thread208 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !961
  br label %bb.ag

bb.cb:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskIqAKC4t9Ft_2yr.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !961, !nonnull !21, !align !22, !noundef !21
  %i.gz = ptrtoint ptr %i.gy to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gm), !noalias !937, !inline_history !962
  br label %.thread135

bb.cc:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !961
  store i64 24, ptr %i.ac, align 8, !noalias !961
  %i.ha = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !937, !inline_history !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !961
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ha, ptr %i.hb, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  br label %bb.ah

bb.cd:                                            ; preds = %bb.ae
  %i.hc = add i64 %i.aq, 1
  store i64 %i.hc, ptr %i.ak, align 8, !alias.scope !1211, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !961
  call void @_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !937, !inline_history !962
  %i.hd = load i8, ptr %i.cy, align 8, !alias.scope !940, !noalias !937, !noundef !21
  %i.he = add i8 %i.hd, 1
  store i8 %i.he, ptr %i.cy, align 8, !alias.scope !940, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false), !noalias !961
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217), !noalias !937
  %i.hf = load i64, ptr %i.al, align 8, !alias.scope !1220, !noalias !1225, !noundef !21 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ak, align 8, !alias.scope !1229, !noalias !1230 ; 2 uses
  %i.hg = icmp ult i64 %.promoted.i.i, %i.hf
  br i1 %i.hg, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.cd
  %i.hh = load ptr, ptr %i.ao, align 8, !alias.scope !1220, !noalias !1225, !nonnull !21, !noundef !21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %.lr.ph.i.i
  %i.hi = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.hl, %bb.cf ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1231), !noalias !937
  call void @llvm.experimental.noalias.scope.decl(metadata !1232), !noalias !937
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !1233, !noundef !21
  switch i8 %i.hk, label %bb.cg [
    i8 32, label %bb.cf
    i8 10, label %bb.cf
    i8 9, label %bb.cf
    i8 13, label %bb.cf
    i8 125, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit.thread
    i8 44, label %bb.ch
  ], !prof !932

bb.cf:                                            ; preds = %bb.ce, %bb.ce, %bb.ce, %bb.ce
  %i.hl = add i64 %i.hi, 1                        ; 3 uses
  store i64 %i.hl, ptr %i.ak, align 8, !alias.scope !1234, !noalias !1230
  %exitcond.not.i.i = icmp eq i64 %i.hl, %i.hf
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.ce

.loopexit.i:                                      ; preds = %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1237
  store i64 3, ptr %i.u, align 8, !noalias !1237
  %i.hm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc unwind label %bb.ci

.noexc:                                           ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1237
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1237
  store i64 22, ptr %i.v, align 8, !noalias !1237
  %i.hn = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc1 unwind label %bb.ci

.noexc1:                                          ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1237
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1237
  store i64 21, ptr %i.w, align 8, !noalias !1237
  %i.ho = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc2 unwind label %bb.ci

.noexc2:                                          ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1237
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.loopexit.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #23
          to label %common.resume unwind label %bb.ca, !noalias !937, !inline_history !962

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.hn, %.noexc1 ], [ %i.hm, %.noexc ], [ %i.ho, %.noexc2 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.hq, align 8, !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !961
  %i.hr = load i64, ptr %i.aa, align 8, !range !330, !noalias !961, !noundef !21
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.ck, label %bb.cj

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit.thread: ; preds = %bb.ce
  %i.ht = add i64 %i.hi, 1
  store i64 %i.ht, ptr %i.ak, align 8, !alias.scope !1238, !noalias !937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !961
  %i.hu = load i64, ptr %i.aa, align 8, !range !330, !noalias !961, !noundef !21
  %i.hv = icmp eq i64 %i.hu, -1
  br i1 %i.hv, label %.thread213, label %.thread211

.thread213:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit.thread
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !961, !nonnull !21, !align !22, !noundef !21
  %i.hy = ptrtoint ptr %i.hx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !961
  br label %.thread138

.thread211:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit.thread
  %.sroa.0.0.copyload243 = load i64, ptr %i.ab, align 8
  %.sroa.24.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.24.0.copyload247 = load i64, ptr %.sroa.24.0..sroa_idx246, align 8
  %.sroa.41.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.41.0.copyload251 = load i64, ptr %.sroa.41.0..sroa_idx250, align 8
  %.sroa.49.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.49.0.copyload255 = load i64, ptr %.sroa.49.0..sroa_idx254, align 8
  %.sroa.51.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx257, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !961
  br label %.thread138

bb.cj:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit
  %i.hz = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !961
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.aa), !noalias !937, !inline_history !962
  br label %.thread138

.thread138:                                       ; preds = %.thread213, %.thread211, %bb.cj, %bb.ck
  %.sroa.24.sroa.23.sroa.0.4.in.in = phi i64 [ %i.ic, %bb.ck ], [ %i.hz, %bb.cj ], [ %i.hy, %.thread213 ], [ %.sroa.24.0.copyload247, %.thread211 ]
  %.sroa.49.3 = phi i64 [ undef, %bb.ck ], [ undef, %bb.cj ], [ undef, %.thread213 ], [ %.sroa.49.0.copyload255, %.thread211 ]
  %.sroa.41.4 = phi i64 [ undef, %bb.ck ], [ undef, %bb.cj ], [ undef, %.thread213 ], [ %.sroa.41.0.copyload251, %.thread211 ]
  %.sroa.0.4 = phi i64 [ -1, %bb.ck ], [ -1, %bb.cj ], [ -1, %.thread213 ], [ %.sroa.0.0.copyload243, %.thread211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !961
  br label %bb.ag

bb.ck:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskIqAKC4t9Ft_2yr.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !961, !nonnull !21, !align !22, !noundef !21
  %i.ic = ptrtoint ptr %i.ib to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !961
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hq), !noalias !937, !inline_history !962
  br label %.thread138

bb.cl:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !961
  store i64 10, ptr %i.y, align 8, !noalias !961
  %i.id = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !937, !inline_history !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !961
  br label %bb.cn

bb.cm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !961
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !937, !inline_history !962
  %i.ie = load i64, ptr %i.ah, align 8, !range !38, !noalias !961, !noundef !21 ; 2 uses
  %i.if = icmp eq i64 %i.ie, -1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br i1 %i.if, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge, %bb.cl
  %i.ih = phi ptr [ %i.de, %._crit_edge ], [ %i.id, %bb.cl ]
  %i.ii = call noundef nonnull align 8 ptr @_RINvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskIqAKC4t9Ft_2yr(ptr noalias noundef nonnull align 8 %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !937
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ii, ptr %i.ij, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %i.ik = load ptr, ptr %i.ig, align 8, !noalias !961, !nonnull !21, !align !22, !noundef !21
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !alias.scope !937, !noalias !940
  store i64 -1, ptr %0, align 8, !alias.scope !937, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !961
  br label %bb.ah

bb.cp:                                            ; preds = %bb.cm
  %.sroa.465.0.copyload = load i64, ptr %i.ig, align 8, !noalias !961 ; 5 uses
  switch i64 %i.ie, label %default.unreachable404 [
    i64 0, label %bb.cq
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit
    i64 2, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.im = bitcast i64 %.sroa.465.0.copyload to double
  %i.in = tail call double @llvm.fabs.f64(double %i.im)
  %i.io = fcmp ueq double %i.in, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1241
  br i1 %i.io, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !1247, !noalias !1251
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i312 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !1247, !noalias !1251
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i

bb.cs:                                            ; preds = %bb.cq
  store i64 -9223372036854775808, ptr %i.x, align 8, !noalias !1241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253), !noalias !937
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.x), !noalias !1254
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.cs, %bb.cr
  %i.ip = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i312, %bb.cr ], [ %.sroa.465.0.copyload, %bb.cs ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i, %bb.cr ], [ 2, %bb.cs ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.cr ], [ -9223372036854775806, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1241
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit

bb.ct:                                            ; preds = %bb.cp
  %.lobit.i.i = lshr i64 %.sroa.465.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.cp, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i, %bb.ct
  %.sroa.24.sroa.23.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.24.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i ], [ %.lobit.i.i, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.41.5 = phi i64 [ %i.ip, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i ], [ %.sroa.465.0.copyload, %bb.ct ], [ %.sroa.465.0.copyload, %bb.cp ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i ], [ -9223372036854775806, %bb.ct ], [ -9223372036854775806, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !961
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.24.sroa.23.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.24.sroa.23.sroa.0.2.in.in, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit ], [ %.sroa.24.sroa.23.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30 ], [ %.sroa.24.sroa.23.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit ]
  %.sroa.24.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.24.sroa.23.sroa.0.2.in.in, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit ], [ %.sroa.24.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30 ], [ %.sroa.24.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30 ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit ]
  %.sroa.41.6 = phi i64 [ %.sroa.41.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.41.2, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit ], [ %.sroa.41.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30 ], [ %.sroa.41.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30 ], [ %.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit ]
  store i64 %.sroa.0.6, ptr %0, align 8, !noalias !940
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.sroa.23.0.insert.ext = and i64 %.sroa.24.sroa.23.sroa.0.6, -256
  %.sroa.24.sroa.0.0.insert.ext = and i64 %.sroa.24.sroa.0.6, 255
  %.sroa.24.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24.sroa.0.0.insert.ext, %.sroa.24.sroa.23.0.insert.ext
  store i64 %.sroa.24.sroa.0.0.insert.insert, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !940
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.41.6, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !940
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.49.4, ptr %.sroa.49.0..sroa_idx, align 8, !noalias !940
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, i64 40, i1 false), !noalias !940
  br label %bb.cu

bb.cu:                                            ; preds = %.thread, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit

_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit: ; preds = %.loopexit145, %bb.ah, %bb.cu
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNtNtCsbbTh99npV2h_10serde_json5value3serNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !803, !noundef !21 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 5
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val8 = load ptr, ptr %1, align 8, !nonnull !21, !align !22, !noundef !21
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !94, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  %.val9 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 2 uses
  br i1 %i.g, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %bb.d
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

.split.i.i:                                       ; preds = %bb.d
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef align 8 ptr @_RINvXs4_NtCsbbTh99npV2h_10serde_json6numberNtB6_6NumberNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !align !22, !noundef !21
  tail call fastcc void @_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr(ptr %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m) #29
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1255, !noalias !1258, !nonnull !21, !noundef !21 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.i = load i64, ptr %i.o, align 8, !alias.scope !1255, !noalias !1258, !noundef !21 ; 3 uses
  %.idx78 = mul nuw nsw i64 %.val8.i, 72
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx78
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %.val.i14 = load ptr, ptr %1, align 8, !alias.scope !1260, !noalias !1263, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1265
  %.not79 = icmp eq i64 %.val8.i, 0
  br i1 %.not79, label %.loopexit71.thread, label %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.peel

.loopexit71.thread:                               ; preds = %bb.g
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1265
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.peel: ; preds = %bb.g
  %i.q = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsbbTh99npV2h_10serde_json5value3serNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #29, !noalias !1266, !inline_history !1280 ; 2 uses
  %.not.i.i21.peel = icmp eq ptr %i.q, null
  br i1 %.not.i.i21.peel, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.preheader, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.preheader: ; preds = %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.peel
  %i.r = icmp eq i64 %.val8.i, 1
  %.val11.i96 = load ptr, ptr %1, align 8, !noalias !1255, !nonnull !21, !noundef !21 ; 2 uses
  br i1 %i.r, label %.loopexit71, label %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.lr.ph

_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.lr.ph: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.preheader
  %.sroa.032.095 = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  br label %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i
  %.sroa.032.0 = getelementptr inbounds nuw i8, ptr %.sroa.032.097, i64 72 ; 2 uses
  %i.s = icmp eq ptr %.sroa.032.0, %i.p
  %.val11.i = load ptr, ptr %1, align 8, !noalias !1255, !nonnull !21, !noundef !21 ; 2 uses
  br i1 %i.s, label %.loopexit71, label %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i, !llvm.loop !1281

_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.lr.ph, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit
  %.val11.i98 = phi ptr [ %.val11.i96, %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.lr.ph ], [ %.val11.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit ]
  %.sroa.032.097 = phi ptr [ %.sroa.032.095, %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.lr.ph ], [ %.sroa.032.0, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit ] ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11.i98, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1283, !inline_history !1284
  %i.t = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsbbTh99npV2h_10serde_json5value3serNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.032.097, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #29, !noalias !1266, !inline_history !1280 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.t, null
  br i1 %.not.i.i21, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit, !llvm.loop !1281

.loopexit71:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.preheader
  %.val11.i.lcssa = phi ptr [ %.val11.i96, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.preheader ], [ %.val11.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsbbTh99npV2h_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11.i.lcssa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1255
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %.val.i11 = load ptr, ptr %1, align 8, !alias.scope !1285, !noalias !1288, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1290
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit.thread

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit, %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel, %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.peel, %.loopexit71.thread, %.loopexit, %.loopexit71, %.split.i.i, %.split2.i.i, %bb.f, %bb.e, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ null, %.loopexit71 ], [ %i.i, %bb.e ], [ null, %bb.f ], [ null, %.split.i.i ], [ null, %.loopexit ], [ null, %.split2.i.i ], [ null, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit ], [ null, %.loopexit71.thread ], [ %i.t, %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i ], [ %i.q, %_RINvYNtNtCsbbTh99npV2h_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.peel ], [ %i.ap, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel ], [ %i.au, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit ]
  ret ptr %.sroa.0.0

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.h
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1290
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !21 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit, label %bb.i

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit.thread: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !21 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.thread

.thread:                                          ; preds = %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !21, !noundef !21 ; 4 uses
  %.idx83 = mul nuw nsw i64 %i.aa, 104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx83
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val.i13.peel84 = load ptr, ptr %i.af, align 8, !alias.scope !1291, !noalias !1294
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %.val3.i.peel85 = load i64, ptr %i.ag, align 8, !alias.scope !1291, !noalias !1294
  br label %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel

bb.i:                                             ; preds = %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !21, !noundef !21 ; 4 uses
  %.idx = mul nuw nsw i64 %i.x, 104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val.i13.peel = load ptr, ptr %i.ak, align 8, !alias.scope !1297, !noalias !1294
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  %.val3.i.peel = load i64, ptr %i.al, align 8, !alias.scope !1297, !noalias !1294
  %.val.i19.peel = load ptr, ptr %1, align 8, !noalias !1299, !nonnull !21, !noundef !21
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1299
  br label %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel

_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel: ; preds = %.thread, %bb.i
  %.val3.i.peel87 = phi i64 [ %.val3.i.peel85, %.thread ], [ %.val3.i.peel, %bb.i ]
  %.val.i13.peel86 = phi ptr [ %.val.i13.peel84, %.thread ], [ %.val.i13.peel, %bb.i ] ; 2 uses
  %i.am = phi ptr [ %i.ad, %.thread ], [ %i.ai, %bb.i ] ; 2 uses
  %i.an = phi ptr [ %i.ae, %.thread ], [ %i.aj, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val10.i20.peel = load ptr, ptr %1, align 8, !noalias !1299, !nonnull !21, !align !22, !noundef !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i13.peel86) ], !noalias !1302
  tail call fastcc void @_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr(ptr %.val10.i20.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i13.peel86, i64 noundef %.val3.i.peel87) #29
  %.val.i16.peel = load ptr, ptr %1, align 8, !noalias !1303, !nonnull !21, !align !22, !noundef !21
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i16.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1303, !inline_history !1307
  %i.ap = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsbbTh99npV2h_10serde_json5value3serNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ao, ptr noalias nofree noundef align 8 dereferenceable(8) %1) #29, !noalias !1308, !inline_history !1307 ; 2 uses
  %.not.i17.peel = icmp eq ptr %i.ap, null
  br i1 %.not.i17.peel, label %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECskIqAKC4t9Ft_2yr.exit, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer14serialize_boolCskIqAKC4t9Ft_2yr.exit

_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit
  %.pn = phi ptr [ %.sroa.030.0, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit ], [ %i.am, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.peel ] ; 4 uses
  %.sroa.030.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 104 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.030.0, %i.an
  br i1 %i.aq, label %.loopexit, label %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit

_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECskIqAKC4t9Ft_2yr.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.as = getelementptr i8, ptr %.pn, i64 112
  %.val.i13 = load ptr, ptr %i.as, align 8, !alias.scope !1309, !noalias !1294 ; 2 uses
  %i.at = getelementptr i8, ptr %.pn, i64 120
  %.val3.i = load i64, ptr %i.at, align 8, !alias.scope !1309, !noalias !1294
  %.val.i19 = load ptr, ptr %1, align 8, !noalias !1311, !nonnull !21, !noundef !21
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1311
  %.val10.i20 = load ptr, ptr %1, align 8, !noalias !1311, !nonnull !21, !align !22, !noundef !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i13) ], !noalias !1312
  tail call fastcc void @_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr(ptr %.val10.i20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i13, i64 noundef %.val3.i) #29
end_hunk_1
begin_hunk_2_@_RINvXNtNtCslcwApyVHiOd_7bincode8features5serdeNtNtB7_5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customNtNtCskKLDkoKarTP_4core3fmt9ArgumentsECskIqAKC4t9Ft_2yr:bb.a
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskIqAKC4t9Ft_2yr.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !1472
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskIqAKC4t9Ft_2yr.exit

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i.i, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 16, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtB22_7flatten7FlatMapIB1Y_INtNtB22_4take4TakeINtNtNtBU_5slice4iter4IterhEENCNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json00s1_00ENtNtBU_5ascii13EscapeDefaultNCB3G_s_0ENCB3G_s0_0EEB3U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %i.c = load <2 x ptr>, ptr %1, align 8, !alias.scope !1476, !noalias !1480
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i64>, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !1476, !noalias !1480
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load <2 x i32>, ptr %.sroa.78.0..sroa_idx9.i, align 8, !alias.scope !1476, !noalias !1480
  %.sroa.78.0.copyload10.i = load i32, ptr %.sroa.78.0..sroa_idx9.i, align 8, !alias.scope !1476, !noalias !1480
  %.sroa.813.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.813.0.copyload15.i = load i8, ptr %.sroa.813.0..sroa_idx14.i, align 8, !alias.scope !1476, !noalias !1480 ; 2 uses
  %.sroa.9.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.sroa.9.0.copyload17.i = load i8, ptr %.sroa.9.0..sroa_idx16.i, align 1, !alias.scope !1476, !noalias !1480 ; 2 uses
  %.sroa.10.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.sroa.10.0.copyload19.i = load i16, ptr %.sroa.10.0..sroa_idx18.i, align 2, !alias.scope !1476, !noalias !1480
  %.sroa.1020.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.f = load <2 x i32>, ptr %.sroa.1020.0..sroa_idx21.i, align 4, !alias.scope !1476, !noalias !1480
  %.sroa.1020.0.copyload22.i = load i32, ptr %.sroa.1020.0..sroa_idx21.i, align 4, !alias.scope !1476, !noalias !1480
  %.sroa.1125.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.1125.0.copyload27.i = load i8, ptr %.sroa.1125.0..sroa_idx26.i, align 4, !alias.scope !1476, !noalias !1480 ; 2 uses
  %.sroa.12.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 53
  %.sroa.12.0.copyload29.i = load i8, ptr %.sroa.12.0..sroa_idx28.i, align 1, !alias.scope !1476, !noalias !1480 ; 2 uses
  %.sroa.13.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 54
  %.sroa.13.0.copyload31.i = load i16, ptr %.sroa.13.0..sroa_idx30.i, align 2, !alias.scope !1476, !noalias !1480
  %i.g = trunc nuw i32 %.sroa.78.0.copyload10.i to i1
  %i.h = sub i8 %.sroa.9.0.copyload17.i, %.sroa.813.0.copyload15.i
  %i.i = zext i8 %i.h to i64
  %.sroa.7.0.i.i.i.i = select i1 %i.g, i64 %i.i, i64 0
  %i.j = trunc nuw i32 %.sroa.1020.0.copyload22.i to i1
  %i.k = sub i8 %.sroa.12.0.copyload29.i, %.sroa.1125.0.copyload27.i
  %i.l = zext i8 %i.k to i64
  %.sroa.8.0.i.i.i.i = select i1 %i.j, i64 %i.l, i64 0
  %i.m = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1482
  store <2 x ptr> %i.c, ptr %i.a, align 16, !noalias !1482
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %i.d, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !1482
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x i32> %i.e, ptr %.sroa.78.0..sroa_idx.i, align 16, !noalias !1482
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 %.sroa.813.0.copyload15.i, ptr %.sroa.813.0..sroa_idx.i, align 8, !noalias !1482
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 %.sroa.9.0.copyload17.i, ptr %.sroa.9.0..sroa_idx.i, align 1, !noalias !1482
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %.sroa.10.0.copyload19.i, ptr %.sroa.10.0..sroa_idx.i, align 2, !noalias !1482
  %.sroa.1020.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <2 x i32> %i.f, ptr %.sroa.1020.0..sroa_idx.i, align 4, !noalias !1482
  %.sroa.1125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i8 %.sroa.1125.0.copyload27.i, ptr %.sroa.1125.0..sroa_idx.i, align 4, !noalias !1482
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 53
  store i8 %.sroa.12.0.copyload29.i, ptr %.sroa.12.0..sroa_idx.i, align 1, !noalias !1482
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %.sroa.13.0.copyload31.i, ptr %.sroa.13.0..sroa_idx.i, align 2, !noalias !1482
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapIBO_INtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterhEENCNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json00s1_00ENtNtBc_5ascii13EscapeDefaultNCB2c_s_0ENCB2c_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5B_6StringINtNtB4s_7collect6ExtendcE6extendBN_E0E0EB2q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtB22_7flatten7FlatMapIB1Y_INtNtB22_4take4TakeINtNtNtBU_5slice4iter4IterhEENCNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons00s1_00ENtNtBU_5ascii13EscapeDefaultNCB3G_s_0ENCB3G_s0_0EEB3U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.c = load <2 x ptr>, ptr %1, align 8, !alias.scope !1486, !noalias !1490
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i64>, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !1486, !noalias !1490
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load <2 x i32>, ptr %.sroa.78.0..sroa_idx9.i, align 8, !alias.scope !1486, !noalias !1490
  %.sroa.78.0.copyload10.i = load i32, ptr %.sroa.78.0..sroa_idx9.i, align 8, !alias.scope !1486, !noalias !1490
  %.sroa.813.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.813.0.copyload15.i = load i8, ptr %.sroa.813.0..sroa_idx14.i, align 8, !alias.scope !1486, !noalias !1490 ; 2 uses
  %.sroa.9.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.sroa.9.0.copyload17.i = load i8, ptr %.sroa.9.0..sroa_idx16.i, align 1, !alias.scope !1486, !noalias !1490 ; 2 uses
  %.sroa.10.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.sroa.10.0.copyload19.i = load i16, ptr %.sroa.10.0..sroa_idx18.i, align 2, !alias.scope !1486, !noalias !1490
  %.sroa.1020.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.f = load <2 x i32>, ptr %.sroa.1020.0..sroa_idx21.i, align 4, !alias.scope !1486, !noalias !1490
  %.sroa.1020.0.copyload22.i = load i32, ptr %.sroa.1020.0..sroa_idx21.i, align 4, !alias.scope !1486, !noalias !1490
  %.sroa.1125.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.1125.0.copyload27.i = load i8, ptr %.sroa.1125.0..sroa_idx26.i, align 4, !alias.scope !1486, !noalias !1490 ; 2 uses
  %.sroa.12.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 53
  %.sroa.12.0.copyload29.i = load i8, ptr %.sroa.12.0..sroa_idx28.i, align 1, !alias.scope !1486, !noalias !1490 ; 2 uses
  %.sroa.13.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 54
  %.sroa.13.0.copyload31.i = load i16, ptr %.sroa.13.0..sroa_idx30.i, align 2, !alias.scope !1486, !noalias !1490
  %i.g = trunc nuw i32 %.sroa.78.0.copyload10.i to i1
  %i.h = sub i8 %.sroa.9.0.copyload17.i, %.sroa.813.0.copyload15.i
  %i.i = zext i8 %i.h to i64
  %.sroa.7.0.i.i.i.i = select i1 %i.g, i64 %i.i, i64 0
  %i.j = trunc nuw i32 %.sroa.1020.0.copyload22.i to i1
  %i.k = sub i8 %.sroa.12.0.copyload29.i, %.sroa.1125.0.copyload27.i
  %i.l = zext i8 %i.k to i64
  %.sroa.8.0.i.i.i.i = select i1 %i.j, i64 %i.l, i64 0
  %i.m = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1492
  store <2 x ptr> %i.c, ptr %i.a, align 16, !noalias !1492
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %i.d, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !1492
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x i32> %i.e, ptr %.sroa.78.0..sroa_idx.i, align 16, !noalias !1492
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 %.sroa.813.0.copyload15.i, ptr %.sroa.813.0..sroa_idx.i, align 8, !noalias !1492
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 %.sroa.9.0.copyload17.i, ptr %.sroa.9.0..sroa_idx.i, align 1, !noalias !1492
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %.sroa.10.0.copyload19.i, ptr %.sroa.10.0..sroa_idx.i, align 2, !noalias !1492
  %.sroa.1020.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <2 x i32> %i.f, ptr %.sroa.1020.0..sroa_idx.i, align 4, !noalias !1492
  %.sroa.1125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i8 %.sroa.1125.0.copyload27.i, ptr %.sroa.1125.0..sroa_idx.i, align 4, !noalias !1492
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 53
  store i8 %.sroa.12.0.copyload29.i, ptr %.sroa.12.0..sroa_idx.i, align 1, !noalias !1492
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %.sroa.13.0.copyload31.i, ptr %.sroa.13.0..sroa_idx.i, align 2, !noalias !1492
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapIBO_INtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterhEENCNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons00s1_00ENtNtBc_5ascii13EscapeDefaultNCB2c_s_0ENCB2c_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4w_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5J_6StringINtNtB4A_7collect6ExtendcE6extendBN_E0E0EB2q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters5chain5ChainINtNtB22_3map3MapINtNtB22_7flatten7FlatMapINtNtB22_4take4TakeINtNtNtBU_5slice4iter4IterhEENtNtBU_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB4o_s_0EIB2K_INtNtBU_6option4IterBz_ENtNtNtBU_3str4iter5CharsNCB4o_s0_0EEEB4A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 20 uses
  %.sroa.750.i = alloca i64, align 8              ; 4 uses
  %.sroa.1151.i = alloca i64, align 8             ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  %.sroa.0.0.copyload1.i = load i64, ptr %1, align 8, !alias.scope !1496, !noalias !1500 ; 4 uses
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !1496, !noalias !1500 ; 3 uses
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload5.i = load ptr, ptr %.sroa.7.0..sroa_idx4.i, align 8, !alias.scope !1496, !noalias !1500 ; 5 uses
  %.sroa.9.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload8.i = load ptr, ptr %.sroa.9.0..sroa_idx7.i, align 8, !alias.scope !1496, !noalias !1500 ; 5 uses
  %.sroa.11.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.0.copyload10.i = load ptr, ptr %.sroa.11.0..sroa_idx9.i, align 8, !alias.scope !1496, !noalias !1500 ; 5 uses
  %.sroa.13.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.13.0.copyload13.i = load ptr, ptr %.sroa.13.0..sroa_idx12.i, align 8, !alias.scope !1496, !noalias !1500 ; 5 uses
  %.sroa.15.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.15.0.copyload15.i = load ptr, ptr %.sroa.15.0..sroa_idx14.i, align 8, !alias.scope !1496, !noalias !1500 ; 3 uses
  %.sroa.17.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.17.0.copyload18.i = load ptr, ptr %.sroa.17.0..sroa_idx17.i, align 8, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.19.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.19.0.copyload20.i = load i64, ptr %.sroa.19.0..sroa_idx19.i, align 8, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.21.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load <2 x i32>, ptr %.sroa.21.0..sroa_idx22.i, align 8, !alias.scope !1496, !noalias !1500
  %.sroa.21.0.copyload23.i = load i32, ptr %.sroa.21.0..sroa_idx22.i, align 8, !alias.scope !1496, !noalias !1500
  %.sroa.2327.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2327.0.copyload29.i = load i8, ptr %.sroa.2327.0..sroa_idx28.i, align 8, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.25.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 81
  %.sroa.25.0.copyload31.i = load i8, ptr %.sroa.25.0..sroa_idx30.i, align 1, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.27.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 82
  %.sroa.27.0.copyload33.i = load i16, ptr %.sroa.27.0..sroa_idx32.i, align 2, !alias.scope !1496, !noalias !1500
  %.sroa.2734.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.d = load <2 x i32>, ptr %.sroa.2734.0..sroa_idx35.i, align 4, !alias.scope !1496, !noalias !1500
  %.sroa.2734.0.copyload36.i = load i32, ptr %.sroa.2734.0..sroa_idx35.i, align 4, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.2839.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.2839.0.copyload41.i = load i8, ptr %.sroa.2839.0..sroa_idx40.i, align 4, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.30.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %1, i64 93
  %.sroa.30.0.copyload43.i = load i8, ptr %.sroa.30.0..sroa_idx42.i, align 1, !alias.scope !1496, !noalias !1500 ; 2 uses
  %.sroa.32.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %1, i64 94
  %.sroa.32.0.copyload45.i = load i16, ptr %.sroa.32.0..sroa_idx44.i, align 2, !alias.scope !1496, !noalias !1500
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1151.i)
  %.not.i.i = icmp eq i32 %.sroa.2734.0.copyload36.i, 2
  %.not7.i.i = icmp eq i64 %.sroa.0.0.copyload1.i, 2 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i32 %.sroa.21.0.copyload23.i to i1
  %i.f = sub i8 %.sroa.25.0.copyload31.i, %.sroa.2327.0.copyload29.i
  %i.g = zext i8 %i.f to i64
  %.sroa.7.0.i.i.i32.i.i = select i1 %i.e, i64 %i.g, i64 0
  %i.h = trunc nuw i32 %.sroa.2734.0.copyload36.i to i1
  %i.i = sub i8 %.sroa.30.0.copyload43.i, %.sroa.2839.0.copyload41.i
  %i.j = zext i8 %i.i to i64
  %.sroa.8.0.i.i.i35.i.i = select i1 %i.h, i64 %i.j, i64 0
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i35.i.i, %.sroa.7.0.i.i.i32.i.i ; 3 uses
  %.not.i.i.i36.i.i = icmp eq ptr %.sroa.15.0.copyload15.i, null
  %i.l = icmp eq i64 %.sroa.19.0.copyload20.i, 0
  %or.cond.i.i.i37.i.i = select i1 %.not.i.i.i36.i.i, i1 true, i1 %i.l
  %i.m = icmp eq ptr %.sroa.17.0.copyload18.i, %.sroa.15.0.copyload15.i
  %or.cond79.i.i.i39.i.i = select i1 %or.cond.i.i.i37.i.i, i1 true, i1 %i.m ; 3 uses
  br i1 %.not7.i.i, label %bb.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.0.copyload5.i, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload8.i) ]
  %i.n = ptrtoint ptr %.sroa.9.0.copyload8.i to i64
  %i.o = ptrtoint ptr %.sroa.7.0.copyload5.i to i64
  %i.p = sub nuw i64 %i.n, %i.o                   ; 3 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.q, %i.s
  %i.t = xor i64 %i.p, -1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ -1, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ]
  %.not53.i.i.i.i = icmp eq ptr %.sroa.11.0.copyload10.i, null
  br i1 %.not53.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload13.i) ]
  %i.u = ptrtoint ptr %.sroa.13.0.copyload13.i to i64
  %i.v = ptrtoint ptr %.sroa.11.0.copyload10.i to i64
  %i.w = sub nuw i64 %i.u, %i.v                   ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = and i64 %i.w, 3
  %.not.i.i.i62.i.i.i.i = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not.i.i.i62.i.i.i.i to i64
  %.sroa.0.0.i.i.i63.i.i.i.i = add nuw nsw i64 %i.x, %i.z
  %i.aa = icmp uge i64 %.sroa.7.0.i.i.i.i, %i.w
  %i.ab = zext i1 %i.aa to i64
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i: ; preds = %bb.f, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ab, %bb.f ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i ]
  %.sroa.071.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i63.i.i.i.i, %bb.f ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i ]
  %i.ac = trunc nuw i64 %.sroa.0.0.copyload1.i to i1
  %.not78.i.i.i.i = icmp ne ptr %.sroa.5.0.copyload3.i, null
  %or.cond.not.i.i.i.i = select i1 %i.ac, i1 %.not78.i.i.i.i, i1 false
  %.55.sink.i.i.i.i = select i1 %or.cond.not.i.i.i.i, i64 0, i64 %.sroa.8.0.i.i.i.i
  %i.ad = add nuw i64 %.sroa.071.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i: ; preds = %bb.b
  %spec.select.i.i = select i1 %or.cond79.i.i.i39.i.i, i64 %i.k, i64 undef
  %.not.i.i10.i.i = icmp eq ptr %.sroa.7.0.copyload5.i, null
  br i1 %.not.i.i10.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload8.i) ]
  %i.ae = ptrtoint ptr %.sroa.9.0.copyload8.i to i64
  %i.af = ptrtoint ptr %.sroa.7.0.copyload5.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af                ; 3 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = and i64 %i.ag, 3
  %.not.i.i.i.i.i12.i.i = icmp ne i64 %i.ai, 0
  %i.aj = zext i1 %.not.i.i.i.i.i12.i.i to i64
  %.sroa.0.0.i.i.i.i.i13.i.i = add nuw nsw i64 %i.ah, %i.aj
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i: ; preds = %bb.g, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i
  %.sroa.7.0.i.i15.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i16.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i13.i.i, %bb.g ], [ 0, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i ]
  %.not53.i.i17.i.i = icmp eq ptr %.sroa.11.0.copyload10.i, null
  br i1 %.not53.i.i17.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload13.i) ]
  %i.ak = ptrtoint ptr %.sroa.13.0.copyload13.i to i64
  %i.al = ptrtoint ptr %.sroa.11.0.copyload10.i to i64
  %i.am = sub nuw i64 %i.ak, %i.al                ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = and i64 %i.am, 3
  %.not.i.i.i62.i.i19.i.i = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not.i.i.i62.i.i19.i.i to i64
  %.sroa.0.0.i.i.i63.i.i20.i.i = add nuw nsw i64 %i.an, %i.ap
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i: ; preds = %bb.h, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i
  %.sroa.8.0.i.i22.i.i = phi i64 [ %i.am, %bb.h ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i ]
  %.sroa.071.0.i.i23.i.i = phi i64 [ %.sroa.0.0.i.i.i63.i.i20.i.i, %bb.h ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i ]
  %i.aq = trunc nuw i64 %.sroa.0.0.copyload1.i to i1
  %.not78.i.i25.i.i = icmp ne ptr %.sroa.5.0.copyload3.i, null
  %or.cond.not.i.i26.i.i = select i1 %i.aq, i1 %.not78.i.i25.i.i, i1 false ; 2 uses
  %i.ar = add i64 %.sroa.8.0.i.i22.i.i, %.sroa.7.0.i.i15.i.i ; 2 uses
  %i.as = icmp uge i64 %i.ar, %.sroa.7.0.i.i15.i.i
  %.sroa.645.0.i.i = select i1 %or.cond.not.i.i26.i.i, i64 undef, i64 %i.ar
  %not.or.cond.not.i.i26.i.i = xor i1 %or.cond.not.i.i26.i.i, true
  %i.at = add nuw nsw i64 %.sroa.0.0.i.i16.i.i, %i.k
  %i.au = add nuw i64 %i.at, %.sroa.071.0.i.i23.i.i
  %i.av = select i1 %or.cond79.i.i.i39.i.i, i1 %not.or.cond.not.i.i26.i.i, i1 false
  %or.cond.i.i = select i1 %i.av, i1 %i.as, i1 false
  %i.aw = add i64 %.sroa.645.0.i.i, %spec.select.i.i
  %.sroa.46.0.i.i = select i1 %or.cond.i.i, i64 %i.aw, i64 undef
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i

bb.i:                                             ; preds = %bb.b
  %spec.select.i = zext i1 %or.cond79.i.i.i39.i.i to i64
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i: ; preds = %bb.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i, %bb.c
  %.sroa.049.0.i = phi i64 [ %i.k, %bb.i ], [ %i.ad, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i ], [ %i.au, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i ], [ 0, %bb.c ]
  %.sink53.i.sroa.phi.i = phi ptr [ %.sroa.750.i, %bb.i ], [ %.sroa.750.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i ], [ %.sroa.1151.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i ], [ %.sroa.1151.i, %bb.c ]
  %.sroa.46.0.sink.i.i = phi i64 [ %spec.select.i, %bb.i ], [ %.55.sink.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i ], [ %.sroa.46.0.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i ], [ 0, %bb.c ]
  store i64 %.sroa.46.0.sink.i.i, ptr %.sink53.i.sroa.phi.i, align 8, !alias.scope !1502, !noalias !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1151.i)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.049.0.i)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1507
  store i64 %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !noalias !1507
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload3.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.7.0.copyload5.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.9.0.copyload8.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.11.0.copyload10.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.13.0.copyload13.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.15.0.copyload15.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.17.0.copyload18.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.19.0.copyload20.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x i32> %i.c, ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.2327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 %.sroa.2327.0.copyload29.i, ptr %.sroa.2327.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  store i8 %.sroa.25.0.copyload31.i, ptr %.sroa.25.0..sroa_idx.i, align 1, !noalias !1507
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  store i16 %.sroa.27.0.copyload33.i, ptr %.sroa.27.0..sroa_idx.i, align 2, !noalias !1507
  %.sroa.2734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store <2 x i32> %i.d, ptr %.sroa.2734.0..sroa_idx.i, align 4, !noalias !1507
  %.sroa.2839.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i8 %.sroa.2839.0.copyload41.i, ptr %.sroa.2839.0..sroa_idx.i, align 4, !noalias !1507
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 93
  store i8 %.sroa.30.0.copyload43.i, ptr %.sroa.30.0..sroa_idx.i, align 1, !noalias !1507
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 94
  store i16 %.sroa.32.0.copyload45.i, ptr %.sroa.32.0..sroa_idx.i, align 2, !noalias !1507
  invoke void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2T_s_0EIB1h_INtNtBb_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBb_3str4iter5CharsNCB2T_s0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB5Y_8for_each4callcNCINvXsd_B4N_B4L_INtNtB62_7collect6ExtendcE6extendBO_E0E0EB35_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ax
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters5chain5ChainINtNtB22_3map3MapINtNtB22_7flatten7FlatMapINtNtB22_4take4TakeINtNtNtBU_5slice4iter4IterhEENtNtBU_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB4o_s_0EIB2K_INtNtBU_6option4IterBz_ENtNtNtBU_3str4iter5CharsNCB4o_s0_0EEEB4A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 20 uses
  %.sroa.750.i = alloca i64, align 8              ; 4 uses
  %.sroa.1151.i = alloca i64, align 8             ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %.sroa.0.0.copyload1.i = load i64, ptr %1, align 8, !alias.scope !1511, !noalias !1515 ; 4 uses
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !1511, !noalias !1515 ; 3 uses
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload5.i = load ptr, ptr %.sroa.7.0..sroa_idx4.i, align 8, !alias.scope !1511, !noalias !1515 ; 5 uses
  %.sroa.9.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload8.i = load ptr, ptr %.sroa.9.0..sroa_idx7.i, align 8, !alias.scope !1511, !noalias !1515 ; 5 uses
  %.sroa.11.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.0.copyload10.i = load ptr, ptr %.sroa.11.0..sroa_idx9.i, align 8, !alias.scope !1511, !noalias !1515 ; 5 uses
  %.sroa.13.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.13.0.copyload13.i = load ptr, ptr %.sroa.13.0..sroa_idx12.i, align 8, !alias.scope !1511, !noalias !1515 ; 5 uses
  %.sroa.15.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.15.0.copyload15.i = load ptr, ptr %.sroa.15.0..sroa_idx14.i, align 8, !alias.scope !1511, !noalias !1515 ; 3 uses
  %.sroa.17.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.17.0.copyload18.i = load ptr, ptr %.sroa.17.0..sroa_idx17.i, align 8, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.19.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.19.0.copyload20.i = load i64, ptr %.sroa.19.0..sroa_idx19.i, align 8, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.21.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load <2 x i32>, ptr %.sroa.21.0..sroa_idx22.i, align 8, !alias.scope !1511, !noalias !1515
  %.sroa.21.0.copyload23.i = load i32, ptr %.sroa.21.0..sroa_idx22.i, align 8, !alias.scope !1511, !noalias !1515
  %.sroa.2327.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2327.0.copyload29.i = load i8, ptr %.sroa.2327.0..sroa_idx28.i, align 8, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.25.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 81
  %.sroa.25.0.copyload31.i = load i8, ptr %.sroa.25.0..sroa_idx30.i, align 1, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.27.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 82
  %.sroa.27.0.copyload33.i = load i16, ptr %.sroa.27.0..sroa_idx32.i, align 2, !alias.scope !1511, !noalias !1515
  %.sroa.2734.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.d = load <2 x i32>, ptr %.sroa.2734.0..sroa_idx35.i, align 4, !alias.scope !1511, !noalias !1515
  %.sroa.2734.0.copyload36.i = load i32, ptr %.sroa.2734.0..sroa_idx35.i, align 4, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.2839.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.2839.0.copyload41.i = load i8, ptr %.sroa.2839.0..sroa_idx40.i, align 4, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.30.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %1, i64 93
  %.sroa.30.0.copyload43.i = load i8, ptr %.sroa.30.0..sroa_idx42.i, align 1, !alias.scope !1511, !noalias !1515 ; 2 uses
  %.sroa.32.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %1, i64 94
  %.sroa.32.0.copyload45.i = load i16, ptr %.sroa.32.0..sroa_idx44.i, align 2, !alias.scope !1511, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1151.i)
  %.not.i.i = icmp eq i32 %.sroa.2734.0.copyload36.i, 2
  %.not7.i.i = icmp eq i64 %.sroa.0.0.copyload1.i, 2 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i32 %.sroa.21.0.copyload23.i to i1
  %i.f = sub i8 %.sroa.25.0.copyload31.i, %.sroa.2327.0.copyload29.i
  %i.g = zext i8 %i.f to i64
  %.sroa.7.0.i.i.i32.i.i = select i1 %i.e, i64 %i.g, i64 0
  %i.h = trunc nuw i32 %.sroa.2734.0.copyload36.i to i1
  %i.i = sub i8 %.sroa.30.0.copyload43.i, %.sroa.2839.0.copyload41.i
  %i.j = zext i8 %i.i to i64
  %.sroa.8.0.i.i.i35.i.i = select i1 %i.h, i64 %i.j, i64 0
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i35.i.i, %.sroa.7.0.i.i.i32.i.i ; 3 uses
  %.not.i.i.i36.i.i = icmp eq ptr %.sroa.15.0.copyload15.i, null
  %i.l = icmp eq i64 %.sroa.19.0.copyload20.i, 0
  %or.cond.i.i.i37.i.i = select i1 %.not.i.i.i36.i.i, i1 true, i1 %i.l
  %i.m = icmp eq ptr %.sroa.17.0.copyload18.i, %.sroa.15.0.copyload15.i
  %or.cond79.i.i.i39.i.i = select i1 %or.cond.i.i.i37.i.i, i1 true, i1 %i.m ; 3 uses
  br i1 %.not7.i.i, label %bb.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.0.copyload5.i, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload8.i) ]
  %i.n = ptrtoint ptr %.sroa.9.0.copyload8.i to i64
  %i.o = ptrtoint ptr %.sroa.7.0.copyload5.i to i64
  %i.p = sub nuw i64 %i.n, %i.o                   ; 3 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.q, %i.s
  %i.t = xor i64 %i.p, -1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ -1, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ]
  %.not53.i.i.i.i = icmp eq ptr %.sroa.11.0.copyload10.i, null
  br i1 %.not53.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload13.i) ]
  %i.u = ptrtoint ptr %.sroa.13.0.copyload13.i to i64
  %i.v = ptrtoint ptr %.sroa.11.0.copyload10.i to i64
  %i.w = sub nuw i64 %i.u, %i.v                   ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = and i64 %i.w, 3
  %.not.i.i.i62.i.i.i.i = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not.i.i.i62.i.i.i.i to i64
  %.sroa.0.0.i.i.i63.i.i.i.i = add nuw nsw i64 %i.x, %i.z
  %i.aa = icmp uge i64 %.sroa.7.0.i.i.i.i, %i.w
  %i.ab = zext i1 %i.aa to i64
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i: ; preds = %bb.f, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ab, %bb.f ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i ]
  %.sroa.071.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i63.i.i.i.i, %bb.f ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i.i.i ]
  %i.ac = trunc nuw i64 %.sroa.0.0.copyload1.i to i1
  %.not78.i.i.i.i = icmp ne ptr %.sroa.5.0.copyload3.i, null
  %or.cond.not.i.i.i.i = select i1 %i.ac, i1 %.not78.i.i.i.i, i1 false
  %.55.sink.i.i.i.i = select i1 %or.cond.not.i.i.i.i, i64 0, i64 %.sroa.8.0.i.i.i.i
  %i.ad = add nuw i64 %.sroa.071.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i: ; preds = %bb.b
  %spec.select.i.i = select i1 %or.cond79.i.i.i39.i.i, i64 %i.k, i64 undef
  %.not.i.i10.i.i = icmp eq ptr %.sroa.7.0.copyload5.i, null
  br i1 %.not.i.i10.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload8.i) ]
  %i.ae = ptrtoint ptr %.sroa.9.0.copyload8.i to i64
  %i.af = ptrtoint ptr %.sroa.7.0.copyload5.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af                ; 3 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = and i64 %i.ag, 3
  %.not.i.i.i.i.i12.i.i = icmp ne i64 %i.ai, 0
  %i.aj = zext i1 %.not.i.i.i.i.i12.i.i to i64
  %.sroa.0.0.i.i.i.i.i13.i.i = add nuw nsw i64 %i.ah, %i.aj
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i: ; preds = %bb.g, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i
  %.sroa.7.0.i.i15.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i16.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i13.i.i, %bb.g ], [ 0, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2L_.exit.i.i ]
  %.not53.i.i17.i.i = icmp eq ptr %.sroa.11.0.copyload10.i, null
  br i1 %.not53.i.i17.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload13.i) ]
  %i.ak = ptrtoint ptr %.sroa.13.0.copyload13.i to i64
  %i.al = ptrtoint ptr %.sroa.11.0.copyload10.i to i64
  %i.am = sub nuw i64 %i.ak, %i.al                ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = and i64 %i.am, 3
  %.not.i.i.i62.i.i19.i.i = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not.i.i.i62.i.i19.i.i to i64
  %.sroa.0.0.i.i.i63.i.i20.i.i = add nuw nsw i64 %i.an, %i.ap
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i: ; preds = %bb.h, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i
  %.sroa.8.0.i.i22.i.i = phi i64 [ %i.am, %bb.h ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i ]
  %.sroa.071.0.i.i23.i.i = phi i64 [ %.sroa.0.0.i.i.i63.i.i20.i.i, %bb.h ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit.i.i14.i.i ]
  %i.aq = trunc nuw i64 %.sroa.0.0.copyload1.i to i1
  %.not78.i.i25.i.i = icmp ne ptr %.sroa.5.0.copyload3.i, null
  %or.cond.not.i.i26.i.i = select i1 %i.aq, i1 %.not78.i.i25.i.i, i1 false ; 2 uses
  %i.ar = add i64 %.sroa.8.0.i.i22.i.i, %.sroa.7.0.i.i15.i.i ; 2 uses
  %i.as = icmp uge i64 %i.ar, %.sroa.7.0.i.i15.i.i
  %.sroa.645.0.i.i = select i1 %or.cond.not.i.i26.i.i, i64 undef, i64 %i.ar
  %not.or.cond.not.i.i26.i.i = xor i1 %or.cond.not.i.i26.i.i, true
  %i.at = add nuw nsw i64 %.sroa.0.0.i.i16.i.i, %i.k
  %i.au = add nuw i64 %i.at, %.sroa.071.0.i.i23.i.i
  %i.av = select i1 %or.cond79.i.i.i39.i.i, i1 %not.or.cond.not.i.i26.i.i, i1 false
  %or.cond.i.i = select i1 %i.av, i1 %i.as, i1 false
  %i.aw = add i64 %.sroa.645.0.i.i, %spec.select.i.i
  %.sroa.46.0.i.i = select i1 %or.cond.i.i, i64 %i.aw, i64 undef
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i

bb.i:                                             ; preds = %bb.b
  %spec.select.i = zext i1 %or.cond79.i.i.i39.i.i to i64
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i: ; preds = %bb.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i, %bb.c
  %.sroa.049.0.i = phi i64 [ %i.k, %bb.i ], [ %i.ad, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i ], [ %i.au, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i ], [ 0, %bb.c ]
  %.sink53.i.sroa.phi.i = phi ptr [ %.sroa.750.i, %bb.i ], [ %.sroa.750.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i ], [ %.sroa.1151.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i ], [ %.sroa.1151.i, %bb.c ]
  %.sroa.46.0.sink.i.i = phi i64 [ %spec.select.i, %bb.i ], [ %.55.sink.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i.i.i ], [ %.sroa.46.0.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskIqAKC4t9Ft_2yr.exit64.i.i21.i.i ], [ 0, %bb.c ]
  store i64 %.sroa.46.0.sink.i.i, ptr %.sink53.i.sroa.phi.i, align 8, !alias.scope !1517, !noalias !1520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1151.i)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.049.0.i)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEENtNtBa_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2S_s_0EIB1g_INtNtBa_6option4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtBa_3str4iter5CharsNCB2S_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB34_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1522
  store i64 %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !noalias !1522
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload3.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1522
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.7.0.copyload5.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1522
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.9.0.copyload8.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1522
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.11.0.copyload10.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1522
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.13.0.copyload13.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1522
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.15.0.copyload15.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !1522
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.17.0.copyload18.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !1522
end_hunk_2
