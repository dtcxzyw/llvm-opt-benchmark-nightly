Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.07?download=true
inline.NumInlined: 4768
inline.NumDeleted: 1854
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvXs3_NtCsaeRQ2XwCvzm_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsbbTh99npV2h_10serde_json5value5ValueENtB6_15DeserializeSeed11deserializeQINtNtB1n_2de12DeserializerNtNtB1n_4read9SliceReadEECs7gfv9tzbXmh_6yara_x:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4825)
  %exitcond.not.i40.i.2 = icmp eq i64 %i.au, %umax.i.i
  br i1 %exitcond.not.i40.i.2, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4827, !noundef !4
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !4828, !noalias !4819
  %.not.i.i.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i.i.2, label %.thread, label %bb.k, !prof !4820

_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4829
  store i64 5, ptr %i.o, align 8, !noalias !4829
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !4830, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4829
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4829
  store i64 9, ptr %i.n, align 8, !noalias !4829
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !4830, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4829
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit.i
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !4831, !noalias !4782
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4834)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4837)
  %exitcond.not.i45.i.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i45.i.not, label %bb.m, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !4840, !noundef !4
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !4843, !noalias !4844
  %.not.i46.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !4820

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4845)
  %exitcond.not.i45.i.1 = icmp eq i64 %i.bd, %umax.i43.i
  br i1 %exitcond.not.i45.i.1, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4847, !noundef !4
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !4848, !noalias !4844
  %.not.i46.i.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i46.i.1, label %bb.p, label %bb.r, !prof !4820

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4849)
  %exitcond.not.i45.i.2 = icmp eq i64 %i.bg, %umax.i43.i
  br i1 %exitcond.not.i45.i.2, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4851, !noundef !4
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !4852, !noalias !4844
  %.not.i46.i.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i46.i.2, label %.thread, label %bb.r, !prof !4820

_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4853
  store i64 5, ptr %i.m, align 8, !noalias !4853
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !4854, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4853
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4853
  store i64 9, ptr %i.l, align 8, !noalias !4853
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !4854, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4853
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit.i
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !4855, !noalias !4782
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4858)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4861)
  %exitcond.not.i54.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i54.i.not, label %bb.t, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4864, !noundef !4
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !4867, !noalias !4868
  %.not.i55.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !4820

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4869)
  %exitcond.not.i54.i.1 = icmp eq i64 %i.bp, %umax.i52.i
  br i1 %exitcond.not.i54.i.1, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !4871, !noundef !4
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !4872, !noalias !4868
  %.not.i55.i.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i55.i.1, label %bb.w, label %bb.aa, !prof !4820

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4873)
  %exitcond.not.i54.i.2 = icmp eq i64 %i.bs, %umax.i52.i
  br i1 %exitcond.not.i54.i.2, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !4875, !noundef !4
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !4876, !noalias !4868
  %.not.i55.i.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i55.i.2, label %bb.y, label %bb.aa, !prof !4820

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4877)
  %exitcond.not.i54.i.3 = icmp eq i64 %i.bv, %umax.i52.i
  br i1 %exitcond.not.i54.i.3, label %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !4879, !noundef !4
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !4880, !noalias !4868
  %.not.i55.i.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i55.i.3, label %.thread, label %bb.aa, !prof !4820

_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4881
  store i64 5, ptr %i.k, align 8, !noalias !4881
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !4882, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4881
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4881
  store i64 9, ptr %i.j, align 8, !noalias !4881
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !4882, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4881
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit.i
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !4883, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4803
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !4782, !inline_history !4804
  %i.cc = load i64, ptr %i.z, align 8, !range !23, !noalias !4803, !noundef !4 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit.i
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !4886, !noalias !4782
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !4785, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4803
  call void @_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !4782, !inline_history !4804
  %i.ch = load i64, ptr %i.x, align 8, !range !5, !noalias !4803, !noundef !4 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !4803 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !4785, !noalias !4782, !noundef !4
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !4785, !noalias !4782
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !11

bb.ae:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !4785, !noalias !4782, !noundef !4
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !4785, !noalias !4782
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.bx, label %bb.by, !prof !11

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.i.ph = phi ptr [ %i.ay, %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.i.ph, ptr %i.ct, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  br label %bb.ah

bb.ag:                                            ; preds = %.thread48, %.thread45
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread48 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread45 ] ; 3 uses
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread48 ], [ %.sroa.45.2, %.thread45 ]
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread48 ], [ %.sroa.37.3, %.thread45 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread48 ], [ %.sroa.0.3, %.thread45 ] ; 2 uses
  %i.cu = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.cu, label %._crit_edge, label %.thread, !prof !4889

