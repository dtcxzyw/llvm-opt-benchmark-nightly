Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.08?download=true
inline.NumInlined: 1697
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNvXs9_NtCsbbTh99npV2h_10serde_json2deINtB8_9MapAccesspENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECskIqAKC4t9Ft_2yr:bb.a
  br i1 %i.x, label %bb.h, label %bb.j, !prof !30

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !30

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !941, !noundef !9
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !38

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !942, !noalias !943
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [72 x i8], align 8                ; 5 uses
  %i.aa = alloca [80 x i8], align 8               ; 10 uses
  %i.ab = alloca [72 x i8], align 8               ; 14 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [80 x i8], align 8               ; 13 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.51 = alloca [40 x i8], align 8           ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 31 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1126, !noalias !1127, !noundef !9 ; 10 uses
  %.promoted.i53 = load i64, ptr %i.ak, align 8, !alias.scope !1125, !noalias !1128 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i53, %i.am
  br i1 %i.an, label %.lr.ph.i, label %.loopexit145

.lr.ph.i:                                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1126, !noalias !1127, !nonnull !9, !noundef !9 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aq = phi i64 [ %.promoted.i53, %.lr.ph.i ], [ %i.at, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130), !noalias !1123
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !1131, !noundef !9 ; 3 uses
  switch i8 %i.as, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !1132, !noalias !1128
  %exitcond.not.i54 = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i54, label %.loopexit145, label %bb.b

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51)
  switch i8 %i.as, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit145:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1133
  store i64 5, ptr %i.aj, align 8, !noalias !1133
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !1123, !inline_history !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1133
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !1123, !noalias !1124
  store i64 -1, ptr %0, align 8, !alias.scope !1123, !noalias !1124
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.aw = add i8 %i.as, -48
  %or.cond8.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond8.i, label %bb.cm, label %bb.cl, !prof !39

bb.e:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.ax = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.ax, ptr %i.ak, align 8, !alias.scope !1134, !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %umax.i45 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137), !noalias !1123
  %exitcond.not.i47.not = icmp ult i64 %i.ax, %i.am
  br i1 %exitcond.not.i47.not, label %bb.f, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !1138, !noundef !9
  %i.ba = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.ba, ptr %i.ak, align 8, !alias.scope !1139, !noalias !1140
  %.not.i48 = icmp eq i8 %i.az, 117
  br i1 %.not.i48, label %bb.g, label %bb.k, !prof !40

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142), !noalias !1123
  %exitcond.not.i47.1 = icmp eq i64 %i.ba, %umax.i45
  br i1 %exitcond.not.i47.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1143, !noundef !9
  %i.bd = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bd, ptr %i.ak, align 8, !alias.scope !1144, !noalias !1140
  %.not.i48.1 = icmp eq i8 %i.bc, 108
  br i1 %.not.i48.1, label %bb.i, label %bb.k, !prof !40

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146), !noalias !1123
  %exitcond.not.i47.2 = icmp eq i64 %i.bd, %umax.i45
  br i1 %exitcond.not.i47.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1147, !noundef !9
  %i.bg = add i64 %i.aq, 4
  store i64 %i.bg, ptr %i.ak, align 8, !alias.scope !1148, !noalias !1140
  %.not.i48.2 = icmp eq i8 %i.bf, 108
  br i1 %.not.i48.2, label %.thread, label %bb.k, !prof !40

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1149
  store i64 5, ptr %i.i, align 8, !noalias !1149
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !1150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1149
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1149
  store i64 9, ptr %i.h, align 8, !noalias !1149
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !1150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1149
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.bj = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bj, ptr %i.ak, align 8, !alias.scope !1151, !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %umax.i36 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154), !noalias !1123
  %exitcond.not.i38.not = icmp ult i64 %i.bj, %i.am
  br i1 %exitcond.not.i38.not, label %bb.m, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1155, !noundef !9
  %i.bm = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !1156, !noalias !1157
  %.not.i39 = icmp eq i8 %i.bl, 114
  br i1 %.not.i39, label %bb.n, label %bb.r, !prof !40

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159), !noalias !1123
  %exitcond.not.i38.1 = icmp eq i64 %i.bm, %umax.i36
  br i1 %exitcond.not.i38.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1160, !noundef !9
  %i.bp = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bp, ptr %i.ak, align 8, !alias.scope !1161, !noalias !1157
  %.not.i39.1 = icmp eq i8 %i.bo, 117
  br i1 %.not.i39.1, label %bb.p, label %bb.r, !prof !40

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163), !noalias !1123
  %exitcond.not.i38.2 = icmp eq i64 %i.bp, %umax.i36
  br i1 %exitcond.not.i38.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1164, !noundef !9
  %i.bs = add i64 %i.aq, 4
  store i64 %i.bs, ptr %i.ak, align 8, !alias.scope !1165, !noalias !1157
  %.not.i39.2 = icmp eq i8 %i.br, 101
  br i1 %.not.i39.2, label %.thread, label %bb.r, !prof !40

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1166
  store i64 5, ptr %i.k, align 8, !noalias !1166
  %i.bt = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1166
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1166
  store i64 9, ptr %i.j, align 8, !noalias !1166
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1166
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.bv = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bv, ptr %i.ak, align 8, !alias.scope !1168, !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.am) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171), !noalias !1123
  %exitcond.not.i.not = icmp ult i64 %i.bv, %i.am
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !1172, !noundef !9
  %i.by = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.by, ptr %i.ak, align 8, !alias.scope !1173, !noalias !1174
  %.not.i33 = icmp eq i8 %i.bx, 97
  br i1 %.not.i33, label %bb.u, label %bb.aa, !prof !40

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176), !noalias !1123
  %exitcond.not.i.1 = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !1177, !noundef !9
  %i.cb = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.cb, ptr %i.ak, align 8, !alias.scope !1178, !noalias !1174
  %.not.i33.1 = icmp eq i8 %i.ca, 108
  br i1 %.not.i33.1, label %bb.w, label %bb.aa, !prof !40

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180), !noalias !1123
  %exitcond.not.i.2 = icmp eq i64 %i.cb, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !1181, !noundef !9
  %i.ce = add i64 %i.aq, 4                        ; 3 uses
  store i64 %i.ce, ptr %i.ak, align 8, !alias.scope !1182, !noalias !1174
  %.not.i33.2 = icmp eq i8 %i.cd, 115
  br i1 %.not.i33.2, label %bb.y, label %bb.aa, !prof !40

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183), !noalias !1123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184), !noalias !1123
  %exitcond.not.i.3 = icmp eq i64 %i.ce, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !1185, !noundef !9
  %i.ch = add i64 %i.aq, 5
  store i64 %i.ch, ptr %i.ak, align 8, !alias.scope !1186, !noalias !1174
  %.not.i33.3 = icmp eq i8 %i.cg, 101
  br i1 %.not.i33.3, label %.thread, label %bb.aa, !prof !40

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1187
  store i64 5, ptr %i.m, align 8, !noalias !1187
  %i.ci = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !1188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1187
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1187
  store i64 9, ptr %i.l, align 8, !noalias !1187
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !1188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1187
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.ck = add i64 %i.aq, 1
  store i64 %i.ck, ptr %i.ak, align 8, !alias.scope !1189, !noalias !1123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1133
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1123, !inline_history !958
  %i.cl = load i64, ptr %i.ai, align 8, !range !11, !noalias !1133, !noundef !9 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.co = add i64 %i.aq, 1
  store i64 %i.co, ptr %i.ak, align 8, !alias.scope !1190, !noalias !1123
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cp, align 8, !alias.scope !1124, !noalias !1123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1133
  call void @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1123, !inline_history !958
  %i.cq = load i64, ptr %i.ag, align 8, !range !12, !noalias !1133, !noundef !9 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1133 ; 3 uses
  br i1 %i.cr, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 8, !alias.scope !1124, !noalias !1123, !noundef !9
  %i.cw = add i8 %i.cv, -1                        ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 8, !alias.scope !1124, !noalias !1123
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.ay, label %bb.az, !prof !7

