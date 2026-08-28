Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ops-f10fbde8402c1e77.polars_ops.acb822c2e599fb91-cgu.10?download=true
inline.NumInlined: 24369
inline.NumDeleted: 11387
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 111
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RINvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsePnBjWcsLF5_10polars_ops:bb.a
  %i.by = add i64 %i.bi, 4, !dbg !273756
  store i64 %i.by, ptr %i.bc, align 8, !dbg !273756, !alias.scope !273774, !noalias !273759
  %.not.i62.2 = icmp eq i8 %i.bx, 108, !dbg !273760
  br i1 %.not.i62.2, label %.thread, label %bb.k, !dbg !273760, !prof !273762

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i65: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !273775, !noalias !273776
  store i64 5, ptr %i.n, align 8, !dbg !273775, !noalias !273776
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !dbg !273777, !noalias !273778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !273779, !noalias !273776
  br label %bb.af, !dbg !273780

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !273781, !noalias !273776
  store i64 9, ptr %i.m, align 8, !dbg !273781, !noalias !273776
  %i.ca = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !dbg !273782, !noalias !273778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !273783, !noalias !273776
  br label %bb.af, !dbg !273784

bb.l:                                             ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit
  %i.cb = add i64 %i.bi, 1, !dbg !273786          ; 4 uses
  store i64 %i.cb, ptr %i.bc, align 8, !dbg !273786, !alias.scope !273790, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273793), !dbg !273796
  %umax.i50 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.be), !dbg !273797 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273799), !dbg !273802, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273804), !dbg !273807, !noalias !273664
  %exitcond.not.i52.not = icmp ult i64 %i.cb, %i.be, !dbg !273809
  br i1 %exitcond.not.i52.not, label %bb.m, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i56, !dbg !273809

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cb, !dbg !273811
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !273811, !noalias !273812, !noundef !14
  %i.ce = add i64 %i.bi, 2, !dbg !273816          ; 3 uses
  store i64 %i.ce, ptr %i.bc, align 8, !dbg !273816, !alias.scope !273817, !noalias !273818
  %.not.i53 = icmp eq i8 %i.cd, 114, !dbg !273819
  br i1 %.not.i53, label %bb.n, label %bb.r, !dbg !273819, !prof !273762

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273820), !dbg !273802, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273822), !dbg !273807, !noalias !273664
  %exitcond.not.i52.1 = icmp eq i64 %i.ce, %umax.i50, !dbg !273809
  br i1 %exitcond.not.i52.1, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i56, label %bb.o, !dbg !273809

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ce, !dbg !273811
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !273811, !noalias !273824, !noundef !14
  %i.ch = add i64 %i.bi, 3, !dbg !273816          ; 3 uses
  store i64 %i.ch, ptr %i.bc, align 8, !dbg !273816, !alias.scope !273825, !noalias !273818
  %.not.i53.1 = icmp eq i8 %i.cg, 117, !dbg !273819
  br i1 %.not.i53.1, label %bb.p, label %bb.r, !dbg !273819, !prof !273762

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273826), !dbg !273802, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273828), !dbg !273807, !noalias !273664
  %exitcond.not.i52.2 = icmp eq i64 %i.ch, %umax.i50, !dbg !273809
  br i1 %exitcond.not.i52.2, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i56, label %bb.q, !dbg !273809

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ch, !dbg !273811
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !273811, !noalias !273830, !noundef !14
  %i.ck = add i64 %i.bi, 4, !dbg !273816
  store i64 %i.ck, ptr %i.bc, align 8, !dbg !273816, !alias.scope !273831, !noalias !273818
  %.not.i53.2 = icmp eq i8 %i.cj, 101, !dbg !273819
  br i1 %.not.i53.2, label %.thread, label %bb.r, !dbg !273819, !prof !273762

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i56: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !273832, !noalias !273833
  store i64 5, ptr %i.p, align 8, !dbg !273832, !noalias !273833
  %i.cl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !dbg !273834, !noalias !273835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !273836, !noalias !273833
  br label %bb.ai, !dbg !273837

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !273838, !noalias !273833
  store i64 9, ptr %i.o, align 8, !dbg !273838, !noalias !273833
  %i.cm = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !dbg !273839, !noalias !273835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !273840, !noalias !273833
  br label %bb.ai, !dbg !273841

bb.s:                                             ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit
  %i.cn = add i64 %i.bi, 1, !dbg !273842          ; 4 uses
  store i64 %i.cn, ptr %i.bc, align 8, !dbg !273842, !alias.scope !273846, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273849), !dbg !273852
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.be), !dbg !273853 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273855), !dbg !273858, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273860), !dbg !273863, !noalias !273664
  %exitcond.not.i.not = icmp ult i64 %i.cn, %i.be, !dbg !273865
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, !dbg !273865

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cn, !dbg !273867
  %i.cp = load i8, ptr %i.co, align 1, !dbg !273867, !noalias !273868, !noundef !14
  %i.cq = add i64 %i.bi, 2, !dbg !273872          ; 3 uses
  store i64 %i.cq, ptr %i.bc, align 8, !dbg !273872, !alias.scope !273873, !noalias !273874
  %.not.i46 = icmp eq i8 %i.cp, 97, !dbg !273875
  br i1 %.not.i46, label %bb.u, label %bb.aa, !dbg !273875, !prof !273762

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273876), !dbg !273858, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273878), !dbg !273863, !noalias !273664
  %exitcond.not.i.1 = icmp eq i64 %i.cq, %umax.i, !dbg !273865
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v, !dbg !273865

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cq, !dbg !273867
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !273867, !noalias !273880, !noundef !14
  %i.ct = add i64 %i.bi, 3, !dbg !273872          ; 3 uses
  store i64 %i.ct, ptr %i.bc, align 8, !dbg !273872, !alias.scope !273881, !noalias !273874
  %.not.i46.1 = icmp eq i8 %i.cs, 108, !dbg !273875
  br i1 %.not.i46.1, label %bb.w, label %bb.aa, !dbg !273875, !prof !273762

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273882), !dbg !273858, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273884), !dbg !273863, !noalias !273664
  %exitcond.not.i.2 = icmp eq i64 %i.ct, %umax.i, !dbg !273865
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x, !dbg !273865

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ct, !dbg !273867
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !273867, !noalias !273886, !noundef !14
  %i.cw = add i64 %i.bi, 4, !dbg !273872          ; 3 uses
  store i64 %i.cw, ptr %i.bc, align 8, !dbg !273872, !alias.scope !273887, !noalias !273874
  %.not.i46.2 = icmp eq i8 %i.cv, 115, !dbg !273875
  br i1 %.not.i46.2, label %bb.y, label %bb.aa, !dbg !273875, !prof !273762

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273888), !dbg !273858, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273890), !dbg !273863, !noalias !273664
  %exitcond.not.i.3 = icmp eq i64 %i.cw, %umax.i, !dbg !273865
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z, !dbg !273865

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cw, !dbg !273867
  %i.cy = load i8, ptr %i.cx, align 1, !dbg !273867, !noalias !273892, !noundef !14
  %i.cz = add i64 %i.bi, 5, !dbg !273872
  store i64 %i.cz, ptr %i.bc, align 8, !dbg !273872, !alias.scope !273893, !noalias !273874
  %.not.i46.3 = icmp eq i8 %i.cy, 101, !dbg !273875
  br i1 %.not.i46.3, label %.thread, label %bb.aa, !dbg !273875, !prof !273762

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !273894, !noalias !273895
  store i64 5, ptr %i.r, align 8, !dbg !273894, !noalias !273895
  %i.da = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !dbg !273896, !noalias !273897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !273898, !noalias !273895
  br label %bb.aj, !dbg !273899

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !273900, !noalias !273895
  store i64 9, ptr %i.q, align 8, !dbg !273900, !noalias !273895
  %i.db = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !dbg !273901, !noalias !273897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !273902, !noalias !273895
  br label %bb.aj, !dbg !273903

bb.ab:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit
  %i.dc = add i64 %i.bi, 1, !dbg !273904
  store i64 %i.dc, ptr %i.bc, align 8, !dbg !273904, !alias.scope !273908, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !273911, !noalias !273710
  call fastcc void @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !dbg !273912, !noalias !273664, !inline_history !273712
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !273911, !range !152030, !noalias !273710, !noundef !14 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 3, !dbg !273911
  %i.df = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !273915 ; 2 uses
  br i1 %i.de, label %bb.ak, label %bb.al, !dbg !273917

bb.ac:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit
  %i.dg = add i64 %i.bi, 1, !dbg !273918
  store i64 %i.dg, ptr %i.bc, align 8, !dbg !273918, !alias.scope !273922, !noalias !273664
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !273925
  store i64 0, ptr %i.dh, align 8, !dbg !273925, !alias.scope !273668, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !273929, !noalias !273710
  call void @_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !dbg !273930, !noalias !273664, !inline_history !273712
  %i.di = load i64, ptr %i.ay, align 8, !dbg !273929, !range !150733, !noalias !273710, !noundef !14 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 2, !dbg !273929
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !273915
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !273915, !noalias !273710 ; 3 uses
  br i1 %i.dj, label %bb.aq, label %bb.ar, !dbg !273917

bb.ad:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !273931 ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 8, !dbg !273931, !alias.scope !273668, !noalias !273664, !noundef !14
  %i.do = add i8 %i.dn, -1, !dbg !273931          ; 2 uses
  store i8 %i.do, ptr %i.dm, align 8, !dbg !273931, !alias.scope !273668, !noalias !273664
  %i.dp = icmp eq i8 %i.do, 0, !dbg !273932
  br i1 %i.dp, label %bb.ba, label %bb.bb, !dbg !273932, !prof !203