._crit_edge:                                      ; preds = %bb.ag
  %i.cv = inttoptr i64 %.sroa.22.sroa.21.sroa.0.0.in.in to ptr
  br label %bb.ch

bb.ah:                                            ; preds = %bb.ci, %bb.bx, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.i.ph = phi ptr [ %i.bk, %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i ], [ %i.bl, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.i.ph, ptr %i.cw, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.i.ph = phi ptr [ %i.bz, %_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i ], [ %i.ca, %bb.aa ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.i.ph, ptr %i.cx, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ce, align 8, !noalias !4803, !nonnull !4, !align !251, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4803
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !4803 ; 5 uses
  switch i64 %i.cc, label %default.unreachable177 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i
    i64 2, label %bb.ap
  ]

default.unreachable177:                           ; preds = %bb.cj, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = bitcast i64 %.sroa.4.0.copyload to double
  %i.db = tail call double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ueq double %i.db, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4890
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i.i, align 8, !alias.scope !4896, !noalias !4900
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i.i144 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i.i, align 8, !alias.scope !4896, !noalias !4900
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.i, align 8, !noalias !4890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !4903, !inline_history !4804
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.ao, %bb.an
  %i.dd = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i.i144, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i.i, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4890
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i.i = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.al, %bb.ap, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.22.sroa.21.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.22.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %.lobit.i.i.i, %bb.ap ], [ 0, %bb.al ]
  %.sroa.37.1 = phi i64 [ %i.dd, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4803
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.de, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4803
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4803 ; 8 uses
  %i.df = trunc nuw i64 %i.ch to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  br i1 %i.df, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4904
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !4904
  %i.dg = load i64, ptr %i.b, align 8, !range !25, !noalias !4904, !noundef !4
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !range !26, !noalias !4904, !noundef !4 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !4904
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dj, i64 %i.dl) #41, !noalias !4904
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dm = load ptr, ptr %i.dk, align 8, !noalias !4904, !nonnull !4, !noundef !4 ; 2 uses
  %i.dn = icmp ule i64 %.sroa.4.0.copyload.i, %i.dj
  call void @llvm.assume(i1 %i.dn), !noalias !4782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4904
  %.not.i79 = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i79, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4908
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !4908
  %i.do = load i64, ptr %i.a, align 8, !range !25, !noalias !4908, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !range !26, !noalias !4908, !noundef !4 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dp, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !4908
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #41, !noalias !4908
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.du = load ptr, ptr %i.ds, align 8, !noalias !4908, !nonnull !4, !noundef !4 ; 2 uses
  %i.dv = icmp ule i64 %.sroa.4.0.copyload.i, %i.dr
  call void @llvm.assume(i1 %i.dv), !noalias !4782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4908
  %.not.i.i80 = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i80, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.sink.split

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dm, %bb.au ], [ %i.du, %bb.ax ] ; 2 uses
  %.sroa.22.sroa.21.sroa.0.2.in.in.ph = phi i64 [ %i.dj, %bb.au ], [ %i.dr, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.ck, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !4782
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.sink.split, %bb.ax, %bb.au
  %.sroa.22.sroa.21.sroa.0.2.in.in = phi i64 [ %i.dr, %bb.ax ], [ %i.dj, %bb.au ], [ %.sroa.22.sroa.21.sroa.0.2.in.in.ph, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.sink.split ] ; 2 uses
  %.sroa.37.2.in = phi ptr [ %i.du, %bb.ax ], [ %i.dm, %bb.au ], [ %.sink, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4803
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4803
  store i64 24, ptr %i.w, align 8, !noalias !4803
  %i.dw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w), !noalias !4782, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4803
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.dy = add i64 %i.ah, 1
  store i64 %i.dy, ptr %i.ab, align 8, !alias.scope !4915, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4803
  store ptr %1, ptr %i.h, align 8, !noalias !4918
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.dz, align 8, !noalias !4918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4918
  store i64 0, ptr %i.g, align 8, !noalias !4918
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !noalias !4918
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.eb, align 8, !noalias !4918
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.i.i.sroa.4.0..sroa.3.0..sroa_idx2.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bo, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  call void @llvm.experimental.noalias.scope.decl(metadata !4925), !noalias !4928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4929
  invoke fastcc void @_RINvNvXs7_NtCsbbTh99npV2h_10serde_json2deINtB8_9SeqAccesspENtNtCsaeRQ2XwCvzm_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc unwind label %bb.bf, !inline_history !4932

.noexc:                                           ; preds = %bb.ba
  %i.ed = load i8, ptr %i.d, align 8, !range !21, !noalias !4929, !noundef !4
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !4929, !nonnull !4, !align !251, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4929
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc
  %i.eh = load i8, ptr %i.ec, align 1, !range !21, !noalias !4929, !noundef !4
  %i.ei = trunc nuw i8 %i.eh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4929
  br i1 %i.ei, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4929
  %i.ej = load ptr, ptr %i.h, align 8, !alias.scope !4933, !noalias !4934, !nonnull !4, !align !251, !noundef !4
  invoke fastcc void @_RINvXs3_NtCsaeRQ2XwCvzm_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsbbTh99npV2h_10serde_json5value5ValueENtB6_15DeserializeSeed11deserializeQINtNtB1n_2de12DeserializerNtNtB1n_4read9SliceReadEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ej) #44
          to label %.noexc1 unwind label %bb.bf, !inline_history !4932

