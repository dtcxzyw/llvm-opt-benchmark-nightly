Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.07?download=true
inline.NumInlined: 1191
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvNvXs9_NtCs79iw4ZC9yCo_10serde_json2deINtB8_9MapAccesspENtNtCscWOm1fvf9pm_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECskm6LeB9lWb4_9wasm_ping:bb.a
  br i1 %i.x, label %bb.h, label %bb.j, !prof !8

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !8

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !1546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1548, !noundef !5
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !30

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !1549, !noalias !1550
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
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
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
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
define internal fastcc void @_RINvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB5_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 31 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1733, !noalias !1734, !noundef !5 ; 10 uses
  %.promoted.i53 = load i64, ptr %i.ak, align 8, !alias.scope !1732, !noalias !1735 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i53, %i.am
  br i1 %i.an, label %.lr.ph.i, label %.loopexit145

.lr.ph.i:                                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1733, !noalias !1734, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aq = phi i64 [ %.promoted.i53, %.lr.ph.i ], [ %i.at, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737), !noalias !1730
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !1738, !noundef !5 ; 3 uses
  switch i8 %i.as, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !1739, !noalias !1735
  %exitcond.not.i54 = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i54, label %.loopexit145, label %bb.b

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1740
  store i64 5, ptr %i.aj, align 8, !noalias !1740
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !1730, !inline_history !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1740
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.aw = add i8 %i.as, -48
  %or.cond8.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond8.i, label %bb.cm, label %bb.cl, !prof !31

bb.e:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.ax = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.ax, ptr %i.ak, align 8, !alias.scope !1741, !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %umax.i45 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744), !noalias !1730
  %exitcond.not.i47.not = icmp ult i64 %i.ax, %i.am
  br i1 %exitcond.not.i47.not, label %bb.f, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !1745, !noundef !5
  %i.ba = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.ba, ptr %i.ak, align 8, !alias.scope !1746, !noalias !1747
  %.not.i48 = icmp eq i8 %i.az, 117
  br i1 %.not.i48, label %bb.g, label %bb.k, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749), !noalias !1730
  %exitcond.not.i47.1 = icmp eq i64 %i.ba, %umax.i45
  br i1 %exitcond.not.i47.1, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1750, !noundef !5
  %i.bd = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bd, ptr %i.ak, align 8, !alias.scope !1751, !noalias !1747
  %.not.i48.1 = icmp eq i8 %i.bc, 108
  br i1 %.not.i48.1, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753), !noalias !1730
  %exitcond.not.i47.2 = icmp eq i64 %i.bd, %umax.i45
  br i1 %exitcond.not.i47.2, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1754, !noundef !5
  %i.bg = add i64 %i.aq, 4
  store i64 %i.bg, ptr %i.ak, align 8, !alias.scope !1755, !noalias !1747
  %.not.i48.2 = icmp eq i8 %i.bf, 108
  br i1 %.not.i48.2, label %.thread, label %bb.k, !prof !32

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1756
  store i64 5, ptr %i.i, align 8, !noalias !1756
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1756
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1756
  store i64 9, ptr %i.h, align 8, !noalias !1756
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1756
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.bj = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bj, ptr %i.ak, align 8, !alias.scope !1758, !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %umax.i36 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761), !noalias !1730
  %exitcond.not.i38.not = icmp ult i64 %i.bj, %i.am
  br i1 %exitcond.not.i38.not, label %bb.m, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1762, !noundef !5
  %i.bm = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !1763, !noalias !1764
  %.not.i39 = icmp eq i8 %i.bl, 114
  br i1 %.not.i39, label %bb.n, label %bb.r, !prof !32

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766), !noalias !1730
  %exitcond.not.i38.1 = icmp eq i64 %i.bm, %umax.i36
  br i1 %exitcond.not.i38.1, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1767, !noundef !5
  %i.bp = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bp, ptr %i.ak, align 8, !alias.scope !1768, !noalias !1764
  %.not.i39.1 = icmp eq i8 %i.bo, 117
  br i1 %.not.i39.1, label %bb.p, label %bb.r, !prof !32

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770), !noalias !1730
  %exitcond.not.i38.2 = icmp eq i64 %i.bp, %umax.i36
  br i1 %exitcond.not.i38.2, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1771, !noundef !5
  %i.bs = add i64 %i.aq, 4
  store i64 %i.bs, ptr %i.ak, align 8, !alias.scope !1772, !noalias !1764
  %.not.i39.2 = icmp eq i8 %i.br, 101
  br i1 %.not.i39.2, label %.thread, label %bb.r, !prof !32

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1773
  store i64 5, ptr %i.k, align 8, !noalias !1773
  %i.bt = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1773
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1773
  store i64 9, ptr %i.j, align 8, !noalias !1773
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1773
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.bv = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bv, ptr %i.ak, align 8, !alias.scope !1775, !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.am) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778), !noalias !1730
  %exitcond.not.i.not = icmp ult i64 %i.bv, %i.am
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !1779, !noundef !5
  %i.by = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.by, ptr %i.ak, align 8, !alias.scope !1780, !noalias !1781
  %.not.i33 = icmp eq i8 %i.bx, 97
  br i1 %.not.i33, label %bb.u, label %bb.aa, !prof !32

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783), !noalias !1730
  %exitcond.not.i.1 = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !1784, !noundef !5
  %i.cb = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.cb, ptr %i.ak, align 8, !alias.scope !1785, !noalias !1781
  %.not.i33.1 = icmp eq i8 %i.ca, 108
  br i1 %.not.i33.1, label %bb.w, label %bb.aa, !prof !32

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787), !noalias !1730
  %exitcond.not.i.2 = icmp eq i64 %i.cb, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !1788, !noundef !5
  %i.ce = add i64 %i.aq, 4                        ; 3 uses
  store i64 %i.ce, ptr %i.ak, align 8, !alias.scope !1789, !noalias !1781
  %.not.i33.2 = icmp eq i8 %i.cd, 115
  br i1 %.not.i33.2, label %bb.y, label %bb.aa, !prof !32

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791), !noalias !1730
  %exitcond.not.i.3 = icmp eq i64 %i.ce, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !1792, !noundef !5
  %i.ch = add i64 %i.aq, 5
  store i64 %i.ch, ptr %i.ak, align 8, !alias.scope !1793, !noalias !1781
  %.not.i33.3 = icmp eq i8 %i.cg, 101
  br i1 %.not.i33.3, label %.thread, label %bb.aa, !prof !32

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1794
  store i64 5, ptr %i.m, align 8, !noalias !1794
  %i.ci = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !1795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1794
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1794
  store i64 9, ptr %i.l, align 8, !noalias !1794
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !1795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1794
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.ck = add i64 %i.aq, 1
  store i64 %i.ck, ptr %i.ak, align 8, !alias.scope !1796, !noalias !1730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1740
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false), !noalias !1730, !inline_history !1565
  %i.cl = load i64, ptr %i.ai, align 8, !range !19, !noalias !1740, !noundef !5 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.co = add i64 %i.aq, 1
  store i64 %i.co, ptr %i.ak, align 8, !alias.scope !1797, !noalias !1730
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cp, align 8, !alias.scope !1731, !noalias !1730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1740
  call void @_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !1730, !inline_history !1565
  %i.cq = load i64, ptr %i.ag, align 8, !range !17, !noalias !1740, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1740 ; 3 uses
  br i1 %i.cr, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 8, !alias.scope !1731, !noalias !1730, !noundef !5
  %i.cw = add i8 %i.cv, -1                        ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 8, !alias.scope !1731, !noalias !1730
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.ay, label %bb.az, !prof !12