bb.ae:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !273931 ; 4 uses
  %i.dr = load i8, ptr %i.dq, align 8, !dbg !273931, !alias.scope !273668, !noalias !273664, !noundef !14
  %i.ds = add i8 %i.dr, -1, !dbg !273931          ; 2 uses
  store i8 %i.ds, ptr %i.dq, align 8, !dbg !273931, !alias.scope !273668, !noalias !273664
  %i.dt = icmp eq i8 %i.ds, 0, !dbg !273932
  br i1 %i.dt, label %bb.cm, label %bb.cn, !dbg !273932, !prof !203

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i65
  %.sroa.0.1.i64.ph = phi ptr [ %i.bz, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i65 ], [ %i.ca, %bb.k ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !273933
  store ptr %.sroa.0.1.i64.ph, ptr %i.du, align 8, !dbg !273933, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !273933, !alias.scope !273664, !noalias !273668
  br label %bb.ah, !dbg !273935

bb.ag:                                            ; preds = %.thread265, %.thread262
  %.sroa.24.sroa.23.sroa.0.0.in.in = phi i64 [ %.sroa.24.sroa.23.sroa.0.4.in.in, %.thread265 ], [ %.sroa.24.sroa.23.sroa.0.3.in.in, %.thread262 ] ; 3 uses
  %.sroa.49.0 = phi i64 [ %.sroa.49.3, %.thread265 ], [ %.sroa.49.2, %.thread262 ], !dbg !273937
  %.sroa.41.0 = phi i64 [ %.sroa.41.4, %.thread265 ], [ %.sroa.41.3, %.thread262 ], !dbg !273937
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread265 ], [ %.sroa.0.3, %.thread262 ], !dbg !273937 ; 2 uses
  %i.dv = icmp eq i64 %.sroa.0.0, -9223372036854775803, !dbg !273938
  br i1 %i.dv, label %._crit_edge, label %.thread, !dbg !273940, !prof !273941

._crit_edge:                                      ; preds = %bb.ag
  %i.dw = inttoptr i64 %.sroa.24.sroa.23.sroa.0.0.in.in to ptr, !dbg !273942
  br label %bb.ev, !dbg !273940

bb.ah:                                            ; preds = %bb.ew, %bb.cm, %bb.ba, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51), !dbg !273943
  br label %_RINvXs5_NtCsk1caaszg7Cl_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit, !dbg !273935

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i56
  %.sroa.0.1.i55.ph = phi ptr [ %i.cl, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i56 ], [ %i.cm, %bb.r ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !273944
  store ptr %.sroa.0.1.i55.ph, ptr %i.dx, align 8, !dbg !273944, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !273944, !alias.scope !273664, !noalias !273668
  br label %bb.ah, !dbg !273935

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i48.ph = phi ptr [ %i.da, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.db, %bb.aa ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !273946
  store ptr %.sroa.0.1.i48.ph, ptr %i.dy, align 8, !dbg !273946, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !273946, !alias.scope !273664, !noalias !273668
  br label %bb.ah, !dbg !273935

bb.ak:                                            ; preds = %bb.ab
  %i.dz = load ptr, ptr %i.df, align 8, !dbg !273948, !noalias !273710, !nonnull !14, !align !127, !noundef !14
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !273949
  store ptr %i.dz, ptr %i.ea, align 8, !dbg !273949, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !273949, !alias.scope !273664, !noalias !273668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !273951, !noalias !273710
  br label %bb.ah, !dbg !273935

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.df, align 8, !dbg !273952, !noalias !273710 ; 5 uses
  switch i64 %i.dd, label %default.unreachable712 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43
    i64 2, label %bb.ap
  ], !dbg !273953

default.unreachable712:                           ; preds = %bb.ex, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.eb = bitcast i64 %.sroa.4.0.copyload to double, !dbg !273957
  %i.ec = tail call double @llvm.fabs.f64(double %i.eb), !dbg !273958
  %i.ed = fcmp ueq double %i.ec, +inf, !dbg !273973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !273974, !noalias !273975
  br i1 %i.ed, label %bb.an, label %bb.ao, !dbg !273981

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx5.i.i38 = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !273982
  %.sroa.5.sroa.0.0.copyload9.i.i39 = load i64, ptr %.sroa.5.0..sroa_idx5.i.i38, align 8, !dbg !273982, !alias.scope !273985, !noalias !273989
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !273982
  %.sroa.5.sroa.5.0.copyload10.i.i41561 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i40, align 8, !dbg !273982, !alias.scope !273985, !noalias !273989
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32, !dbg !273991

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.s, align 8, !dbg !273974, !noalias !273975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273992), !dbg !273993, !noalias !273664
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5value5ValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s), !dbg !273991, !noalias !273994
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32, !dbg !273991

_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32: ; preds = %bb.ao, %bb.an
  %i.ee = phi i64 [ %.sroa.5.sroa.5.0.copyload10.i.i41561, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ], !dbg !273995
  %.sroa.5.sroa.0.0.i.i34 = phi i64 [ %.sroa.5.sroa.0.0.copyload9.i.i39, %bb.an ], [ 2, %bb.ao ], !dbg !273995 ; 2 uses
  %.sroa.0.0.i.i35 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ], !dbg !273995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !273996, !noalias !273975
  br label %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43, !dbg !273997

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i27 = lshr i64 %.sroa.4.0.copyload, 63, !dbg !273998
  br label %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43, !dbg !274007

_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43: ; preds = %bb.al, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32, %bb.ap
  %.sroa.24.sroa.23.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i34, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32 ], [ 0, %bb.ap ], [ 0, %bb.al ], !dbg !274008
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i34, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32 ], [ %.lobit.i.i27, %bb.ap ], [ 0, %bb.al ], !dbg !274008
  %.sroa.41.1 = phi i64 [ %i.ee, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ], !dbg !274008
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i35, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i32 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ], !dbg !274008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !273951, !noalias !273710
  br label %.thread, !dbg !273951

bb.aq:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !274009
  store ptr %i.dl, ptr %i.ef, align 8, !dbg !274009, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !274009, !alias.scope !273664, !noalias !273668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !274011, !noalias !273710
  br label %bb.ah, !dbg !273935

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !273952
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !273952, !noalias !273710 ; 11 uses
  %i.eg = trunc nuw i64 %i.di to i1, !dbg !273917
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %.not.i.i = icmp slt i64 %.sroa.4.0.copyload.i, 0 ; 2 uses
  br i1 %i.eg, label %bb.as, label %bb.aw, !dbg !273917

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i.i, label %bb.av, label %bb.at, !dbg !274012, !prof !150638

bb.at:                                            ; preds = %bb.as
  %i.eh = icmp eq i64 %.sroa.4.0.copyload.i, 0, !dbg !274050
  br i1 %i.eh, label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit, label %bb.au, !dbg !274050

bb.au:                                            ; preds = %bb.at
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !274051, !noalias !274052
  %i.ei = call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !dbg !274058, !noalias !274052 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null, !dbg !274063
  br i1 %i.ej, label %bb.av, label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split, !dbg !274064

bb.av:                                            ; preds = %bb.au, %bb.as
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.au ], [ 0, %bb.as ]
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.4.0.copyload.i) #55, !dbg !274065, !noalias !274067
  unreachable, !dbg !274065

bb.aw:                                            ; preds = %bb.ar
  br i1 %.not.i.i, label %bb.az, label %bb.ax, !dbg !274068, !prof !150638

bb.ax:                                            ; preds = %bb.aw
  %i.ek = icmp eq i64 %.sroa.4.0.copyload.i, 0, !dbg !274091
  br i1 %i.ek, label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit, label %bb.ay, !dbg !274091

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !274092, !noalias !274093
  %i.el = call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !dbg !274102, !noalias !274093 ; 2 uses
  %i.em = icmp eq ptr %i.el, null, !dbg !274107
  br i1 %i.em, label %bb.az, label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split, !dbg !274108

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.ay ], [ 0, %bb.aw ]
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.4.0.copyload.i) #55, !dbg !274109, !noalias !274110
  unreachable, !dbg !274109

_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split: ; preds = %bb.ay, %bb.au
  %.sink770 = phi ptr [ %i.ei, %bb.au ], [ %i.el, %bb.ay ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink770, ptr nonnull readonly align 1 %i.dl, i64 %.sroa.4.0.copyload.i, i1 false), !dbg !273937, !noalias !273664
  %i.en = ptrtoint ptr %.sink770 to i64, !dbg !273937
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit, !dbg !274011

_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split, %bb.ax, %bb.at
  %.sroa.41.2 = phi i64 [ 1, %bb.at ], [ 1, %bb.ax ], [ %i.en, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split ], !dbg !273937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !274011, !noalias !273710
  br label %.thread, !dbg !274011

bb.ba:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !274111, !noalias !273710
  store i64 24, ptr %i.ax, align 8, !dbg !274111, !noalias !273710
  %i.eo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax), !dbg !274112, !noalias !273664, !inline_history !273712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !274113, !noalias !273710
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !274114
  store ptr %i.eo, ptr %i.ep, align 8, !dbg !274114, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !274114, !alias.scope !273664, !noalias !273668
  br label %bb.ah, !dbg !273935

bb.bb:                                            ; preds = %bb.ad
  %i.eq = add i64 %i.bi, 1, !dbg !274115          ; 3 uses
  store i64 %i.eq, ptr %i.bc, align 8, !dbg !274115, !alias.scope !274119, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !274122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !274123, !noalias !274126
  store i64 0, ptr %i.u, align 8, !dbg !274130, !noalias !274126
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !274130 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.er, align 8, !dbg !274130, !noalias !274126
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !274130 ; 3 uses
  store i64 0, ptr %i.es, align 8, !dbg !274130, !noalias !274126
  %i.et = icmp ult i64 %i.eq, %i.be, !dbg !274133
  br i1 %i.et, label %.lr.ph.i.i.i89.lr.ph, label %.loopexit22.i.i, !dbg !274133

.lr.ph.i.i.i89.lr.ph:                             ; preds = %bb.bb
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx2.i25 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.3.i19.sroa.4.0..sroa.3.0..sroa_idx2.i25.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %.lr.ph.i.i.i89, !dbg !274133