.noexc1:                                          ; preds = %bb.bd
  %i.ek = load i64, ptr %i.c, align 8, !range !3535, !noalias !4929, !noundef !4 ; 2 uses
  %i.el = icmp eq i64 %i.ek, -1
  %i.em = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !noalias !4929 ; 2 uses
  br i1 %i.el, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4929
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bl, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.bf ], [ %i.et, %bb.bl ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #38
          to label %common.resume unwind label %bb.bp, !noalias !4928, !inline_history !4935

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.911.0.ph = phi ptr [ %i.em, %bb.be ], [ %i.eg, %bb.bb ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.bh, !noalias !4928

bb.bh:                                            ; preds = %bb.bg
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bi, !noalias !4928

bb.bi:                                            ; preds = %bb.bh
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !4928
  unreachable

common.resume:                                    ; preds = %bb.bq, %bb.bz, %.body, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.eo, %bb.bh ], [ %i.fr, %bb.bz ], [ %i.fc, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.bg
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !4928
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECs7gfv9tzbXmh_6yara_x.exit.i

bb.bj:                                            ; preds = %.noexc1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.i.sroa.4.0..sroa.3.0..sroa_idx2.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.518.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4929
  store i64 %i.ek, ptr %i.f, align 8, !noalias !4918
  store ptr %i.em, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !4918
  %i.eq = load i64, ptr %i.eb, align 8, !alias.scope !4936, !noalias !4939, !noundef !4 ; 3 uses
  %i.er = load i64, ptr %i.g, align 8, !range !20, !alias.scope !4936, !noalias !4939, !noundef !4
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bo unwind label %bb.bl, !noalias !4939

bb.bl:                                            ; preds = %bb.bk
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f) #38
          to label %.body unwind label %bb.bm, !noalias !4928

bb.bm:                                            ; preds = %bb.bl
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !4928
  unreachable

bb.bn:                                            ; preds = %bb.bc
  %.sroa.012.0.copyload = load ptr, ptr %i.g, align 8, !noalias !4918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !noalias !4941
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECs7gfv9tzbXmh_6yara_x.exit.i

bb.bo:                                            ; preds = %bb.bk, %bb.bj
  %i.ev = load ptr, ptr %i.ea, align 8, !alias.scope !4936, !noalias !4939, !nonnull !4, !noundef !4
  %i.ew = getelementptr inbounds nuw [72 x i8], ptr %i.ev, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ew, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !4928
  %i.ex = add i64 %i.eq, 1
  store i64 %i.ex, ptr %i.eb, align 8, !alias.scope !4936, !noalias !4939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4918
  br label %bb.ba

bb.bp:                                            ; preds = %.body
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !4928, !inline_history !4935
  unreachable

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.69.0 = phi ptr [ %.sroa.911.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.012.0.copyload, %bb.bn ]
  %.sroa.08.0 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECs7gfv9tzbXmh_6yara_x.exit ], [ -9223372036854775804, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4803
  %i.ez = load i8, ptr %i.cl, align 8, !alias.scope !4785, !noalias !4782, !noundef !4
  %i.fa = add i8 %i.ez, 1
  store i8 %i.fa, ptr %i.cl, align 8, !alias.scope !4785, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4803
  store i64 %.sroa.08.0, ptr %i.u, align 8, !noalias !4803
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.69.0, ptr %.sroa.69.0..sroa_idx, align 8, !noalias !4803
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !noalias !4803
  %i.fb = invoke noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.br unwind label %bb.bq, !noalias !4782, !inline_history !4804 ; 5 uses

bb.bq:                                            ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #38
          to label %common.resume unwind label %bb.bv, !noalias !4782, !inline_history !4804

bb.br:                                            ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !4803
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.fb, ptr %i.fd, align 8, !noalias !4803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4803
  %i.fe = load i64, ptr %i.v, align 8, !range !3535, !noalias !4803, !noundef !4 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, -1
  br i1 %i.ff, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not31.i = icmp eq ptr %i.fb, null
  br i1 %.not31.i, label %.thread72, label %bb.bu

.thread72:                                        ; preds = %bb.bs
  %.sroa.22.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.22.0.copyload84 = load i64, ptr %.sroa.22.0..sroa_idx83, align 8, !noalias !4803
  %.sroa.37.0..sroa_idx87.a = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.37.0.copyload88.a = load i64, ptr %.sroa.37.0..sroa_idx87.a, align 8, !noalias !4803
  %.sroa.45.0..sroa_idx91.a = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.45.0.copyload92.a = load i64, ptr %.sroa.45.0..sroa_idx91.a, align 8, !noalias !4803
  %.sroa.47.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx95, i64 40, i1 false), !noalias !4803
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread45