bb.ae:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 8, !alias.scope !1731, !noalias !1730, !noundef !5
  %i.da = add i8 %i.cz, -1                        ; 2 uses
  store i8 %i.da, ptr %i.cy, align 8, !alias.scope !1731, !noalias !1730
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.cc, label %bb.cd, !prof !12

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51
  %.sroa.0.1.i50.ph = phi ptr [ %i.bh, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51 ], [ %i.bi, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i50.ph, ptr %i.dc, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  br label %bb.ah

bb.ag:                                            ; preds = %.thread138, %.thread135
  %.sroa.24.sroa.23.sroa.0.0.in.in = phi i64 [ %.sroa.24.sroa.23.sroa.0.4.in.in, %.thread138 ], [ %.sroa.24.sroa.23.sroa.0.3.in.in, %.thread135 ] ; 3 uses
  %.sroa.49.0 = phi i64 [ %.sroa.49.3, %.thread138 ], [ %.sroa.49.2, %.thread135 ]
  %.sroa.41.0 = phi i64 [ %.sroa.41.4, %.thread138 ], [ %.sroa.41.3, %.thread135 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread138 ], [ %.sroa.0.3, %.thread135 ] ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.dd, label %._crit_edge, label %.thread, !prof !1798

._crit_edge:                                      ; preds = %bb.ag
  %i.de = inttoptr i64 %.sroa.24.sroa.23.sroa.0.0.in.in to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cc, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42
  %.sroa.0.1.i41.ph = phi ptr [ %i.bt, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i42 ], [ %i.bu, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i41.ph, ptr %i.df, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ci, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cj, %bb.aa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dg, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.cn, align 8, !noalias !1740, !nonnull !5, !align !9, !noundef !5
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1740
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cn, align 8, !noalias !1740 ; 5 uses
  switch i64 %i.cl, label %default.unreachable408 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30
    i64 2, label %bb.ap
  ]

default.unreachable408:                           ; preds = %bb.cp, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dj = bitcast i64 %.sroa.4.0.copyload to double
  %i.dk = tail call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ueq double %i.dk, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1799
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i25 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i26 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i25, align 8, !alias.scope !1800, !noalias !1801
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i28315 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27, align 8, !alias.scope !1800, !noalias !1801
  br label %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !1799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802), !noalias !1730
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5value5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !noalias !1803
  br label %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19

_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19: ; preds = %bb.ao, %bb.an
  %i.dm = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i28315, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i21 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i26, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i22 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1799
  br label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i14 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30

_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30: ; preds = %bb.al, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19, %bb.ap
  %.sroa.24.sroa.23.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i21, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i21, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19 ], [ %.lobit.i.i14, %bb.ap ], [ 0, %bb.al ]
  %.sroa.41.1 = phi i64 [ %i.dm, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i22, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i19 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
end_hunk_0
begin_hunk_1_@_RINvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB5_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskm6LeB9lWb4_9wasm_ping:bb.a
  store i64 10, ptr %i.y, align 8, !noalias !1740
  %i.id = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !1730, !inline_history !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1740
  br label %bb.cn

bb.cm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1740
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true), !noalias !1730, !inline_history !1565
  %i.ie = load i64, ptr %i.ah, align 8, !range !19, !noalias !1740, !noundef !5 ; 2 uses
  %i.if = icmp eq i64 %i.ie, -1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br i1 %i.if, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge, %bb.cl
  %i.ih = phi ptr [ %i.de, %._crit_edge ], [ %i.id, %bb.cl ]
  %i.ii = call noundef nonnull align 8 ptr @_RINvMs0_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !1730
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ii, ptr %i.ij, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %i.ik = load ptr, ptr %i.ig, align 8, !noalias !1740, !nonnull !5, !align !9, !noundef !5
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !alias.scope !1730, !noalias !1731
  store i64 -1, ptr %0, align 8, !alias.scope !1730, !noalias !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1740
  br label %bb.ah