.lr.ph.i.i.i89:                                   ; preds = %.lr.ph.i.i.i89.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueE8push_mutCsePnBjWcsLF5_10polars_ops.exit.i
  %.promoted.i.i.i88340 = phi i64 [ %i.eq, %.lr.ph.i.i.i89.lr.ph ], [ %.promoted.i.i.i88, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueE8push_mutCsePnBjWcsLF5_10polars_ops.exit.i ]
  %i.eu = phi i64 [ %i.be, %.lr.ph.i.i.i89.lr.ph ], [ %i.gb, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueE8push_mutCsePnBjWcsLF5_10polars_ops.exit.i ] ; 4 uses
  %.sroa.5134.0339 = phi i1 [ true, %.lr.ph.i.i.i89.lr.ph ], [ false, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueE8push_mutCsePnBjWcsLF5_10polars_ops.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !274149), !dbg !274152, !noalias !274153
  %i.ev = load ptr, ptr %i.bg, align 8, !alias.scope !274154, !noalias !274159, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.bc, !dbg !274133

bb.bc:                                            ; preds = %bb.bd, %.lr.ph.i.i.i89
  %i.ew = phi i64 [ %.promoted.i.i.i88340, %.lr.ph.i.i.i89 ], [ %i.ez, %bb.bd ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !274169), !dbg !274170, !noalias !274153
  call void @llvm.experimental.noalias.scope.decl(metadata !274171), !dbg !274172, !noalias !274153
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew, !dbg !274173
  %i.ey = load i8, ptr %i.ex, align 1, !dbg !274173, !noalias !274174, !noundef !14 ; 2 uses
  switch i8 %i.ey, label %bb.be [
    i8 32, label %bb.bd
    i8 10, label %bb.bd
    i8 9, label %bb.bd
    i8 13, label %bb.bd
    i8 93, label %bb.bu
  ], !dbg !274175

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.ez = add i64 %i.ew, 1, !dbg !274176          ; 3 uses
  store i64 %i.ez, ptr %i.bc, align 8, !dbg !274176, !alias.scope !274180, !noalias !274183
  %exitcond.not.i.i.i90 = icmp eq i64 %i.ez, %i.eu, !dbg !274133
  br i1 %exitcond.not.i.i.i90, label %.loopexit22.i.i, label %bb.bc, !dbg !274133

.loopexit22.i.i:                                  ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueE8push_mutCsePnBjWcsLF5_10polars_ops.exit.i, %bb.bd, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !274184, !noalias !274185
  store i64 2, ptr %i.d, align 8, !dbg !274184, !noalias !274185
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc92 unwind label %.loopexit.split-lp, !dbg !274186, !inline_history !274187

.noexc92:                                         ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !274188, !noalias !274185
  br label %bb.bl, !dbg !274189

bb.be:                                            ; preds = %bb.bc
  br i1 %.sroa.5134.0339, label %.loopexit, label %bb.bf, !dbg !274191

bb.bf:                                            ; preds = %bb.be
  %i.fb = icmp eq i8 %i.ey, 44, !dbg !274193
  br i1 %i.fb, label %bb.bg, label %bb.bi, !dbg !274193, !prof !451

bb.bg:                                            ; preds = %bb.bf
  %i.fc = add i64 %i.ew, 1, !dbg !274194          ; 3 uses
  store i64 %i.fc, ptr %i.bc, align 8, !dbg !274194, !alias.scope !274199, !noalias !274185
  call void @llvm.experimental.noalias.scope.decl(metadata !274202), !dbg !274205, !noalias !274153
  %i.fd = icmp ult i64 %i.fc, %i.eu, !dbg !274206
  br i1 %i.fd, label %.lr.ph.i7.i.i, label %.loopexit.i.i91, !dbg !274206

.lr.ph.i7.i.i:                                    ; preds = %bb.bg, %bb.bh
  %i.fe = phi i64 [ %i.fh, %bb.bh ], [ %i.fc, %bb.bg ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fe, !dbg !274211
  %i.fg = load i8, ptr %i.ff, align 1, !dbg !274211, !noalias !274212, !noundef !14
  switch i8 %i.fg, label %.loopexit [
    i8 32, label %bb.bh
    i8 10, label %bb.bh
    i8 9, label %bb.bh
    i8 13, label %bb.bh
    i8 93, label %bb.bj
  ], !dbg !274220, !prof !274221

bb.bh:                                            ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.fh = add i64 %i.fe, 1, !dbg !274222          ; 3 uses
  store i64 %i.fh, ptr %i.bc, align 8, !dbg !274222, !alias.scope !274226, !noalias !274229
  %exitcond.not.i8.i.i = icmp eq i64 %i.fh, %i.eu, !dbg !274206
  br i1 %exitcond.not.i8.i.i, label %.loopexit.i.i91, label %.lr.ph.i7.i.i, !dbg !274206

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !274230, !noalias !274185
  store i64 7, ptr %i.a, align 8, !dbg !274230, !noalias !274185
  %i.fi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc93 unwind label %.loopexit.split-lp, !dbg !274231, !inline_history !274187

.noexc93:                                         ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !274232, !noalias !274185
  br label %bb.bl, !dbg !274233

.loopexit.i.i91:                                  ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !274234, !noalias !274185
  store i64 5, ptr %i.b, align 8, !dbg !274234, !noalias !274185
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc94 unwind label %.loopexit.split-lp, !dbg !274235, !inline_history !274187

.noexc94:                                         ; preds = %.loopexit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !274236, !noalias !274185
  br label %bb.bl, !dbg !274237

bb.bj:                                            ; preds = %.lr.ph.i7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !274238, !noalias !274185
  store i64 21, ptr %i.c, align 8, !dbg !274238, !noalias !274185
  %i.fk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc95 unwind label %.loopexit.split-lp, !dbg !274239, !inline_history !274187

.noexc95:                                         ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !274240, !noalias !274185
  br label %bb.bl, !dbg !274241

.loopexit:                                        ; preds = %.lr.ph.i7.i.i, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !274242, !noalias !274243
  invoke fastcc void @_RINvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) #60
          to label %.noexc96 unwind label %.loopexit271, !dbg !274244, !inline_history !274187

.noexc96:                                         ; preds = %.loopexit
  %i.fl = load i64, ptr %i.e, align 8, !dbg !274242, !range !162933, !noalias !274243, !noundef !14 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, -9223372036854775803, !dbg !274242
  %i.fn = load ptr, ptr %.sroa.4159.0..sroa_idx, align 8, !dbg !274248, !noalias !274243 ; 2 uses
  br i1 %i.fm, label %bb.bk, label %bb.bq, !dbg !274250

bb.bk:                                            ; preds = %.noexc96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !274251, !noalias !274243
  br label %bb.bl, !dbg !274252

.loopexit271:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsePnBjWcsLF5_10polars_ops:bb.a

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueE8push_mutCsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.br, %bb.bq
  %i.fy = load ptr, ptr %i.er, align 8, !dbg !274335, !alias.scope !274319, !noalias !274322, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fy, i64 %i.ft, !dbg !274344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fz, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !274347, !noalias !274153
  %i.ga = add i64 %i.ft, 1, !dbg !274349
  store i64 %i.ga, ptr %i.es, align 8, !dbg !274349, !alias.scope !274319, !noalias !274322
  %i.gb = load i64, ptr %i.bd, align 8, !alias.scope !274350, !noalias !274159, !noundef !14 ; 2 uses
  %.promoted.i.i.i88 = load i64, ptr %i.bc, align 8, !alias.scope !274352, !noalias !274183 ; 2 uses
  %i.gc = icmp ult i64 %.promoted.i.i.i88, %i.gb, !dbg !274133
  br i1 %i.gc, label %.lr.ph.i.i.i89, label %.loopexit22.i.i, !dbg !274133

bb.bu:                                            ; preds = %bb.bc
  %.sroa.0139.0.copyload = load ptr, ptr %i.u, align 8, !dbg !274353, !noalias !274126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !dbg !274353, !noalias !274354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !274254, !noalias !274126
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit, !dbg !274254

bb.bv:                                            ; preds = %.body.i20
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !274355, !noalias !274153, !inline_history !274255
  unreachable, !dbg !274355

_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.bu
  %.promoted.i.i11 = phi i64 [ %.promoted.i.i11.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit.i ], [ %i.ew, %bb.bu ] ; 2 uses
  %i.ge = phi i64 [ %.pre386, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit.i ], [ %i.eu, %bb.bu ] ; 4 uses
  %.sroa.6104.0 = phi ptr [ %.sroa.9137.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit.i ], [ %.sroa.0139.0.copyload, %bb.bu ], !dbg !274356
  %.sroa.0103.0 = phi i64 [ -9223372036854775803, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit.i ], [ -9223372036854775804, %bb.bu ], !dbg !274356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !274357
  %i.gf = load i8, ptr %i.dm, align 8, !dbg !274358, !alias.scope !273668, !noalias !273664, !noundef !14
  %i.gg = add i8 %i.gf, 1, !dbg !274358
  store i8 %i.gg, ptr %i.dm, align 8, !dbg !274358, !alias.scope !273668, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !274360, !noalias !273710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !274361, !noalias !273710
  store i64 %.sroa.0103.0, ptr %i.av, align 8, !dbg !274361, !noalias !273710
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !274361
  store ptr %.sroa.6104.0, ptr %.sroa.6104.0..sroa_idx, align 8, !dbg !274361, !noalias !273710
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !274361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !dbg !274361, !noalias !273710
  call void @llvm.experimental.noalias.scope.decl(metadata !274362), !dbg !274363
  call void @llvm.experimental.noalias.scope.decl(metadata !274364), !dbg !274365, !noalias !273664
  %i.gh = icmp ult i64 %.promoted.i.i11, %i.ge, !dbg !274368
  br i1 %i.gh, label %.lr.ph.i.i14, label %.loopexit.i12, !dbg !274368

.lr.ph.i.i14:                                     ; preds = %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit
  %i.gi = load ptr, ptr %i.bg, align 8, !alias.scope !274297, !noalias !274306, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.bw, !dbg !274368