bb.bt:                                            ; preds = %bb.br
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !4803, !nonnull !4, !align !251, !noundef !4
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not51 = icmp eq ptr %i.fb, null
  br i1 %.not51, label %.thread45, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.fj = ptrtoint ptr %i.fb to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.v), !noalias !4782, !inline_history !4804
  br label %.thread45

bb.bv:                                            ; preds = %bb.bz, %bb.bq
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !4782, !inline_history !4804
  unreachable

.thread45:                                        ; preds = %.thread72, %bb.bu, %bb.bw, %bb.bt
  %.sroa.22.sroa.21.sroa.0.3.in.in = phi i64 [ %i.fi, %bb.bt ], [ %i.fi, %bb.bw ], [ %.sroa.22.0.copyload84, %.thread72 ], [ %i.fj, %bb.bu ]
  %.sroa.45.2 = phi i64 [ undef, %bb.bt ], [ undef, %bb.bw ], [ %.sroa.45.0.copyload92.a, %.thread72 ], [ undef, %bb.bu ]
  %.sroa.37.3 = phi i64 [ undef, %bb.bt ], [ undef, %bb.bw ], [ %.sroa.37.0.copyload88.a, %.thread72 ], [ undef, %bb.bu ]
  %.sroa.0.3 = phi i64 [ -1, %bb.bt ], [ -1, %bb.bw ], [ %i.fe, %.thread72 ], [ -1, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4803
  br label %bb.ag

bb.bw:                                            ; preds = %bb.bt
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.fb), !noalias !4782, !inline_history !4804
  br label %.thread45

bb.bx:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4803
  store i64 24, ptr %i.t, align 8, !noalias !4803
  %i.fl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !4782, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4803
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %i.fm, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  br label %bb.ah

bb.by:                                            ; preds = %bb.ae
  %i.fn = add i64 %i.ah, 1
  store i64 %i.fn, ptr %i.ab, align 8, !alias.scope !4942, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4803
  call void @_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read9SliceReadEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4782, !inline_history !4804
  %i.fo = load i8, ptr %i.cp, align 8, !alias.scope !4785, !noalias !4782, !noundef !4
  %i.fp = add i8 %i.fo, 1
  store i8 %i.fp, ptr %i.cp, align 8, !alias.scope !4785, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !4803
  %i.fq = invoke noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.ca unwind label %bb.bz, !noalias !4782, !inline_history !4804 ; 5 uses

bb.bz:                                            ; preds = %bb.by
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #38
          to label %common.resume unwind label %bb.bv, !noalias !4782, !inline_history !4804

bb.ca:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %i.fq, ptr %i.fs, align 8, !noalias !4803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4803
  %i.ft = load i64, ptr %i.r, align 8, !range !3535, !noalias !4803, !noundef !4
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i = icmp eq ptr %i.fq, null
  br i1 %.not.i, label %.thread74, label %bb.cd