bb.cp:                                            ; preds = %bb.cm
  %.sroa.465.0.copyload = load i64, ptr %i.ig, align 8, !noalias !1740 ; 5 uses
  switch i64 %i.ie, label %default.unreachable408 [
    i64 0, label %bb.cq
    i64 1, label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit
    i64 2, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.im = bitcast i64 %.sroa.465.0.copyload to double
  %i.in = tail call double @llvm.fabs.f64(double %i.im)
  %i.io = fcmp ueq double %i.in, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1860
  br i1 %i.io, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !1861, !noalias !1862
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i316 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !1861, !noalias !1862
  br label %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i

bb.cs:                                            ; preds = %bb.cq
  store i64 -9223372036854775808, ptr %i.x, align 8, !noalias !1860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863), !noalias !1730
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5value5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.x), !noalias !1864
  br label %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i

_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.cs, %bb.cr
  %i.ip = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i316, %bb.cr ], [ %.sroa.465.0.copyload, %bb.cs ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i, %bb.cr ], [ 2, %bb.cs ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.cr ], [ -9223372036854775806, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1860
  br label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.ct:                                            ; preds = %bb.cp
  %.lobit.i.i = lshr i64 %.sroa.465.0.copyload, 63
  br label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.cp, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.ct
  %.sroa.24.sroa.23.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.24.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %.lobit.i.i, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.41.5 = phi i64 [ %i.ip, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %.sroa.465.0.copyload, %bb.ct ], [ %.sroa.465.0.copyload, %bb.cp ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i ], [ -9223372036854775806, %bb.ct ], [ -9223372036854775806, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1740
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.24.sroa.23.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.24.sroa.23.sroa.0.2.in.in, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit ], [ %.sroa.24.sroa.23.sroa.0.1, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30 ], [ %.sroa.24.sroa.23.sroa.0.5, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit ]
  %.sroa.24.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.24.sroa.23.sroa.0.2.in.in, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit ], [ %.sroa.24.sroa.0.1, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30 ], [ %.sroa.24.sroa.0.5, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit ], [ undef, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30 ], [ undef, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit ]
  %.sroa.41.6 = phi i64 [ %.sroa.41.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.41.2, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit ], [ %.sroa.41.1, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30 ], [ %.sroa.41.5, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit ], [ %.sroa.0.1, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit30 ], [ %.sroa.0.5, %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit ]
  store i64 %.sroa.0.6, ptr %0, align 8, !noalias !1731
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.sroa.23.0.insert.ext = and i64 %.sroa.24.sroa.23.sroa.0.6, -256
  %.sroa.24.sroa.0.0.insert.ext = and i64 %.sroa.24.sroa.0.6, 255
  %.sroa.24.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24.sroa.0.0.insert.ext, %.sroa.24.sroa.23.0.insert.ext
  store i64 %.sroa.24.sroa.0.0.insert.insert, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !1731
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.41.6, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !1731
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.49.4, ptr %.sroa.49.0..sroa_idx, align 8, !noalias !1731
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, i64 40, i1 false), !noalias !1731
  br label %bb.cu

bb.cu:                                            ; preds = %.thread, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.loopexit145, %bb.ah, %bb.cu
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB5_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.47 = alloca [40 x i8], align 8           ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1957, !noalias !1958, !noundef !5 ; 8 uses
  %.promoted.i39 = load i64, ptr %i.ab, align 8, !alias.scope !1956, !noalias !1959 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i39, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1957, !noalias !1958, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i39, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960), !noalias !1954
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1961, !noundef !5 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !1962, !noalias !1959
  %exitcond.not.i40 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i40, label %.loopexit, label %bb.b

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  switch i8 %i.aj, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1963
  store i64 5, ptr %i.aa, align 8, !noalias !1963
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !1954, !inline_history !1876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1963
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !1954, !noalias !1955
  store i64 -1, ptr %0, align 8, !alias.scope !1954, !noalias !1955
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.an = add i8 %i.aj, -48
  %or.cond8.i = icmp ult i8 %i.an, 10
  br i1 %or.cond8.i, label %bb.cf, label %bb.ce, !prof !31