bb.bw:                                            ; preds = %bb.bx, %.lr.ph.i.i14
  %i.gj = phi i64 [ %.promoted.i.i11, %.lr.ph.i.i14 ], [ %i.gm, %bb.bx ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !274373), !dbg !274374, !noalias !273664
  call void @llvm.experimental.noalias.scope.decl(metadata !274375), !dbg !274376, !noalias !273664
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj, !dbg !274377
  %i.gl = load i8, ptr %i.gk, align 1, !dbg !274377, !noalias !274378, !noundef !14
  switch i8 %i.gl, label %bb.by [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 93, label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit.thread
    i8 44, label %bb.bz
  ], !dbg !274379, !prof !273621

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.gm = add i64 %i.gj, 1, !dbg !274380          ; 3 uses
  store i64 %i.gm, ptr %i.bc, align 8, !dbg !274380, !alias.scope !274384, !noalias !274311
  %exitcond.not.i.i15 = icmp eq i64 %i.gm, %i.ge, !dbg !274368
  br i1 %exitcond.not.i.i15, label %.loopexit.i12, label %bb.bw, !dbg !274368

.loopexit.i12:                                    ; preds = %bb.bx, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !274387, !noalias !274388
  store i64 2, ptr %i.v, align 8, !dbg !274387, !noalias !274388
  %i.gn = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc16 unwind label %bb.cf, !dbg !274389

.noexc16:                                         ; preds = %.loopexit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !274390, !noalias !274388
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit, !dbg !274391

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !274392, !noalias !274388
  store i64 22, ptr %i.w, align 8, !dbg !274392, !noalias !274388
  %i.go = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc17 unwind label %bb.cf, !dbg !274393

.noexc17:                                         ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !274394, !noalias !274388
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit, !dbg !274395

bb.bz:                                            ; preds = %bb.bw
  %i.gp = add i64 %i.gj, 1, !dbg !274396          ; 3 uses
  store i64 %i.gp, ptr %i.bc, align 8, !dbg !274396, !alias.scope !274401, !noalias !273664
  call void @llvm.experimental.noalias.scope.decl(metadata !274404), !dbg !274407, !noalias !273664
  %i.gq = icmp ult i64 %i.gp, %i.ge, !dbg !274408
  br i1 %i.gq, label %.lr.ph.i12.i, label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit16.thread.i, !dbg !274408

.lr.ph.i12.i:                                     ; preds = %bb.bz, %bb.ca
  %i.gr = phi i64 [ %i.gu, %bb.ca ], [ %i.gp, %bb.bz ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gr, !dbg !274413
  %i.gt = load i8, ptr %i.gs, align 1, !dbg !274413, !noalias !274414, !noundef !14
  switch i8 %i.gt, label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit16.thread.i [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 93, label %bb.cb
  ], !dbg !274422

bb.ca:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.gu = add i64 %i.gr, 1, !dbg !274423          ; 3 uses
  store i64 %i.gu, ptr %i.bc, align 8, !dbg !274423, !alias.scope !274427, !noalias !274430
  %exitcond.not.i13.i = icmp eq i64 %i.gu, %i.ge, !dbg !274408
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit16.thread.i, label %.lr.ph.i12.i, !dbg !274408

_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit16.thread.i: ; preds = %bb.ca, %.lr.ph.i12.i, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !274431, !noalias !274388
  store i64 22, ptr %i.x, align 8, !dbg !274431, !noalias !274388
  %i.gv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.cd unwind label %bb.ce, !dbg !274432, !noalias !273664

bb.cb:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !274433, !noalias !274388
  store i64 21, ptr %i.y, align 8, !dbg !274433, !noalias !274388
  %i.gw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.cc unwind label %bb.ce, !dbg !274434, !noalias !273664

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !274435, !noalias !274388
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit, !dbg !274436

bb.cd:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !274437, !noalias !274388
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit, !dbg !274438

bb.ce:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsePnBjWcsLF5_10polars_ops.exit16.thread.i, %bb.cb
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !274439

bb.cf:                                            ; preds = %bb.by, %.loopexit.i12
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !274440

.body:                                            ; preds = %bb.ce, %bb.cf
  %eh.lpad-body = phi { ptr, i32 } [ %i.gy, %bb.cf ], [ %i.gx, %bb.ce ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsk1caaszg7Cl_10serde_json5value5ValueNtNtB16_5error5ErrorEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(72) %i.av) #59
          to label %common.resume unwind label %bb.ch, !dbg !274440, !noalias !273664, !inline_history !273712

_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit: ; preds = %.noexc17, %.noexc16, %bb.cc, %bb.cd
  %.sroa.0.0.i13 = phi ptr [ %i.go, %.noexc17 ], [ %i.gw, %bb.cc ], [ %i.gn, %.noexc16 ], [ %i.gv, %bb.cd ], !dbg !274441 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i64 72, i1 false), !dbg !274360, !noalias !273710
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aw, i64 72, !dbg !274360
  store ptr %.sroa.0.0.i13, ptr %i.gz, align 8, !dbg !274360, !noalias !273710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !274440, !noalias !273710
  %i.ha = load i64, ptr %i.aw, align 8, !dbg !274360, !range !162933, !noalias !273710, !noundef !14
  %i.hb = icmp eq i64 %i.ha, -9223372036854775803, !dbg !274360
  br i1 %i.hb, label %bb.ci, label %bb.cg, !dbg !274442

_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit.thread: ; preds = %bb.bw
  %i.hc = add i64 %i.gj, 1, !dbg !274443
  store i64 %i.hc, ptr %i.bc, align 8, !dbg !274443, !alias.scope !274447, !noalias !273664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i64 72, i1 false), !dbg !274360, !noalias !273710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !274440, !noalias !273710
  %i.hd = load i64, ptr %i.aw, align 8, !dbg !274360, !range !162933, !noalias !273710, !noundef !14 ; 2 uses
  %i.he = icmp eq i64 %i.hd, -9223372036854775803, !dbg !274360
  %i.hf = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !274450 ; 2 uses
  br i1 %i.he, label %.thread426, label %.thread424, !dbg !274442

.thread426:                                       ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit.thread
  %i.hg = load ptr, ptr %i.hf, align 8, !dbg !274451, !noalias !273710, !nonnull !14, !align !127, !noundef !14
  %i.hh = ptrtoint ptr %i.hg to i64, !dbg !274452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !274454
  br label %.thread262, !dbg !274454

.thread424:                                       ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit.thread
  %.sroa.24.0.copyload495 = load i64, ptr %i.hf, align 8, !dbg !274455, !noalias !273710
  %.sroa.41.0..sroa_idx498.a = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !274455
  %.sroa.41.0.copyload499.a = load i64, ptr %.sroa.41.0..sroa_idx498.a, align 8, !dbg !274455, !noalias !273710
  %.sroa.49.0..sroa_idx502.a = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !274455
  %.sroa.49.0.copyload503.a = load i64, ptr %.sroa.49.0..sroa_idx502.a, align 8, !dbg !274455, !noalias !273710
  %.sroa.51.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !274455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx506, i64 40, i1 false), !dbg !274455, !noalias !273710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !274454
  br label %.thread262, !dbg !274454

bb.cg:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit
  %i.hi = ptrtoint ptr %.sroa.0.0.i13 to i64, !dbg !274452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !274454
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5value5ValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(72) %i.aw), !dbg !274454, !noalias !273664, !inline_history !273712
  br label %.thread262, !dbg !274454

bb.ch:                                            ; preds = %bb.en, %.body
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !274456, !noalias !273664, !inline_history !273712
  unreachable, !dbg !274456

.thread262:                                       ; preds = %.thread426, %.thread424, %bb.cg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10
  %.sroa.24.sroa.23.sroa.0.3.in.in = phi i64 [ %i.hm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10 ], [ %i.hi, %bb.cg ], [ %i.hh, %.thread426 ], [ %.sroa.24.0.copyload495, %.thread424 ]
  %.sroa.49.2 = phi i64 [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10 ], [ undef, %bb.cg ], [ undef, %.thread426 ], [ %.sroa.49.0.copyload503.a, %.thread424 ], !dbg !273937
  %.sroa.41.3 = phi i64 [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10 ], [ undef, %bb.cg ], [ undef, %.thread426 ], [ %.sroa.41.0.copyload499.a, %.thread424 ], !dbg !273937
  %.sroa.0.3 = phi i64 [ -9223372036854775803, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10 ], [ -9223372036854775803, %bb.cg ], [ -9223372036854775803, %.thread426 ], [ %i.hd, %.thread424 ], !dbg !274450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !274454, !noalias !273710
  br label %bb.ag, !dbg !274454

bb.ci:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsePnBjWcsLF5_10polars_ops.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !274451
  %i.hl = load ptr, ptr %i.hk, align 8, !dbg !274451, !noalias !273710, !nonnull !14, !align !127, !noundef !14
  %i.hm = ptrtoint ptr %i.hl to i64, !dbg !274452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !274454
  call void @llvm.experimental.noalias.scope.decl(metadata !274457), !dbg !274460, !noalias !273664
  call void @llvm.experimental.noalias.scope.decl(metadata !274463), !dbg !274466, !noalias !273664
  %i.hn = load i64, ptr %.sroa.0.0.i13, align 8, !dbg !274468, !range !162904, !alias.scope !274470, !noalias !273664, !noundef !14
  switch i64 %i.hn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10 [
    i64 0, label %bb.cj
    i64 1, label %bb.ck
  ], !dbg !274468

bb.cj:                                            ; preds = %bb.ci
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13, i64 16, !dbg !274468
  %.val2.i.i.i.i7 = load i64, ptr %i.ho, align 8, !dbg !274468, !alias.scope !274470, !noalias !273664, !noundef !14 ; 2 uses
  %i.hp = icmp eq i64 %.val2.i.i.i.i7, 0, !dbg !274471
  br i1 %i.hp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i8, !dbg !274471

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i8: ; preds = %bb.cj
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13, i64 8, !dbg !274468
  %.val1.i.i.i.i9 = load ptr, ptr %i.hq, align 8, !dbg !274468, !alias.scope !274470, !noalias !273664, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i9, i64 noundef %.val2.i.i.i.i7, i64 noundef 1) #50, !dbg !274474, !noalias !274479
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10, !dbg !274480