.thread74:                                        ; preds = %bb.cb
  %.sroa.0.0.copyload82 = load i64, ptr %i.s, align 8
  %.sroa.22.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.22.0.copyload86 = load i64, ptr %.sroa.22.0..sroa_idx85, align 8
  %.sroa.37.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.37.0.copyload90 = load i64, ptr %.sroa.37.0..sroa_idx89, align 8
  %.sroa.45.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.45.0.copyload94 = load i64, ptr %.sroa.45.0..sroa_idx93, align 8
  %.sroa.47.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx96, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4803
  br label %.thread48

bb.cc:                                            ; preds = %bb.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !4803, !nonnull !4, !align !251, !noundef !4
  %i.fx = ptrtoint ptr %i.fw to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4803
  %.not = icmp eq ptr %i.fq, null
  br i1 %.not, label %.thread48, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.fy = ptrtoint ptr %i.fq to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4803
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r), !noalias !4782, !inline_history !4804
  br label %.thread48

.thread48:                                        ; preds = %.thread74, %bb.cd, %bb.ce, %bb.cc
  %.sroa.22.sroa.21.sroa.0.4.in.in = phi i64 [ %i.fx, %bb.cc ], [ %i.fx, %bb.ce ], [ %.sroa.22.0.copyload86, %.thread74 ], [ %i.fy, %bb.cd ]
  %.sroa.45.3 = phi i64 [ undef, %bb.cc ], [ undef, %bb.ce ], [ %.sroa.45.0.copyload94, %.thread74 ], [ undef, %bb.cd ]
  %.sroa.37.4 = phi i64 [ undef, %bb.cc ], [ undef, %bb.ce ], [ %.sroa.37.0.copyload90, %.thread74 ], [ undef, %bb.cd ]
  %.sroa.0.4 = phi i64 [ -1, %bb.cc ], [ -1, %bb.ce ], [ %.sroa.0.0.copyload82, %.thread74 ], [ -1, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4803
  br label %bb.ag

bb.ce:                                            ; preds = %bb.cc
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.fq), !noalias !4782, !inline_history !4804
  br label %.thread48

bb.cf:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4803
  store i64 10, ptr %i.p, align 8, !noalias !4803
  %i.fz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !4782, !inline_history !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4803
  br label %bb.ch

bb.cg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4803
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4782, !inline_history !4804
  %i.ga = load i64, ptr %i.y, align 8, !range !23, !noalias !4803, !noundef !4 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.gb, label %bb.ci, label %bb.cj