bb.e:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !1964, !noalias !1954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966), !noalias !1954
  %exitcond.not.i34.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i34.not, label %bb.f, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1967, !noundef !5
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !1968, !noalias !1969
  %.not.i35 = icmp eq i8 %i.aq, 117
  br i1 %.not.i35, label %bb.g, label %bb.k, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970), !noalias !1954
  %exitcond.not.i34.1 = icmp eq i64 %i.ar, %umax.i32
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1971, !noundef !5
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !1972, !noalias !1969
  %.not.i35.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i35.1, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973), !noalias !1954
  %exitcond.not.i34.2 = icmp eq i64 %i.au, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1974, !noundef !5
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !1975, !noalias !1969
  %.not.i35.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i35.2, label %.thread, label %bb.k, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1976
  store i64 5, ptr %i.f, align 8, !noalias !1976
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1976
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1976
  store i64 9, ptr %i.e, align 8, !noalias !1976
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1976
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !1978, !noalias !1954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980), !noalias !1954
  %exitcond.not.i26.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i26.not, label %bb.m, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1981, !noundef !5
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !1982, !noalias !1983
  %.not.i27 = icmp eq i8 %i.bc, 114
  br i1 %.not.i27, label %bb.n, label %bb.r, !prof !32

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984), !noalias !1954
  %exitcond.not.i26.1 = icmp eq i64 %i.bd, %umax.i24
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1985, !noundef !5
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !1986, !noalias !1983
  %.not.i27.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i27.1, label %bb.p, label %bb.r, !prof !32

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987), !noalias !1954
  %exitcond.not.i26.2 = icmp eq i64 %i.bg, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1988, !noundef !5
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !1989, !noalias !1983
  %.not.i27.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i27.2, label %.thread, label %bb.r, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1990
  store i64 5, ptr %i.h, align 8, !noalias !1990
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1990
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1990
  store i64 9, ptr %i.g, align 8, !noalias !1990
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1990
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !1992, !noalias !1954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994), !noalias !1954
  %exitcond.not.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1995, !noundef !5
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !1996, !noalias !1997
  %.not.i22 = icmp eq i8 %i.bo, 97
  br i1 %.not.i22, label %bb.u, label %bb.aa, !prof !32

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998), !noalias !1954
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1999, !noundef !5
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !2000, !noalias !1997
  %.not.i22.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i22.1, label %bb.w, label %bb.aa, !prof !32

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001), !noalias !1954
  %exitcond.not.i.2 = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !2002, !noundef !5
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !2003, !noalias !1997
  %.not.i22.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i22.2, label %bb.y, label %bb.aa, !prof !32

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004), !noalias !1954
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !2005, !noundef !5
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !2006, !noalias !1997
  %.not.i22.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i22.3, label %.thread, label %bb.aa, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2007
  store i64 5, ptr %i.j, align 8, !noalias !2007
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2007
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2007
  store i64 9, ptr %i.i, align 8, !noalias !2007
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2007
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !2009, !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1963
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !1954, !inline_history !1876
  %i.cc = load i64, ptr %i.z, align 8, !range !19, !noalias !1963, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !2010, !noalias !1954
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !1955, !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1963
  call void @_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !1954, !inline_history !1876
  %i.ch = load i64, ptr %i.x, align 8, !range !17, !noalias !1963, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !1963 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !1955, !noalias !1954, !noundef !5
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !1955, !noalias !1954
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !12

bb.ae:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !1955, !noalias !1954, !noundef !5
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !1955, !noalias !1954
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.bw, label %bb.bx, !prof !12

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37
  %.sroa.0.1.i36.ph = phi ptr [ %i.ay, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i36.ph, ptr %i.ct, align 8, !alias.scope !1954, !noalias !1955
  store i64 -1, ptr %0, align 8, !alias.scope !1954, !noalias !1955
  br label %bb.ah

bb.ag:                                            ; preds = %.thread86, %.thread83
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread86 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread83 ] ; 3 uses
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread86 ], [ %.sroa.45.2, %.thread83 ]
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread86 ], [ %.sroa.37.3, %.thread83 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread86 ], [ %.sroa.0.3, %.thread83 ] ; 2 uses
  %i.cu = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.cu, label %._crit_edge, label %.thread, !prof !2011

._crit_edge:                                      ; preds = %bb.ag
  %i.cv = inttoptr i64 %.sroa.22.sroa.21.sroa.0.0.in.in to ptr
  br label %bb.cg

bb.ah:                                            ; preds = %bb.ch, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29
  %.sroa.0.1.i28.ph = phi ptr [ %i.bk, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bl, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i28.ph, ptr %i.cw, align 8, !alias.scope !1954, !noalias !1955
  store i64 -1, ptr %0, align 8, !alias.scope !1954, !noalias !1955
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.bz, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ca, %bb.aa ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cx, align 8, !alias.scope !1954, !noalias !1955
  store i64 -1, ptr %0, align 8, !alias.scope !1954, !noalias !1955
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ce, align 8, !noalias !1963, !nonnull !5, !align !9, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !1954, !noalias !1955
  store i64 -1, ptr %0, align 8, !alias.scope !1954, !noalias !1955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1963
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !1963 ; 5 uses
  switch i64 %i.cc, label %default.unreachable214 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit19
    i64 2, label %bb.ap
  ]

default.unreachable214:                           ; preds = %bb.ci, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = bitcast i64 %.sroa.4.0.copyload to double
  %i.db = tail call double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ueq double %i.db, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2012
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i14 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i15 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i14, align 8, !alias.scope !2013, !noalias !2014
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i17181 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16, align 8, !alias.scope !2013, !noalias !2014
  br label %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015), !noalias !1954
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5value5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !2016
  br label %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8

_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8: ; preds = %bb.ao, %bb.an
  %i.dd = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i17181, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i10 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i15, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i11 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2012
  br label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit19

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i3 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit19

_RINvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskm6LeB9lWb4_9wasm_ping.exit19: ; preds = %bb.al, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8, %bb.ap
  %.sroa.22.sroa.21.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i10, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.22.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i10, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8 ], [ %.lobit.i.i3, %bb.ap ], [ 0, %bb.al ]
  %.sroa.37.1 = phi i64 [ %i.dd, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i11, %_RINvXNvXNtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i8 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1963
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer22deserialize_identifierINtNtCseYThcfBXbiQ_19serde_path_to_error2de10CaptureKeyNtNvXNvXsF_NtB1l_5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1l_11Deserialize11deserializeNtB3q_5FieldB4n_11deserialize12FieldVisitorEECskm6LeB9lWb4_9wasm_ping:bb.a
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2232, !noalias !2233, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !2237, !noundef !5 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2238, !noalias !2235
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2230
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !8

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2230
  store i64 5, ptr %i.c, align 8, !noalias !2230
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2230
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !2228, !noalias !2239
  store i8 1, ptr %0, align 8, !alias.scope !2228, !noalias !2239
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_strINtNtCseYThcfBXbiQ_19serde_path_to_error2de10CaptureKeyNtNvXNvXsF_NtB1l_5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1l_11Deserialize11deserializeNtB3j_5FieldB4g_11deserialize12FieldVisitorEECskm6LeB9lWb4_9wasm_ping.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit.i
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !2240, !noalias !2241
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !2229, !noalias !2241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2230
  call void @_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !2228
  %i.t = load i64, ptr %i.a, align 8, !range !17, !noalias !2230, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2230 ; 4 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit.i
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31), !noalias !2228
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8, !alias.scope !2228, !noalias !2239
  store i8 1, ptr %0, align 8, !alias.scope !2228, !noalias !2239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2230
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_strINtNtCseYThcfBXbiQ_19serde_path_to_error2de10CaptureKeyNtNvXNvXsF_NtB1l_5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1l_11Deserialize11deserializeNtB3j_5FieldB4g_11deserialize12FieldVisitorEECskm6LeB9lWb4_9wasm_ping.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2230 ; 2 uses
  %i.z = trunc nuw i64 %i.t to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RINvXs6_NtCseYThcfBXbiQ_19serde_path_to_error2deINtB6_10CaptureKeyNtNvXNvXsF_NtNtCscWOm1fvf9pm_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1f_11Deserialize11deserializeNtB17_5FieldB2v_11deserialize12FieldVisitorENtB1f_7Visitor9visit_strNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload.i), !noalias !2228
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RINvXs6_NtCseYThcfBXbiQ_19serde_path_to_error2deINtB6_10CaptureKeyNtNvXNvXsF_NtNtCscWOm1fvf9pm_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1f_11Deserialize11deserializeNtB17_5FieldB2v_11deserialize12FieldVisitorENtB1f_7Visitor18visit_borrowed_strNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload.i), !noalias !2228
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2230
  %i.aa = load i8, ptr %i.b, align 8, !range !11, !noalias !2230, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %._crit_edge.i, label %bb.l, !prof !12