bb.ck:                                            ; preds = %bb.ci
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13, i64 8, !dbg !274468
  %.val.i.i.i.i6 = load ptr, ptr %i.hr, align 8, !dbg !274468, !alias.scope !274470, !noalias !273664, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsePnBjWcsLF5_10polars_ops(ptr nonnull %.val.i.i.i.i6)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10 unwind label %bb.cl, !dbg !274468, !noalias !273664

bb.cl:                                            ; preds = %bb.ck
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i13, i64 noundef 40, i64 noundef 8) #50, !dbg !274481, !noalias !273664
  br label %common.resume, !dbg !274460

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit10: ; preds = %bb.ci, %bb.cj, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i8, %bb.ck
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i13, i64 noundef 40, i64 noundef 8) #50, !dbg !274487, !noalias !273664
  br label %.thread262, !dbg !274454

bb.cm:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !274111, !noalias !273710
  store i64 24, ptr %i.au, align 8, !dbg !274111, !noalias !273710
  %i.ht = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.au), !dbg !274112, !noalias !273664, !inline_history !273712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !274113, !noalias !273710
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !274114
  store ptr %i.ht, ptr %i.hu, align 8, !dbg !274114, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !274114, !alias.scope !273664, !noalias !273668
  br label %bb.ah, !dbg !273935

bb.cn:                                            ; preds = %bb.ae
  %i.hv = add i64 %i.bi, 1, !dbg !274493
  store i64 %i.hv, ptr %i.bc, align 8, !dbg !274493, !alias.scope !274497, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !274500, !noalias !273710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274501), !dbg !274504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %1, ptr %i.al, align 8, !noalias !274505
  %i.hw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 1, ptr %i.hw, align 8, !noalias !274505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274507), !dbg !274510, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !274513, !noalias !274516
  call fastcc void @_RINvNvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB8_9MapAccesspENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al), !dbg !274513, !noalias !274518, !inline_history !274519
  %i.hx = load i8, ptr %i.aa, align 8, !dbg !274513, !range !151352, !noalias !274516, !noundef !14
  %i.hy = trunc nuw i8 %i.hx to i1, !dbg !274513
  br i1 %i.hy, label %bb.co, label %bb.cp, !dbg !274520

bb.co:                                            ; preds = %bb.cn
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !274522
  %i.ia = load ptr, ptr %i.hz, align 8, !dbg !274522, !noalias !274516, !nonnull !14, !align !127, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !274523, !noalias !274516
  br label %bb.db, !dbg !274524

bb.cp:                                            ; preds = %bb.cn
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 1, !dbg !274525
  %i.ic = load i8, ptr %i.ib, align 1, !dbg !274525, !range !151352, !noalias !274516, !noundef !14
  %i.id = trunc nuw i8 %i.ic to i1, !dbg !274525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !274523, !noalias !274516
  br i1 %i.id, label %bb.cq, label %bb.dd, !dbg !274520

bb.cq:                                            ; preds = %bb.cp
  %i.ie = load ptr, ptr %i.al, align 8, !dbg !274526, !alias.scope !274507, !noalias !274527, !nonnull !14, !align !127, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274528), !dbg !274531, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274532), !dbg !274535, !noalias !273664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274539), !dbg !274542, !noalias !273664
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24, !dbg !274547
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 40, !dbg !274552 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !dbg !274552, !alias.scope !274555, !noalias !274558, !noundef !14
  %i.ii = add i64 %i.ih, 1, !dbg !274552
  store i64 %i.ii, ptr %i.ig, align 8, !dbg !274552, !alias.scope !274555, !noalias !274558
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 16, !dbg !274562
  store i64 0, ptr %i.ij, align 8, !dbg !274562, !alias.scope !274566, !noalias !274558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !274567, !noalias !274568
  call void @_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.if, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ie), !dbg !274569, !noalias !274558, !inline_history !274519
  %i.ik = load i64, ptr %i.z, align 8, !dbg !274567, !range !150733, !noalias !274568, !noundef !14 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 2, !dbg !274567
  %i.im = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !274570
  %i.in = load ptr, ptr %i.im, align 8, !dbg !274570, !noalias !274568 ; 4 uses
  br i1 %i.il, label %bb.da, label %bb.cr, !dbg !274572

bb.cr:                                            ; preds = %bb.cq
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !274573
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !dbg !274573, !noalias !274568 ; 10 uses
  %i.io = trunc nuw i64 %i.ik to i1, !dbg !274572
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.in) ], !noalias !273664
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.sroa.4.0.copyload.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.io, label %bb.cs, label %bb.cw, !dbg !274572

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cv, label %bb.ct, !dbg !274574, !prof !150638

bb.ct:                                            ; preds = %bb.cs
  %i.ip = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0, !dbg !274601
  br i1 %i.ip, label %bb.dc, label %bb.cu, !dbg !274601

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !274602, !noalias !274603, !inline_history !274519
  %i.iq = call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !dbg !274609, !noalias !274603, !inline_history !274519 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null, !dbg !274614
  br i1 %i.ir, label %bb.cv, label %_RINvXsl_NtNtCsk1caaszg7Cl_10serde_json5value2deNtB6_13KeyClassifierNtNtCs40veMcpUDl8_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split.i.i.i.i.i, !dbg !274615

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %bb.cu ], [ 0, %bb.cs ]
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i) #55, !dbg !274616, !noalias !274618, !inline_history !274519
  unreachable, !dbg !274616

bb.cw:                                            ; preds = %bb.cr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cz, label %bb.cx, !dbg !274619, !prof !150638

bb.cx:                                            ; preds = %bb.cw
  %i.is = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0, !dbg !274637
  br i1 %i.is, label %bb.dc, label %bb.cy, !dbg !274637

bb.cy:                                            ; preds = %bb.cx
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !274638, !noalias !274639, !inline_history !274519
  %i.it = call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !dbg !274648, !noalias !274639, !inline_history !274519 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null, !dbg !274653
  br i1 %i.iu, label %bb.cz, label %_RINvXsl_NtNtCsk1caaszg7Cl_10serde_json5value2deNtB6_13KeyClassifierNtNtCs40veMcpUDl8_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split.i.i.i.i.i, !dbg !274654

bb.cz:                                            ; preds = %bb.cy, %bb.cw
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cy ], [ 0, %bb.cw ]
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i) #55, !dbg !274655, !noalias !274656, !inline_history !274519
  unreachable, !dbg !274655

_RINvXsl_NtNtCsk1caaszg7Cl_10serde_json5value2deNtB6_13KeyClassifierNtNtCs40veMcpUDl8_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split.i.i.i.i.i: ; preds = %bb.cy, %bb.cu
  %.sink8.i.i.i.i.i = phi ptr [ %i.iq, %bb.cu ], [ %i.it, %bb.cy ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink8.i.i.i.i.i, ptr nonnull readonly align 1 %i.in, i64 %.sroa.4.0.copyload.i.i.i.i.i, i1 false), !dbg !274657, !noalias !274558
  br label %bb.dc, !dbg !274657

bb.da:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !274658, !noalias !274568
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.in) ], !noalias !273664
  br label %bb.db, !dbg !274659

bb.db:                                            ; preds = %bb.co, %bb.da
  %.sroa.8106.0.ph = phi ptr [ %i.in, %bb.da ], [ %i.ia, %bb.co ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !274661
  store ptr %.sroa.8106.0.ph, ptr %i.iv, align 8, !dbg !274661, !alias.scope !274501, !noalias !274663
  store i64 -9223372036854775803, ptr %i.at, align 8, !dbg !274661, !alias.scope !274501, !noalias !274663
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit, !dbg !274664

bb.dc:                                            ; preds = %_RINvXsl_NtNtCsk1caaszg7Cl_10serde_json5value2deNtB6_13KeyClassifierNtNtCs40veMcpUDl8_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split.i.i.i.i.i, %bb.cx, %bb.ct
  %.sroa.7.0.ph.i.i = phi ptr [ %.sink8.i.i.i.i.i, %_RINvXsl_NtNtCsk1caaszg7Cl_10serde_json5value2deNtB6_13KeyClassifierNtNtCs40veMcpUDl8_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.sink.split.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !274658, !noalias !274568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !274666, !noalias !274505
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %i.ak, align 8, !dbg !274666, !noalias !274505
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !274666
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !274666, !noalias !274505
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !274666
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !dbg !274666, !noalias !274505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !274667, !noalias !274505
  %i.iw = invoke { i64, i64 } @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @185)
          to label %bb.de unwind label %bb.ei, !dbg !274669, !noalias !274689, !inline_history !274519 ; 2 uses

bb.dd:                                            ; preds = %bb.cp
  %i.ix = tail call { i64, i64 } @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @185), !dbg !274690, !noalias !274689, !inline_history !274519 ; 2 uses
  %i.iy = extractvalue { i64, i64 } %i.ix, 0, !dbg !274696
  %i.iz = extractvalue { i64, i64 } %i.ix, 1, !dbg !274696
  store i64 0, ptr %i.at, align 8, !dbg !274697, !noalias !274663
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !274697
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4121.0..sroa_idx, align 8, !dbg !274697, !noalias !274663
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !274697
  store i64 0, ptr %.sroa.5122.0..sroa_idx, align 8, !dbg !274697, !noalias !274663
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !274697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @189, i64 32, i1 false), !dbg !274697, !noalias !274663
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 56, !dbg !274697
  store i64 %i.iy, ptr %.sroa.7124.0..sroa_idx, align 8, !dbg !274697, !noalias !274663
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 64, !dbg !274697
  store i64 %i.iz, ptr %.sroa.8125.0..sroa_idx, align 8, !dbg !274697, !noalias !274663
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit, !dbg !274698

end_hunk_1
begin_hunk_2_@_RINvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsePnBjWcsLF5_10polars_ops:bb.a
bb.ec:                                            ; preds = %bb.dx
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !274977, !noalias !274866, !inline_history !274790
  unreachable, !dbg !274977