bb.ch:                                            ; preds = %._crit_edge, %bb.cf
  %i.gd = phi ptr [ %i.cv, %._crit_edge ], [ %i.fz, %bb.cf ]
  %i.ge = call noundef nonnull align 8 ptr @_RINvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs7gfv9tzbXmh_6yara_x(ptr noalias noundef nonnull align 8 %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !4782, !inline_history !4804
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ge, ptr %i.gf, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  br label %bb.co

bb.ci:                                            ; preds = %bb.cg
  %i.gg = load ptr, ptr %i.gc, align 8, !noalias !4803, !nonnull !4, !align !251, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gg, ptr %i.gh, align 8, !alias.scope !4782, !noalias !4785
  store i64 -1, ptr %0, align 8, !alias.scope !4782, !noalias !4785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4803
  br label %bb.ah

bb.cj:                                            ; preds = %bb.cg
  %.sroa.46.0.copyload = load i64, ptr %i.gc, align 8, !noalias !4803 ; 5 uses
  switch i64 %i.ga, label %default.unreachable177 [
    i64 0, label %bb.ck
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i
    i64 2, label %bb.cn
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.gi = bitcast i64 %.sroa.46.0.copyload to double
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp ueq double %i.gj, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4945
  br i1 %i.gk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %.sroa.5.0..sroa_idx4.i.i74.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i75.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i74.i, align 8, !alias.scope !4951, !noalias !4955
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i76.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i77.i145 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i76.i, align 8, !alias.scope !4951, !noalias !4955
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i

bb.cm:                                            ; preds = %bb.ck
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !4945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4957)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !4958, !inline_history !4804
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i: ; preds = %bb.cm, %bb.cl
  %i.gl = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i77.i145, %bb.cl ], [ %.sroa.46.0.copyload, %bb.cm ]
  %.sroa.5.sroa.0.0.i.i70.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i75.i, %bb.cl ], [ 2, %bb.cm ] ; 2 uses
  %.sroa.0.0.i.i71.i = phi i64 [ -9223372036854775808, %bb.cl ], [ -9223372036854775806, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4945
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i

bb.cn:                                            ; preds = %bb.cj
  %.lobit.i.i63.i = lshr i64 %.sroa.46.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i: ; preds = %bb.cj, %bb.cn, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i
  %.sroa.22.sroa.21.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i70.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i ], [ 0, %bb.cn ], [ 0, %bb.cj ]
  %.sroa.22.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i70.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i ], [ %.lobit.i.i63.i, %bb.cn ], [ 0, %bb.cj ]
  %.sroa.37.5 = phi i64 [ %i.gl, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i ], [ %.sroa.46.0.copyload, %bb.cn ], [ %.sroa.46.0.copyload, %bb.cj ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i71.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i68.i ], [ -9223372036854775806, %bb.cn ], [ -9223372036854775806, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4803
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.22.sroa.21.sroa.0.6 = phi i64 [ %.sroa.22.sroa.21.sroa.0.0.in.in, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.22.sroa.21.sroa.0.2.in.in, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.22.sroa.21.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.22.sroa.21.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i ]
  %.sroa.22.sroa.0.6 = phi i64 [ %.sroa.22.sroa.21.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.22.sroa.21.sroa.0.2.in.in, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.22.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.22.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i ]
  %.sroa.45.4 = phi i64 [ %.sroa.45.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i ]
  %.sroa.37.6 = phi i64 [ %.sroa.37.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.37.2, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.37.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.37.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit79.i ]
  store i64 %.sroa.0.6, ptr %0, align 8, !noalias !4785
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.sroa.21.0.insert.ext = and i64 %.sroa.22.sroa.21.sroa.0.6, -256
  %.sroa.22.sroa.0.0.insert.ext = and i64 %.sroa.22.sroa.0.6, 255
  %.sroa.22.sroa.0.0.insert.insert = or disjoint i64 %.sroa.22.sroa.0.0.insert.ext, %.sroa.22.sroa.21.0.insert.ext
  store i64 %.sroa.22.sroa.0.0.insert.insert, ptr %.sroa.22.0..sroa_idx, align 8, !noalias !4785
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.37.6, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !4785
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.45.4, ptr %.sroa.45.0..sroa_idx, align 8, !noalias !4785
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, i64 40, i1 false), !noalias !4785
  br label %bb.co

bb.co:                                            ; preds = %.thread, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit

_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.loopexit, %bb.ah, %bb.co
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB2G_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB2G_11Deserialize11deserialize10VecVisitorNtNtB46_6string6StringEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(312) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4959)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 273 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre.i = load i8, ptr %i.g, align 8, !range !21, !alias.scope !4962, !noalias !4965
  %i.k = trunc nuw i8 %.pre.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4968)
  br i1 %i.k, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4970
  call void @_RNvXs_NtCsbbTh99npV2h_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEENtNtNtNtB2k_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %1), !noalias !4965
  %i.l = load i8, ptr %i.b, align 8, !range !211, !noalias !4970, !noundef !4
  switch i8 %i.l, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %bb.b
  ], !prof !212

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.i, align 1, !noalias !4970, !noundef !4 ; 2 uses
  store i8 1, ptr %i.g, align 8, !alias.scope !4971, !noalias !4965
  store i8 %i.m, ptr %i.h, align 1, !alias.scope !4971, !noalias !4965
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !noalias !4970, !nonnull !4, !noundef !4
  %i.o = call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !noalias !4965
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi ptr [ undef, %bb.b ], [ %i.o, %bb.c ], [ undef, %bb.a ]
  %i.q = phi i8 [ %i.m, %bb.b ], [ undef, %bb.c ], [ undef, %bb.a ]
  %i.r = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %.sink.i.i.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4970
  br label %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.peel

bb.e:                                             ; preds = %.peel.begin
  %i.s = load i8, ptr %i.h, align 1, !alias.scope !4971, !noalias !4965, !noundef !4
  br label %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.peel