._crit_edge.i:                                    ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !2230
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.e
  %i.ac = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.x, %bb.e ]
  %i.ad = call noundef nonnull align 8 ptr @_RINvMs0_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !2228
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2228, !noalias !2239
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !range !11, !noalias !2230, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !2228, !noalias !2239
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge.i = phi i8 [ 0, %bb.l ], [ 1, %bb.k ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !2228, !noalias !2239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2230
  br label %_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_strINtNtCseYThcfBXbiQ_19serde_path_to_error2de10CaptureKeyNtNvXNvXsF_NtB1l_5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1l_11Deserialize11deserializeNtB3j_5FieldB4g_11deserialize12FieldVisitorEECskm6LeB9lWb4_9wasm_ping.exit

_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer15deserialize_strINtNtCseYThcfBXbiQ_19serde_path_to_error2de10CaptureKeyNtNvXNvXsF_NtB1l_5implsINtNtCskKLDkoKarTP_4core6result6ResultppENtB1l_11Deserialize11deserializeNtB3j_5FieldB4g_11deserialize12FieldVisitorEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.loopexit.i, %bb.f, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs5_NtCs79iw4ZC9yCo_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer23deserialize_ignored_anyINtNtCseYThcfBXbiQ_19serde_path_to_error4wrap4WrapNtNtB1l_11ignored_any10IgnoredAnyEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(64) initializes((16, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2323
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2324, !noalias !2325, !noundef !5 ; 2 uses
  %.promoted.i176.i = load i64, ptr %i.p, align 8, !alias.scope !2326, !noalias !2327 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i176.i, %i.r
  br i1 %i.s, label %.lr.ph.i.lr.ph.i, label %.loopexit130.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.t, align 8, !alias.scope !2328, !noalias !2325
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bb, %.lr.ph.i.lr.ph.i
  %i.v = phi ptr [ %.pre.i, %.lr.ph.i.lr.ph.i ], [ %i.dw, %bb.bb ] ; 11 uses
  %.promoted.i179.i = phi i64 [ %.promoted.i176.i, %.lr.ph.i.lr.ph.i ], [ %.promoted.i.i, %bb.bb ]
  %i.w = phi i64 [ %i.r, %.lr.ph.i.lr.ph.i ], [ %i.dv, %bb.bb ] ; 7 uses
  %.sroa.7.0178.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i ], [ %.sroa.027.2163.i, %bb.bb ] ; 2 uses
  %.sroa.039.0177.i = phi i1 [ false, %.lr.ph.i.lr.ph.i ], [ true, %bb.bb ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.x = phi i64 [ %.promoted.i179.i, %.lr.ph.i.i ], [ %i.aa, %bb.c ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !2331, !noundef !5 ; 3 uses
  switch i8 %i.z, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.e
    i8 116, label %bb.k
    i8 102, label %bb.q
    i8 45, label %bb.y
    i8 34, label %bb.z
    i8 91, label %bb.aa
    i8 123, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !2332, !noalias !2327
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.w
  br i1 %exitcond.not.i.i, label %.loopexit130.i, label %bb.b

.loopexit130.i:                                   ; preds = %bb.bb, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2323
  store i64 5, ptr %i.n, align 8, !noalias !2323
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2323
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ac = add i8 %i.z, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i, label %bb.ae, label %bb.ad, !prof !31

bb.e:                                             ; preds = %bb.b
  %i.ad = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !2333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  %exitcond.not.i53.not.i = icmp ult i64 %i.ad, %i.w
  br i1 %exitcond.not.i53.not.i, label %bb.f, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !2336, !noundef !5
  %i.ag = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.ag, ptr %i.p, align 8, !alias.scope !2337, !noalias !2338
  %.not.i.i = icmp eq i8 %i.af, 117
  br i1 %.not.i.i, label %bb.g, label %.loopexit246.i, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  %exitcond.not.i53.1.i = icmp eq i64 %i.ag, %umax.i.i
  br i1 %exitcond.not.i53.1.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2340, !noundef !5
  %i.aj = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.p, align 8, !alias.scope !2341, !noalias !2338
  %.not.i.1.i = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1.i, label %bb.i, label %.loopexit246.i, !prof !32

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  %exitcond.not.i53.2.i = icmp eq i64 %i.aj, %umax.i.i
  br i1 %exitcond.not.i53.2.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2343, !noundef !5
  %i.am = add i64 %i.x, 4
  store i64 %i.am, ptr %i.p, align 8, !alias.scope !2344, !noalias !2338
  %.not.i.2.i = icmp eq i8 %i.al, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, label %.loopexit246.i, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2345
  store i64 5, ptr %i.f, align 8, !noalias !2345
  %i.an = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2345
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

.loopexit246.i:                                   ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2345
  store i64 9, ptr %i.e, align 8, !noalias !2345
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2345
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.ap = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ap, ptr %i.p, align 8, !alias.scope !2347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  %umax.i56.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %exitcond.not.i58.not.i = icmp ult i64 %i.ap, %i.w
  br i1 %exitcond.not.i58.not.i, label %bb.l, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !2350, !noundef !5
  %i.as = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.as, ptr %i.p, align 8, !alias.scope !2351, !noalias !2352
  %.not.i59.i = icmp eq i8 %i.ar, 114
  br i1 %.not.i59.i, label %bb.m, label %.loopexit239.i, !prof !32

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  %exitcond.not.i58.1.i = icmp eq i64 %i.as, %umax.i56.i
  br i1 %exitcond.not.i58.1.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !2354, !noundef !5
  %i.av = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.av, ptr %i.p, align 8, !alias.scope !2355, !noalias !2352
  %.not.i59.1.i = icmp eq i8 %i.au, 117
  br i1 %.not.i59.1.i, label %bb.o, label %.loopexit239.i, !prof !32

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %exitcond.not.i58.2.i = icmp eq i64 %i.av, %umax.i56.i
  br i1 %exitcond.not.i58.2.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2357, !noundef !5
  %i.ay = add i64 %i.x, 4
  store i64 %i.ay, ptr %i.p, align 8, !alias.scope !2358, !noalias !2352
  %.not.i59.2.i = icmp eq i8 %i.ax, 101
  br i1 %.not.i59.2.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, label %.loopexit239.i, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2359
  store i64 5, ptr %i.d, align 8, !noalias !2359
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2359
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

.loopexit239.i:                                   ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2359
  store i64 9, ptr %i.c, align 8, !noalias !2359
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2359
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bb = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.p, align 8, !alias.scope !2361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  %umax.i65.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.w) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %exitcond.not.i67.not.i = icmp ult i64 %i.bb, %i.w
  br i1 %exitcond.not.i67.not.i, label %bb.r, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !2364, !noundef !5
  %i.be = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.be, ptr %i.p, align 8, !alias.scope !2365, !noalias !2366
  %.not.i68.i = icmp eq i8 %i.bd, 97
  br i1 %.not.i68.i, label %bb.s, label %.loopexit232.i, !prof !32

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %exitcond.not.i67.1.i = icmp eq i64 %i.be, %umax.i65.i
  br i1 %exitcond.not.i67.1.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2368, !noundef !5
  %i.bh = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.p, align 8, !alias.scope !2369, !noalias !2366
  %.not.i68.1.i = icmp eq i8 %i.bg, 108
  br i1 %.not.i68.1.i, label %bb.u, label %.loopexit232.i, !prof !32

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  %exitcond.not.i67.2.i = icmp eq i64 %i.bh, %umax.i65.i
  br i1 %exitcond.not.i67.2.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !2371, !noundef !5
  %i.bk = add i64 %i.x, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.p, align 8, !alias.scope !2372, !noalias !2366
  %.not.i68.2.i = icmp eq i8 %i.bj, 115
  br i1 %.not.i68.2.i, label %bb.w, label %.loopexit232.i, !prof !32

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  %exitcond.not.i67.3.i = icmp eq i64 %i.bk, %umax.i65.i
  br i1 %exitcond.not.i67.3.i, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2374, !noundef !5
  %i.bn = add i64 %i.x, 5
  store i64 %i.bn, ptr %i.p, align 8, !alias.scope !2375, !noalias !2366
  %.not.i68.3.i = icmp eq i8 %i.bm, 101
  br i1 %.not.i68.3.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, label %.loopexit232.i, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i: ; preds = %bb.w, %bb.u, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2376
  store i64 5, ptr %i.b, align 8, !noalias !2376
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2376
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

.loopexit232.i:                                   ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2376
  store i64 9, ptr %i.a, align 8, !noalias !2376
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2376
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.y:                                             ; preds = %bb.b
  %i.bq = add i64 %i.x, 1
  store i64 %i.bq, ptr %i.p, align 8, !alias.scope !2378
  %i.br = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %.not45.i = icmp eq ptr %i.br, null
  br i1 %.not45.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.z:                                             ; preds = %bb.b
  %i.bs = add i64 %i.x, 1
  store i64 %i.bs, ptr %i.p, align 8, !alias.scope !2379
  %i.bt = tail call noundef align 8 ptr @_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t) ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.aa:                                            ; preds = %bb.b, %bb.b
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %.sroa.039.0177.i, i8 %.sroa.7.0178.i)
  %i.bu = load i64, ptr %i.p, align 8, !alias.scope !2380, !noundef !5
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.p, align 8, !alias.scope !2380
  br label %bb.ac

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.ae, %bb.z, %bb.y, %bb.x, %bb.p, %bb.j
  br i1 %.sroa.039.0177.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !2323, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit, label %bb.af

bb.ac:                                            ; preds = %bb.af, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, %bb.aa
  %.sroa.027.0.i = phi i8 [ %i.z, %bb.aa ], [ %i.ck, %bb.af ], [ %.sroa.7.0178.i, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i ] ; 2 uses
  %.sroa.042.0.i = phi i1 [ false, %bb.aa ], [ true, %bb.af ], [ true, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i ]
  %i.by = load i64, ptr %i.q, align 8, !alias.scope !2381, !noalias !2382, !noundef !5 ; 6 uses
  %.promoted.i73162.i = load i64, ptr %i.p, align 8, !alias.scope !2383, !noalias !2384 ; 2 uses
  %i.bz = icmp ult i64 %.promoted.i73162.i, %i.by
  br i1 %i.bz, label %.lr.ph.i75.lr.ph.i, label %.loopexit123.i

.lr.ph.i75.lr.ph.i:                               ; preds = %bb.ac
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !2323
  %i.ca = load ptr, ptr %i.t, align 8, !alias.scope !2381, !noalias !2382, !nonnull !5, !noundef !5 ; 3 uses
  %i.cb = load i64, ptr %0, align 8, !range !15, !alias.scope !2323
  %i.cc = load ptr, ptr %i.u, align 8, !alias.scope !2323, !nonnull !5
  br label %.lr.ph.i75.i

bb.ad:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2323
  store i64 10, ptr %i.m, align 8, !noalias !2323
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2323
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.ae:                                            ; preds = %bb.d
  %i.ce = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %.not49.i = icmp eq ptr %i.ce, null
  br i1 %.not49.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.af:                                            ; preds = %bb.ab
  %i.cf = add i64 %i.bw, -1                       ; 3 uses
  store i64 %i.cf, ptr %i.o, align 8, !alias.scope !2323
  %i.cg = load i64, ptr %0, align 8, !range !15, !alias.scope !2323, !noundef !5
  %i.ch = icmp ult i64 %i.cf, %i.cg
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = load ptr, ptr %i.u, align 8, !alias.scope !2323, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !5
  br label %bb.ac

.lr.ph.i75.i:                                     ; preds = %bb.aq, %.lr.ph.i75.lr.ph.i
  %.promoted.i73170.i = phi i64 [ %.promoted.i73162.i, %.lr.ph.i75.lr.ph.i ], [ %i.cv, %bb.aq ]
  %.sroa.042.2164.i = phi i1 [ %.sroa.042.0.i, %.lr.ph.i75.lr.ph.i ], [ true, %bb.aq ] ; 2 uses
  %.sroa.027.2163.i = phi i8 [ %.sroa.027.0.i, %.lr.ph.i75.lr.ph.i ], [ %i.da, %bb.aq ] ; 6 uses
  %i.cl = phi i64 [ %.promoted.i, %.lr.ph.i75.lr.ph.i ], [ %i.cx, %bb.aq ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i75.i
  %i.cm = phi i64 [ %.promoted.i73170.i, %.lr.ph.i75.i ], [ %i.cp, %bb.ah ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !2387, !noundef !5
  switch i8 %i.co, label %.loopexit.i [
    i8 32, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
    i8 13, label %bb.ah
    i8 44, label %bb.al
    i8 93, label %bb.am
    i8 125, label %bb.an
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.cp = add i64 %i.cm, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.p, align 8, !alias.scope !2388, !noalias !2384
  %exitcond.not.i76.i = icmp eq i64 %i.cp, %i.by
  br i1 %exitcond.not.i76.i, label %.loopexit123.i, label %bb.ag

.loopexit123.i:                                   ; preds = %bb.ac, %bb.aq, %bb.ah
  %.sroa.027.2159.i = phi i8 [ %i.da, %bb.aq ], [ %.sroa.027.2163.i, %bb.ah ], [ %.sroa.027.0.i, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2323
  switch i8 %.sroa.027.2159.i, label %bb.ai [
    i8 91, label %bb.ak
    i8 123, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit123.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

bb.aj:                                            ; preds = %.loopexit123.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit123.i
  %storemerge.i = phi i64 [ 3, %bb.aj ], [ 2, %.loopexit123.i ]
  store i64 %storemerge.i, ptr %i.k, align 8, !noalias !2323
  %i.cq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2323
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCskm6LeB9lWb4_9wasm_ping.exit.thread

.loopexit.i:                                      ; preds = %bb.an, %bb.am, %bb.ag
  br i1 %.sroa.042.2164.i, label %bb.ar, label %.critedge.i, !prof !12

bb.al:                                            ; preds = %bb.ag
  br i1 %.sroa.042.2164.i, label %bb.ao, label %.critedge.i

bb.am:                                            ; preds = %bb.ag
  %i.cr = icmp eq i8 %.sroa.027.2163.i, 91
  br i1 %i.cr, label %bb.ap, label %.loopexit.i

bb.an:                                            ; preds = %bb.ag
  %i.cs = icmp eq i8 %.sroa.027.2163.i, 123
  br i1 %i.cs, label %bb.ap, label %.loopexit.i

bb.ao:                                            ; preds = %bb.al
  %i.ct = add i64 %i.cm, 1                        ; 2 uses
  store i64 %i.ct, ptr %i.p, align 8, !alias.scope !2389
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCskm6LeB9lWb4_9wasm_ping:bb.a
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !2759, !noundef !5
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2760
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs79iw4ZC9yCo_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !2762, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2762
  store i64 14, ptr %i.a, align 8, !noalias !2762
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2762
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !2761, !noalias !2763
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !2761, !noalias !2763
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !12

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2762
  store i64 14, ptr %i.b, align 8, !noalias !2762
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2762
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !2761, !noalias !2763
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2761, !noalias !2763
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !38

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #31
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2823, !noalias !2824, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2823, !noalias !2824, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread26

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !2823, !noalias !2824, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !2825, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !39

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread26, !prof !32

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !2826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !2827, !noalias !2828, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2831, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !2832, !noalias !2833
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !32

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !2836, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !2837, !noalias !2833
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !2840, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !2841, !noalias !2833
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit, label %bb.j, !prof !32

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2842
  store i64 5, ptr %i.f, align 8, !noalias !2842
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2842
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2842
  store i64 9, ptr %i.e, align 8, !noalias !2842
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2842
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !2843
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !2844, !noalias !2845, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2848, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !2849, !noalias !2850
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !32

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2853, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !2854, !noalias !2850
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !32

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2857, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !2858, !noalias !2850
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30, label %bb.q, !prof !32

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2859
  store i64 5, ptr %i.d, align 8, !noalias !2859
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2859
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2859
  store i64 9, ptr %i.c, align 8, !noalias !2859
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2859
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !2860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !2861, !noalias !2862, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !2865, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !2866, !noalias !2867
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !32

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2870, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !2871, !noalias !2867
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !32

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !2874, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !2875, !noalias !2867
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !32

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2878, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !2879, !noalias !2867
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38, label %bb.z, !prof !32

_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2880
  store i64 5, ptr %i.b, align 8, !noalias !2880
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2880
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2880
  store i64 9, ptr %i.a, align 8, !noalias !2880
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2880
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !2881
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !19, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !8

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !2882
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !17, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !8

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread26, %bb.ai, %bb.ag, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread26 ], [ %i.cb, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit ], [ %i.ce, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30 ], [ %i.cg, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !9, !noundef !5
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread26:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !19, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !9, !noundef !5
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  br label %bb.ae

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread: ; preds = %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCskm6LeB9lWb4_9wasm_ping:bb.a
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs79iw4ZC9yCo_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3042, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3042
  store i64 14, ptr %i.a, align 8, !noalias !3042
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3042
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3041, !noalias !3043
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !3041, !noalias !3043
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !12

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3042
  store i64 14, ptr %i.b, align 8, !noalias !3042
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3042
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3041, !noalias !3043
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3041, !noalias !3043
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCskm6LeB9lWb4_9wasm_ping.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !38

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs2oEMpbzoU1t_10thirtyfour(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #31
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3049, !noalias !3050, !noundef !5 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3049, !noalias !3050, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3050, !noalias !3049
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3050, !noalias !3049
  br label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !3050, !noalias !3049
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !3051, !noundef !5 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !3052
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3050, !noalias !3049
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3091, !noalias !3092, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3091, !noalias !3092, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !3091, !noalias !3092, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !3093, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !39

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !32

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !3094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !3095, !noalias !3096, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !3098, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !3099, !noalias !3100
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !32

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !3102, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !3103, !noalias !3100
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3105, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !3106, !noalias !3100
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit, label %bb.j, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3107
  store i64 5, ptr %i.f, align 8, !noalias !3107
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3107
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3107
  store i64 9, ptr %i.e, align 8, !noalias !3107
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3107
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !3109, !noalias !3110, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3112, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !3113, !noalias !3114
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !32

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3116, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !3117, !noalias !3114
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !32

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3119, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !3120, !noalias !3114
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30, label %bb.q, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3121
  store i64 5, ptr %i.d, align 8, !noalias !3121
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3121
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3121
  store i64 9, ptr %i.c, align 8, !noalias !3121
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3121
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !3122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !3123, !noalias !3124, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !3126, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !3127, !noalias !3128
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !32

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3129)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !3130, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !3131, !noalias !3128
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !32

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3133, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !3134, !noalias !3128
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !32

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !3136, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !3137, !noalias !3128
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38, label %bb.z, !prof !32

_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3138
  store i64 5, ptr %i.b, align 8, !noalias !3138
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3138
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3138
  store i64 9, ptr %i.a, align 8, !noalias !3138
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3138
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !3139
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(64) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !19, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !8

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !3140
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !17, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !8

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit ], [ %i.ce, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30 ], [ %i.cg, %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !9, !noundef !5
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(64) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !19, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !9, !noundef !5
  br label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs79iw4ZC9yCo_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCskm6LeB9lWb4_9wasm_ping.exit.thread: ; preds = %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3150, !noalias !3151, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !3149, !noalias !3152 ; 2 uses
  %i.e = icmp ult i64 %.promoted.i, %i.d
  br i1 %i.e, label %.lr.ph.i, label %_RNvMs3_NtCs79iw4ZC9yCo_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCskm6LeB9lWb4_9wasm_ping.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3150, !noalias !3151, !nonnull !5, !noundef !5
  br label %bb.b
end_hunk_4