_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_entryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtB8_5value5ValueECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsePnBjWcsLF5_10polars_ops.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13109.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !274978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !274936, !noalias !274866
  %.sroa.0148.0.copyload = load i64, ptr %i.l, align 8, !dbg !274979, !noalias !274866 ; 2 uses
  %.sroa.4149.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx2.i73, align 8, !dbg !274979, !noalias !274866 ; 2 uses
  %.sroa.5150.0.copyload = load i64, ptr %.sroa.3.i70.sroa.4.0..sroa.3.0..sroa_idx2.i73.sroa_idx, align 8, !dbg !274979, !noalias !274866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !274934, !noalias !274866
  switch i64 %.sroa.0148.0.copyload, label %bb.ed [
    i64 -9223372036854775807, label %.loopexit284
    i64 -9223372036854775808, label %.loopexit285
  ], !dbg !274981

.loopexit284:                                     ; preds = %_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsePnBjWcsLF5_10polars_ops.exit.i, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_entryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtB8_5value5ValueECsePnBjWcsLF5_10polars_ops.exit.i, %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtCsgZ49sUHp3tW_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB2A_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit._crit_edge.i.i, %bb.dp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsePnBjWcsLF5_10polars_ops.exit.i82
  %.sroa.9108.0241 = phi ptr [ %i.kg, %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtCsgZ49sUHp3tW_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB2A_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit._crit_edge.i.i ], [ %i.jt, %bb.dp ], [ %i.ku, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsePnBjWcsLF5_10polars_ops.exit.i82 ], [ %.pre.i.i, %_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsePnBjWcsLF5_10polars_ops.exit.i ], [ %.sroa.4149.0.copyload, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_entryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtB8_5value5ValueECsePnBjWcsLF5_10polars_ops.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9108.0241) ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !274983
  store ptr %.sroa.9108.0241, ptr %i.kz, align 8, !dbg !274983, !alias.scope !274501, !noalias !274663
  store i64 -9223372036854775803, ptr %i.at, align 8, !dbg !274983, !alias.scope !274501, !noalias !274663
  br label %bb.eg, !dbg !274753

bb.ed:                                            ; preds = %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_entryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtB8_5value5ValueECsePnBjWcsLF5_10polars_ops.exit.i
  store i64 %.sroa.0148.0.copyload, ptr %i.af, align 8, !dbg !274985, !noalias !274505
  store ptr %.sroa.4149.0.copyload, ptr %.sroa.35.0..sroa_idx6.i, align 8, !dbg !274985, !noalias !274505
  store i64 %.sroa.5150.0.copyload, ptr %.sroa.35.i.sroa.4.0..sroa.35.0..sroa_idx6.i.sroa_idx, align 8, !dbg !274985, !noalias !274505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13109.sroa.6, i64 72, i1 false), !dbg !274986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !274987, !noalias !274505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !274988, !noalias !274505
  invoke void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk1caaszg7Cl_10serde_json5value5ValueE11insert_fullCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ae)
          to label %bb.ee unwind label %.loopexit272, !dbg !274992, !noalias !274689, !inline_history !274519

.loopexit285:                                     ; preds = %bb.dq, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_entryNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtB8_5value5ValueECsePnBjWcsLF5_10polars_ops.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i64 72, i1 false), !dbg !274993, !noalias !274663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !274762, !noalias !274505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !274994, !noalias !274505
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit, !dbg !274995

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.jp, i64 72, i1 false), !dbg !274988, !noalias !274505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !274996, !noalias !274505
  %i.la = load i64, ptr %i.ad, align 8, !dbg !274997, !range !162933, !alias.scope !274999, !noalias !274505, !noundef !14
  %i.lb = icmp eq i64 %i.la, -9223372036854775803, !dbg !274997
  br i1 %i.lb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit20.i, label %bb.ef, !dbg !274997

bb.ef:                                            ; preds = %bb.ee
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5value5ValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit20.i unwind label %.loopexit272, !dbg !274997, !noalias !274689, !inline_history !274519

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsk1caaszg7Cl_10serde_json5value5ValueEECsePnBjWcsLF5_10polars_ops.exit20.i: ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !275002, !noalias !274505
  br label %bb.do, !dbg !274770

bb.eg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsePnBjWcsLF5_10polars_ops.exit.i, %.loopexit284
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsk1caaszg7Cl_10serde_json3map3MapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtBL_5value5ValueEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(72) %i.aj), !dbg !274762, !noalias !274689, !inline_history !274519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !274762, !noalias !274505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !274994, !noalias !274505
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit, !dbg !274995

bb.eh:                                            ; preds = %bb.ei, %.body.i, %bb.df
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !275003, !noalias !274689, !inline_history !274519
  unreachable, !dbg !275003

bb.ei:                                            ; preds = %bb.dc
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #59
          to label %common.resume unwind label %bb.eh, !dbg !274994, !noalias !274689, !inline_history !274519

_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %bb.db, %bb.eg, %bb.dd, %.loopexit285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !275004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !275004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !275004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !275004
  %i.le = load i8, ptr %i.dq, align 8, !dbg !275005, !alias.scope !273668, !noalias !273664, !noundef !14
  %i.lf = add i8 %i.le, 1, !dbg !275005
  store i8 %i.lf, ptr %i.dq, align 8, !dbg !275005, !alias.scope !273668, !noalias !273664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !275007, !noalias !273710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !275008, !noalias !273710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false), !dbg !275008, !noalias !273710
  call void @llvm.experimental.noalias.scope.decl(metadata !275009), !dbg !275012
  call void @llvm.experimental.noalias.scope.decl(metadata !275013), !dbg !275016, !noalias !273664
  %i.lg = load i64, ptr %i.bd, align 8, !alias.scope !275019, !noalias !275024, !noundef !14 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.bc, align 8, !alias.scope !275028, !noalias !275029 ; 2 uses
  %i.lh = icmp ult i64 %.promoted.i.i, %i.lg, !dbg !275030
  br i1 %i.lh, label %.lr.ph.i.i, label %.loopexit.i, !dbg !275030

.lr.ph.i.i:                                       ; preds = %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit
  %i.li = load ptr, ptr %i.bg, align 8, !alias.scope !275019, !noalias !275024, !nonnull !14, !noundef !14
  br label %bb.ej, !dbg !275030

bb.ej:                                            ; preds = %bb.ek, %.lr.ph.i.i
  %i.lj = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.lm, %bb.ek ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !275035), !dbg !275036, !noalias !273664
  call void @llvm.experimental.noalias.scope.decl(metadata !275037), !dbg !275038, !noalias !273664
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lj, !dbg !275039
  %i.ll = load i8, ptr %i.lk, align 1, !dbg !275039, !noalias !275040, !noundef !14
  switch i8 %i.ll, label %bb.el [
    i8 32, label %bb.ek
    i8 10, label %bb.ek
    i8 9, label %bb.ek
    i8 13, label %bb.ek
    i8 125, label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit.thread
    i8 44, label %bb.em
  ], !dbg !275041, !prof !273621

bb.ek:                                            ; preds = %bb.ej, %bb.ej, %bb.ej, %bb.ej
  %i.lm = add i64 %i.lj, 1, !dbg !275042          ; 3 uses
  store i64 %i.lm, ptr %i.bc, align 8, !dbg !275042, !alias.scope !275046, !noalias !275029
  %exitcond.not.i.i = icmp eq i64 %i.lm, %i.lg, !dbg !275030
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.ej, !dbg !275030

.loopexit.i:                                      ; preds = %bb.ek, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsePnBjWcsLF5_10polars_ops.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !275049, !noalias !275050
  store i64 3, ptr %i.am, align 8, !dbg !275049, !noalias !275050
  %i.ln = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am)
          to label %.noexc unwind label %bb.en, !dbg !275051

.noexc:                                           ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !275052, !noalias !275050
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit, !dbg !275053

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !275054, !noalias !275050
  store i64 22, ptr %i.an, align 8, !dbg !275054, !noalias !275050
  %i.lo = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an)
          to label %.noexc1 unwind label %bb.en, !dbg !275055

.noexc1:                                          ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !275056, !noalias !275050
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit, !dbg !275057

bb.em:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !275058, !noalias !275050
  store i64 21, ptr %i.ao, align 8, !dbg !275058, !noalias !275050
  %i.lp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao)
          to label %.noexc2 unwind label %bb.en, !dbg !275059

.noexc2:                                          ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !275060, !noalias !275050
  br label %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit, !dbg !275061

bb.en:                                            ; preds = %bb.em, %bb.el, %.loopexit.i
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsk1caaszg7Cl_10serde_json5value5ValueNtNtB16_5error5ErrorEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(72) %i.ar) #59
          to label %common.resume unwind label %bb.ch, !dbg !275062, !noalias !273664, !inline_history !273712

_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.lo, %.noexc1 ], [ %i.ln, %.noexc ], [ %i.lp, %.noexc2 ], !dbg !275063 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false), !dbg !275007
  %i.lr = getelementptr inbounds nuw i8, ptr %i.as, i64 72, !dbg !275007
  store ptr %.sroa.0.0.i, ptr %i.lr, align 8, !dbg !275007, !noalias !273710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !275062, !noalias !273710
  %i.ls = load i64, ptr %i.as, align 8, !dbg !275007, !range !162933, !noalias !273710, !noundef !14
  %i.lt = icmp eq i64 %i.ls, -9223372036854775803, !dbg !275007
  br i1 %i.lt, label %bb.ep, label %bb.eo, !dbg !275064

_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit.thread: ; preds = %bb.ej
  %i.lu = add i64 %i.lj, 1, !dbg !275065
  store i64 %i.lu, ptr %i.bc, align 8, !dbg !275065, !alias.scope !275070, !noalias !273664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false), !dbg !275007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !275062, !noalias !273710
  %i.lv = load i64, ptr %i.as, align 8, !dbg !275007, !range !162933, !noalias !273710, !noundef !14
  %i.lw = icmp eq i64 %i.lv, -9223372036854775803, !dbg !275007
  br i1 %i.lw, label %.thread430, label %.thread428, !dbg !275064

.thread430:                                       ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit.thread
  %i.lx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !275073
  %i.ly = load ptr, ptr %i.lx, align 8, !dbg !275073, !noalias !273710, !nonnull !14, !align !127, !noundef !14
  %i.lz = ptrtoint ptr %i.ly to i64, !dbg !275074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !275076, !noalias !273710
  br label %.thread265, !dbg !275076