_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.peel: ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ undef, %bb.e ], [ %i.p, %bb.d ]
  %i.u = phi i8 [ %i.s, %bb.e ], [ %i.q, %bb.d ]  ; 2 uses
  %i.v = phi i1 [ true, %bb.e ], [ %i.r, %bb.d ]  ; 2 uses
  %i.w = phi i1 [ false, %bb.e ], [ %.sink.i.i.peel, %bb.d ] ; 2 uses
  %.not.i.peel = xor i1 %i.w, true
  %or.cond.i.peel = and i1 %i.v, %.not.i.peel
  br i1 %or.cond.i.peel, label %bb.f, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.peel
  switch i8 %i.u, label %.loopexit [
    i8 32, label %.peel.next.preheader
    i8 10, label %.peel.next.preheader
    i8 9, label %.peel.next.preheader
    i8 13, label %.peel.next.preheader
    i8 91, label %.loopexit38
  ], !prof !215

.peel.next.preheader:                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  store i8 0, ptr %i.g, align 8, !alias.scope !4972, !noalias !4975
  call void @llvm.experimental.noalias.scope.decl(metadata !4976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4977
  call void @_RNvXs_NtCsbbTh99npV2h_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEENtNtNtNtB2k_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %1), !noalias !4965
  %i.x = load i8, ptr %i.b, align 8, !range !211, !noalias !4977, !noundef !4
  switch i8 %i.x, label %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.thread.thread [
    i8 2, label %.thread100
    i8 0, label %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i
  ], !prof !212

_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.thread.thread: ; preds = %.peel.next
  %i.y = load ptr, ptr %i.j, align 8, !noalias !4977, !nonnull !4, !noundef !4
  %i.z = call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.y), !noalias !4965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4977
  br label %bb.g

.thread100:                                       ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4977
  br label %bb.i

_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.peel.next
  %i.aa = load i8, ptr %i.i, align 1, !noalias !4977, !noundef !4 ; 2 uses
  store i8 1, ptr %i.g, align 8, !alias.scope !4962, !noalias !4965
  store i8 %i.aa, ptr %i.h, align 1, !alias.scope !4962, !noalias !4965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4977
  switch i8 %i.aa, label %.loopexit [
    i8 32, label %.peel.next.backedge
    i8 10, label %.peel.next.backedge
    i8 9, label %.peel.next.backedge
    i8 13, label %.peel.next.backedge
    i8 91, label %.loopexit38
  ], !prof !215

.peel.next.backedge:                              ; preds = %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i, %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i, %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i, %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i
  br label %.peel.next, !llvm.loop !4978

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.peel
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.thread.thread, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit
  %.lcssa5875 = phi ptr [ %i.z, %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i.thread.thread ], [ %i.t, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa5875) ]
  br label %bb.j

bb.h:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit
  br i1 %i.v, label %.thread, label %bb.i, !prof !831

.thread:                                          ; preds = %bb.h
  %i.ab = icmp eq i8 %i.u, 91
  br i1 %i.ab, label %.loopexit38, label %.loopexit, !prof !357

bb.i:                                             ; preds = %.thread100, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val23 = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val24 = load i64, ptr %i.ad, align 8, !noundef !4
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val23, i64 noundef %.val24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sink = phi ptr [ %i.ae, %bb.i ], [ %.lcssa5875, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.w

.loopexit38:                                      ; preds = %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i, %bb.f, %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8, !noundef !4
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !11

.loopexit:                                        ; preds = %_RNvXs2_NtCsbbTh99npV2h_10serde_json4readINtB5_6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtB5_4Read4peekCs7gfv9tzbXmh_6yara_x.exit.i, %bb.f, %.thread
  %i.ak = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE17peek_invalid_typeCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(312) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  br label %bb.u

bb.k:                                             ; preds = %.loopexit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 24, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val = load i64, ptr %i.al, align 8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val22 = load i64, ptr %i.am, align 8, !noundef !4
  %i.an = call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val, i64 noundef %.val22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.l:                                             ; preds = %.loopexit38
  store i8 0, ptr %i.g, align 8, !alias.scope !4979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXNvXsh_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBR_6string6StringENtBb_7Visitor9visit_seqINtNtCsbbTh99npV2h_10serde_json2de9SeqAccessINtNtB2W_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %1, i1 noundef zeroext true)
  %i.ap = load i8, ptr %i.ag, align 8, !noundef !4
  %i.aq = add i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ar = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE7end_seqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(312) %1)
          to label %bb.n unwind label %bb.m       ; 5 uses

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #38
          to label %.body.thread unwind label %bb.s
end_hunk_0