bb.ae:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskIqAKC4t9Ft_2yr.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 8, !alias.scope !1124, !noalias !1123, !noundef !9
  %i.da = add i8 %i.cz, -1                        ; 2 uses
  store i8 %i.da, ptr %i.cy, align 8, !alias.scope !1124, !noalias !1123
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.cc, label %bb.cd, !prof !7

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51
  %.sroa.0.1.i50.ph = phi ptr [ %i.bh, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51 ], [ %i.bi, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i50.ph, ptr %i.dc, align 8, !alias.scope !1123, !noalias !1124
  store i64 -1, ptr %0, align 8, !alias.scope !1123, !noalias !1124
  br label %bb.ah

bb.ag:                                            ; preds = %.thread138, %.thread135
  %.sroa.24.sroa.23.sroa.0.0.in.in = phi i64 [ %.sroa.24.sroa.23.sroa.0.4.in.in, %.thread138 ], [ %.sroa.24.sroa.23.sroa.0.3.in.in, %.thread135 ] ; 3 uses
  %.sroa.49.0 = phi i64 [ %.sroa.49.3, %.thread138 ], [ %.sroa.49.2, %.thread135 ]
  %.sroa.41.0 = phi i64 [ %.sroa.41.4, %.thread138 ], [ %.sroa.41.3, %.thread135 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread138 ], [ %.sroa.0.3, %.thread135 ] ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.dd, label %._crit_edge, label %.thread, !prof !1191

._crit_edge:                                      ; preds = %bb.ag
  %i.de = inttoptr i64 %.sroa.24.sroa.23.sroa.0.0.in.in to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cc, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42
  %.sroa.0.1.i41.ph = phi ptr [ %i.bt, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42 ], [ %i.bu, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i41.ph, ptr %i.df, align 8, !alias.scope !1123, !noalias !1124
  store i64 -1, ptr %0, align 8, !alias.scope !1123, !noalias !1124
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ci, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cj, %bb.aa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dg, align 8, !alias.scope !1123, !noalias !1124
  store i64 -1, ptr %0, align 8, !alias.scope !1123, !noalias !1124
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.cn, align 8, !noalias !1133, !nonnull !9, !align !10, !noundef !9
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !1123, !noalias !1124
  store i64 -1, ptr %0, align 8, !alias.scope !1123, !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1133
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cn, align 8, !noalias !1133 ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1192
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i25 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i26 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i25, align 8, !alias.scope !1193, !noalias !1194
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i28311 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27, align 8, !alias.scope !1193, !noalias !1194
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !1192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195), !noalias !1123
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !noalias !1196
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19: ; preds = %bb.ao, %bb.an
  %i.dm = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i28311, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i21 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i26, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i22 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1192
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i14 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskIqAKC4t9Ft_2yr.exit30: ; preds = %bb.al, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19, %bb.ap
  %.sroa.24.sroa.23.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i21, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i21, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ %.lobit.i.i14, %bb.ap ], [ 0, %bb.al ]
  %.sroa.41.1 = phi i64 [ %i.dm, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i22, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskIqAKC4t9Ft_2yr.exit.i19 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
end_hunk_0