.thread428:                                       ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit.thread
  %.sroa.0.0.copyload493 = load i64, ptr %i.at, align 8, !dbg !275077
  %.sroa.24.0..sroa_idx496 = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !275077
  %.sroa.24.0.copyload497 = load i64, ptr %.sroa.24.0..sroa_idx496, align 8, !dbg !275077
  %.sroa.41.0..sroa_idx500 = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !275077
  %.sroa.41.0.copyload501 = load i64, ptr %.sroa.41.0..sroa_idx500, align 8, !dbg !275077
  %.sroa.49.0..sroa_idx504 = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !275077
  %.sroa.49.0.copyload505 = load i64, ptr %.sroa.49.0..sroa_idx504, align 8, !dbg !275077
  %.sroa.51.0..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.at, i64 32, !dbg !275077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx507, i64 40, i1 false), !dbg !275077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !275076, !noalias !273710
  br label %.thread265, !dbg !275076

bb.eo:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit
  %i.ma = ptrtoint ptr %.sroa.0.0.i to i64, !dbg !275074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !275076, !noalias !273710
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5value5ValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(72) %i.as), !dbg !275076, !noalias !273664, !inline_history !273712
  br label %.thread265, !dbg !275076

.thread265:                                       ; preds = %.thread430, %.thread428, %bb.eo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit
  %.sroa.24.sroa.23.sroa.0.4.in.in = phi i64 [ %i.md, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ %i.ma, %bb.eo ], [ %i.lz, %.thread430 ], [ %.sroa.24.0.copyload497, %.thread428 ]
  %.sroa.49.3 = phi i64 [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ undef, %bb.eo ], [ undef, %.thread430 ], [ %.sroa.49.0.copyload505, %.thread428 ], !dbg !273937
  %.sroa.41.4 = phi i64 [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ undef, %bb.eo ], [ undef, %.thread430 ], [ %.sroa.41.0.copyload501, %.thread428 ], !dbg !273937
  %.sroa.0.4 = phi i64 [ -9223372036854775803, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ -9223372036854775803, %bb.eo ], [ -9223372036854775803, %.thread430 ], [ %.sroa.0.0.copyload493, %.thread428 ], !dbg !275078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !275076, !noalias !273710
  br label %bb.ag, !dbg !275076

bb.ep:                                            ; preds = %_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsePnBjWcsLF5_10polars_ops.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !275073
  %i.mc = load ptr, ptr %i.mb, align 8, !dbg !275073, !noalias !273710, !nonnull !14, !align !127, !noundef !14
  %i.md = ptrtoint ptr %i.mc to i64, !dbg !275074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !275076, !noalias !273710
  call void @llvm.experimental.noalias.scope.decl(metadata !275079), !dbg !275082, !noalias !273664
  call void @llvm.experimental.noalias.scope.decl(metadata !275085), !dbg !275088, !noalias !273664
  %i.me = load i64, ptr %.sroa.0.0.i, align 8, !dbg !275090, !range !162904, !alias.scope !275092, !noalias !273664, !noundef !14
  switch i64 %i.me, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit [
    i64 0, label %bb.eq
    i64 1, label %bb.er
  ], !dbg !275090

bb.eq:                                            ; preds = %bb.ep
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16, !dbg !275090
  %.val2.i.i.i.i = load i64, ptr %i.mf, align 8, !dbg !275090, !alias.scope !275092, !noalias !273664, !noundef !14 ; 2 uses
  %i.mg = icmp eq i64 %.val2.i.i.i.i, 0, !dbg !275093
  br i1 %i.mg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, !dbg !275093

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.eq
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8, !dbg !275090
  %.val1.i.i.i.i = load ptr, ptr %i.mh, align 8, !dbg !275090, !alias.scope !275092, !noalias !273664, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef 1) #50, !dbg !275096, !noalias !275101
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit, !dbg !275102

bb.er:                                            ; preds = %bb.ep
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8, !dbg !275090
  %.val.i.i.i.i = load ptr, ptr %i.mi, align 8, !dbg !275090, !alias.scope !275092, !noalias !273664, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsePnBjWcsLF5_10polars_ops(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.es, !dbg !275090, !noalias !273664

bb.es:                                            ; preds = %bb.er
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 40, i64 noundef 8) #50, !dbg !275103, !noalias !273664
  br label %common.resume, !dbg !275082

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECsePnBjWcsLF5_10polars_ops.exit: ; preds = %bb.ep, %bb.eq, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.er
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 40, i64 noundef 8) #50, !dbg !275109, !noalias !273664
  br label %.thread265, !dbg !275076

bb.et:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !275115, !noalias !273710
  store i64 10, ptr %i.aq, align 8, !dbg !275115, !noalias !273710
  %i.mk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aq), !dbg !275116, !noalias !273664, !inline_history !273712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !275117, !noalias !273710
  br label %bb.ev, !dbg !273940

bb.eu:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !275118, !noalias !273710
  call fastcc void @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !dbg !275119, !noalias !273664, !inline_history !273712
  %i.ml = load i64, ptr %i.az, align 8, !dbg !275118, !range !152030, !noalias !273710, !noundef !14 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 3, !dbg !275118
  %i.mn = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !273915 ; 2 uses
  br i1 %i.mm, label %bb.ew, label %bb.ex, !dbg !273917

bb.ev:                                            ; preds = %._crit_edge, %bb.et
  %i.mo = phi ptr [ %i.dw, %._crit_edge ], [ %i.mk, %bb.et ], !dbg !273942
  %i.mp = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsk1caaszg7Cl_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 %i.mo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !275121, !noalias !273664
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !275125
  store ptr %i.mp, ptr %i.mq, align 8, !dbg !275125, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !275125, !alias.scope !273664, !noalias !273668
  br label %bb.fc, !dbg !275126

bb.ew:                                            ; preds = %bb.eu
  %i.mr = load ptr, ptr %i.mn, align 8, !dbg !273948, !noalias !273710, !nonnull !14, !align !127, !noundef !14
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !275127
  store ptr %i.mr, ptr %i.ms, align 8, !dbg !275127, !alias.scope !273664, !noalias !273668
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !275127, !alias.scope !273664, !noalias !273668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !275129, !noalias !273710
  br label %bb.ah, !dbg !273935

bb.ex:                                            ; preds = %bb.eu
  %.sroa.4101.0.copyload = load i64, ptr %i.mn, align 8, !dbg !273952, !noalias !273710 ; 5 uses
  switch i64 %i.ml, label %default.unreachable712 [
    i64 0, label %bb.ey
    i64 1, label %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit
    i64 2, label %bb.fb
  ], !dbg !275130

bb.ey:                                            ; preds = %bb.ex
  %i.mt = bitcast i64 %.sroa.4101.0.copyload to double, !dbg !275132
  %i.mu = tail call double @llvm.fabs.f64(double %i.mt), !dbg !275133
  %i.mv = fcmp ueq double %i.mu, +inf, !dbg !275138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !275139, !noalias !275140
  br i1 %i.mv, label %bb.ez, label %bb.fa, !dbg !275146

bb.ez:                                            ; preds = %bb.ey
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !275147
  %.sroa.5.sroa.0.0.copyload9.i.i = load i64, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !dbg !275147, !alias.scope !275149, !noalias !275153
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !275147
  %.sroa.5.sroa.5.0.copyload10.i.i562 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i, align 8, !dbg !275147, !alias.scope !275149, !noalias !275153
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i, !dbg !275155

bb.fa:                                            ; preds = %bb.ey
  store i64 -9223372036854775808, ptr %i.ap, align 8, !dbg !275139, !noalias !275140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275156), !dbg !275157, !noalias !273664
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5value5ValueECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ap), !dbg !275155, !noalias !275158
  br label %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i, !dbg !275155

_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.fa, %bb.ez
  %i.mw = phi i64 [ %.sroa.5.sroa.5.0.copyload10.i.i562, %bb.ez ], [ %.sroa.4101.0.copyload, %bb.fa ], !dbg !275159
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload9.i.i, %bb.ez ], [ 2, %bb.fa ], !dbg !275159 ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.ez ], [ -9223372036854775806, %bb.fa ], !dbg !275159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !275160, !noalias !275140
  br label %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit, !dbg !275161

bb.fb:                                            ; preds = %bb.ex
  %.lobit.i.i = lshr i64 %.sroa.4101.0.copyload, 63, !dbg !275162
  br label %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit, !dbg !275166

_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit: ; preds = %bb.ex, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i, %bb.fb
  %.sroa.24.sroa.23.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i ], [ 0, %bb.fb ], [ 0, %bb.ex ], !dbg !275167
  %.sroa.24.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i ], [ %.lobit.i.i, %bb.fb ], [ 0, %bb.ex ], !dbg !275167
  %.sroa.41.5 = phi i64 [ %i.mw, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i ], [ %.sroa.4101.0.copyload, %bb.fb ], [ %.sroa.4101.0.copyload, %bb.ex ], !dbg !275167
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit.i ], [ -9223372036854775806, %bb.fb ], [ -9223372036854775806, %bb.ex ], !dbg !275167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !275129, !noalias !273710
  br label %.thread, !dbg !275129

.thread:                                          ; preds = %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.24.sroa.23.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ %.sroa.24.sroa.23.sroa.0.1, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43 ], [ %.sroa.24.sroa.23.sroa.0.5, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit ], !dbg !273937
  %.sroa.24.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ %.sroa.24.sroa.0.1, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43 ], [ %.sroa.24.sroa.0.5, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit ], !dbg !273937
  %.sroa.49.4 = phi i64 [ %.sroa.49.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ undef, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43 ], [ undef, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit ], !dbg !273706
  %.sroa.41.6 = phi i64 [ %.sroa.41.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.41.2, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ %.sroa.41.1, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43 ], [ %.sroa.41.5, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit ], !dbg !273937
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCsk1caaszg7Cl_10serde_json5value2deNtB8_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsePnBjWcsLF5_10polars_ops.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit43 ], [ %.sroa.0.5, %_RINvMs2_NtCsk1caaszg7Cl_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit ], !dbg !273937
  store i64 %.sroa.0.6, ptr %0, align 8, !dbg !275168, !noalias !273668
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !275168
  %.sroa.24.sroa.23.0.insert.ext = and i64 %.sroa.24.sroa.23.sroa.0.6, -256, !dbg !275168
  %.sroa.24.sroa.0.0.insert.ext = and i64 %.sroa.24.sroa.0.6, 255, !dbg !275168
  %.sroa.24.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24.sroa.0.0.insert.ext, %.sroa.24.sroa.23.0.insert.ext, !dbg !275168
  store i64 %.sroa.24.sroa.0.0.insert.insert, ptr %.sroa.24.0..sroa_idx, align 8, !dbg !275168, !noalias !273668
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !275168
  store i64 %.sroa.41.6, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !275168, !noalias !273668
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !275168
  store i64 %.sroa.49.4, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !275168, !noalias !273668
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !275168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, i64 40, i1 false), !dbg !275168, !noalias !273668
  br label %bb.fc, !dbg !275169

bb.fc:                                            ; preds = %.thread, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51), !dbg !273943
  br label %_RINvXs5_NtCsk1caaszg7Cl_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit, !dbg !275170

_RINvXs5_NtCsk1caaszg7Cl_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsePnBjWcsLF5_10polars_ops.exit: ; preds = %.loopexit286, %bb.ah, %bb.fc
  ret void, !dbg !275171
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXNtNtCsk1caaszg7Cl_10serde_json5value3serNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !275172 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !dbg !275176, !range !208555, !noundef !14 ; 2 uses
  %i.e = xor i64 %i.d, -9223372036854775808, !dbg !275176
  %i.f = icmp slt i64 %i.d, 0, !dbg !275176
  %i.g = select i1 %i.f, i64 %i.e, i64 5, !dbg !275176
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
  ], !dbg !275177

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !275178

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !275180, !nonnull !14, !align !127, !noundef !14
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !275181
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275180

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !275198
  %i.i = load i8, ptr %i.h, align 8, !dbg !275198, !range !151352, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1, !dbg !275198
  %.val9 = load ptr, ptr %1, align 8, !dbg !275200, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.j, label %.split.i.i, label %.split2.i.i, !dbg !275201

.split2.i.i:                                      ; preds = %bb.d
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef range(i64 0, -9223372036854775808) 5), !dbg !275206
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275210

.split.i.i:                                       ; preds = %bb.d
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !275211
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275210

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !275214
  %.val10 = load ptr, ptr %1, align 8, !dbg !275215 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275217), !dbg !275215
  %i.l = load i64, ptr %i.k, align 8, !dbg !275220, !range !150733, !alias.scope !275217, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !275224 ; 3 uses
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.k
  ], !dbg !275225

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.m, align 8, !dbg !275226, !alias.scope !275217, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !275227, !noalias !275217
  %i.o = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.n, ptr noalias noundef nonnull dereferenceable(20) %i.c), !dbg !275233, !noalias !275217 ; 2 uses
  %i.p = sub nuw i64 20, %i.o, !dbg !275244
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o, !dbg !275254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef range(i64 0, -9223372036854775808) %i.p), !dbg !275259, !noalias !275217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !275263, !noalias !275217
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275264

bb.g:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.m, align 8, !dbg !275265, !alias.scope !275217, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !275266, !noalias !275217
  %i.s = icmp slt i64 %i.r, 0, !dbg !275272
  %.sroa.07.0.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.r, i1 false), !dbg !275288
  %i.t = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.b), !dbg !275289, !noalias !275217 ; 2 uses
  br i1 %i.s, label %bb.h, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_i64CsePnBjWcsLF5_10polars_ops.exit.i, !dbg !275290

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %i.t, -1, !dbg !275291           ; 4 uses
  %i.v = icmp ult i64 %i.u, 20, !dbg !275292
  br i1 %i.v, label %bb.i, label %bb.j, !dbg !275292

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u, !dbg !275292
  store i8 45, ptr %i.w, align 1, !dbg !275293, !alias.scope !275296, !noalias !275217
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_i64CsePnBjWcsLF5_10polars_ops.exit.i, !dbg !275299

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @895) #58, !dbg !275292, !noalias !275217
  unreachable, !dbg !275292

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_i64CsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.u, %bb.i ], [ %i.t, %bb.g ], !dbg !275300 ; 2 uses
  %i.x = sub nuw i64 20, %.sroa.0.0.i.i.i.i, !dbg !275301
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i.i, !dbg !275310
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 0, -9223372036854775808) %i.x), !dbg !275315, !noalias !275217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !275319, !noalias !275217
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275320

bb.k:                                             ; preds = %bb.e
  %i.z = load double, ptr %i.m, align 8, !dbg !275321, !alias.scope !275217, !noundef !14 ; 2 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.z), !dbg !275322
  %cond.i.i = fcmp ueq double %i.aa, +inf, !dbg !275322
  br i1 %cond.i.i, label %bb.l, label %bb.m, !dbg !275322

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !275329, !noalias !275217
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275333

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !275334, !noalias !275217
  %i.ab = call { ptr, i64 } @_RINvMs2_CskFfanrUhUOy_4zmijNtB6_6Buffer13format_finitedECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull dereferenceable(24) %i.a, double noundef %i.z), !dbg !275337, !noalias !275217 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !275337
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1, !dbg !275337
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ad), !dbg !275339, !noalias !275217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !275343, !noalias !275217
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275344

bb.n:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !275345
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !275345, !nonnull !14, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !275362
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !275362, !noundef !14
  %.val11 = load ptr, ptr %1, align 8, !dbg !275363, !nonnull !14, !align !127, !noundef !14
  tail call fastcc void @_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_strCsePnBjWcsLF5_10polars_ops(ptr %.val11, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah) #60, !dbg !275363
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275364

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275365), !dbg !275368
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !275376
  %.val.i = load ptr, ptr %i.ai, align 8, !dbg !275376, !alias.scope !275365, !noalias !275381, !nonnull !14, !noundef !14 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !275376
  %.val10.i = load i64, ptr %i.aj, align 8, !dbg !275376, !alias.scope !275365, !noalias !275381, !noundef !14 ; 3 uses
  %.idx81 = mul nuw nsw i64 %.val10.i, 72, !dbg !275383
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx81, !dbg !275383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275395), !dbg !275398
  %.val.i16 = load ptr, ptr %1, align 8, !dbg !275400, !alias.scope !275395, !noalias !275403, !nonnull !14, !align !127, !noundef !14 ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !275405, !noalias !275410
  %.not82 = icmp eq i64 %.val10.i, 0
  br i1 %.not82, label %.loopexit73.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsk1caaszg7Cl_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CsePnBjWcsLF5_10polars_ops.exit.preheader, !dbg !275411

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsk1caaszg7Cl_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CsePnBjWcsLF5_10polars_ops.exit.preheader: ; preds = %bb.o
  %i.al = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsk1caaszg7Cl_10serde_json5value3serNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #60, !dbg !275415, !noalias !275437 ; 0 uses
  %i.am = icmp eq i64 %.val10.i, 1, !dbg !275451
  %.val13.i98 = load ptr, ptr %1, align 8, !dbg !275458, !noalias !275365, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.am, label %.loopexit73, label %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i.lr.ph, !dbg !275459

_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i.lr.ph: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsk1caaszg7Cl_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CsePnBjWcsLF5_10polars_ops.exit.preheader
  %.sroa.034.097 = getelementptr inbounds nuw i8, ptr %.val.i, i64 72, !dbg !275460
  br label %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !275459

.loopexit73.thread:                               ; preds = %bb.o
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !275463, !noalias !275410
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275468

_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i.lr.ph, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i
  %.val13.i100 = phi ptr [ %.val13.i98, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i.lr.ph ], [ %.val13.i, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i ]
  %.sroa.034.099 = phi ptr [ %.sroa.034.097, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i.lr.ph ], [ %.sroa.034.0, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val13.i100, ptr noalias noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !275472, !noalias !275477, !inline_history !275478
  %i.an = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsk1caaszg7Cl_10serde_json5value3serNtB5_5ValueNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.034.099, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #60, !dbg !275415, !noalias !275437 ; 0 uses
  %.sroa.034.0 = getelementptr inbounds nuw i8, ptr %.sroa.034.099, i64 72, !dbg !275460 ; 2 uses
  %i.ao = icmp eq ptr %.sroa.034.0, %i.ak, !dbg !275451
  %.val13.i = load ptr, ptr %1, align 8, !dbg !275458, !noalias !275365, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.ao, label %.loopexit73, label %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !275459

.loopexit73:                                      ; preds = %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsk1caaszg7Cl_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CsePnBjWcsLF5_10polars_ops.exit.preheader
  %.val13.i.lcssa = phi ptr [ %.val13.i98, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsk1caaszg7Cl_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0CsePnBjWcsLF5_10polars_ops.exit.preheader ], [ %.val13.i, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsePnBjWcsLF5_10polars_ops.exit.i.i ], !dbg !275458
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val13.i.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !275479, !noalias !275365
  br label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit, !dbg !275483

bb.p:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !275484
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !275484, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275497), !dbg !275500
  %.val.i13 = load ptr, ptr %1, align 8, !dbg !275501, !alias.scope !275497, !noalias !275504, !nonnull !14, !align !127, !noundef !14 ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !275506, !noalias !275511
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCsePnBjWcsLF5_10polars_ops.exit, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCsePnBjWcsLF5_10polars_ops.exit.thread, !dbg !275512

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer14serialize_boolCsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCsePnBjWcsLF5_10polars_ops.exit, %.loopexit73.thread, %.loopexit, %.loopexit73, %bb.m, %bb.l, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_i64CsePnBjWcsLF5_10polars_ops.exit.i, %bb.f, %.split.i.i, %.split2.i.i, %bb.n, %bb.c
  ret ptr null, !dbg !275515

end_hunk_2
